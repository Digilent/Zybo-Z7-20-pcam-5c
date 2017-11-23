-------------------------------------------------------------------------------
--
-- File: AXI_ColorCorrection.vhd
-- Author: Ioan Catuna
-- Original Project: AXI Color Correction
-- Date: 23 November 2017
--
-------------------------------------------------------------------------------
-- MIT License

-- Copyright (c) 2017 Digilent

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
--
-------------------------------------------------------------------------------
--
-- Purpose:
-- This component performs image color correction.
--   The component receives 1 pixel at a time, through its AXI Stream Slave
-- interface. It outputs one pixel at a time, on the AXI Stream Master interface.
--
--   Component specifications:
--     Input sample format: RGB
--     Input sample size: 32 bits (10 bits per color)
--     Input sample count: 1 at a time
--     Output sample format: RGB
--     Input sample size: 32 bits (10 bits per color)
--     Output sample count: 1 at a time
--  
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity AXI_ColorCorrection is
generic (
  kAXI_DataWidth : integer := 32;
  kColorWidth : integer := 10
);
port (
  StreamClk : in  STD_LOGIC;
  aStreamReset_n : in  STD_LOGIC;
  s_axis_video_tready : out STD_LOGIC;
  s_axis_video_tdata : in  STD_LOGIC_VECTOR(kAXI_DataWidth-1 downto 0);
  s_axis_video_tvalid : in  STD_LOGIC;
  s_axis_video_tuser : in  STD_LOGIC;
  s_axis_video_tlast : in  STD_LOGIC;

  m_axis_video_tready : in  STD_LOGIC;
  m_axis_video_tdata : out STD_LOGIC_VECTOR(kAXI_DataWidth-1 downto 0);
  m_axis_video_tvalid : out STD_LOGIC;
  m_axis_video_tuser : out STD_LOGIC;
  m_axis_video_tlast : out STD_LOGIC
);
end AXI_ColorCorrection;

architecture rtl of AXI_ColorCorrection is

  signal sRedComponent, sBlueComponent, sGreenComponent: STD_LOGIC_VECTOR(9 downto 0);
  signal sAXI_OutputValid : STD_LOGIC;
  signal sDataIsAvailableAndRequested : STD_LOGIC;

begin

sDataIsAvailableAndRequested <= '1' when ((m_axis_video_tready = '1') and
  (s_axis_video_tvalid = '1')) else '0';
s_axis_video_tready <= m_axis_video_tready;

-- We infer multiple ROM components (one for each color component), in
-- order to apply color correction to each of them.
StoredRedCoefsInst: entity work.StoredRedCoefs
  port map(
    RomClk => StreamClk,
    rReadEnable => sDataIsAvailableAndRequested,
    rReadAddr => s_axis_video_tdata((kColorWidth*3-1) downto (kColorWidth*2)),
    rStoredData => sRedComponent
  );
  
StoredBlueCoefsInst: entity work.StoredBlueCoefs
  port map(
    RomClk => StreamClk,
    rReadEnable => sDataIsAvailableAndRequested,
    rReadAddr => s_axis_video_tdata((kColorWidth*2-1) downto kColorWidth),
    rStoredData => sBlueComponent
  );
  
StoredGreenCoefsInst: entity work.StoredGreenCoefs
  port map(
    RomClk => StreamClk,
    rReadEnable => sDataIsAvailableAndRequested,
    rReadAddr => s_axis_video_tdata((kColorWidth-1) downto 0),
    rStoredData => sGreenComponent
  );

-- This process assigns the Valid, User and Last signals on the AXI stream output
-- interface.
ShiftStrobes: process(aStreamReset_n, StreamClk)
begin
  if aStreamReset_n = '0' then
    sAXI_OutputValid <= '0';
    m_axis_video_tuser <= '0';
    m_axis_video_tlast <= '0';
  elsif rising_edge(StreamClk) then
    if (m_axis_video_tready = '1') then
      if (s_axis_video_tvalid = '1') then
        m_axis_video_tuser  <= s_axis_video_tuser;
        m_axis_video_tlast  <= s_axis_video_tlast;
        sAXI_OutputValid <= '1';
      else
        sAXI_OutputValid <= '0';
      end if;
    elsif (sAXI_OutputValid = '0') then
      sAXI_OutputValid <= '0';
    end if;
  end if;
end process ShiftStrobes;

-- Assign AXI stream output interface signals.
m_axis_video_tvalid <= sAXI_OutputValid;
m_axis_video_tdata  <= "00" & sRedComponent & sBlueComponent & sGreenComponent;

end rtl;

