-------------------------------------------------------------------------------
--
-- File: AXI_GammaCorrection.vhd
-- Author: Ioan Catuna
-- Original Project: AXI Gamma Correction
-- Date: 22 November 2017
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
-- This component performs image Gamma correction. The gamma correction factor
-- is specified in the "StoredGammaCoefs" subcomponent header comments.
--   The component receives 1 pixel at a time, through its AXI Stream Slave
-- interface. It outputs one pixel at a time, on the AXI Stream Master interface.
--
--   Component specifications:
--     Input sample format: RGB
--     Input sample size: 32 bits (10 bits per color)
--     Input sample count: 1 at a time
--     Output sample format: RGB
--     Output sample size: 24 bits (8 bits per color)
--     Output sample count: 1 at a time
--     Gamma factor value: Selectable among 1.0, 1.5, 1.8 and 2.2 values.
--  
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity AXI_GammaCorrection is
generic (
  kAXI_InputDataWidth : integer := 32;
  kInputColorWidth : integer := 10;
  kAXI_OutputDataWidth : integer := 24;
  kGammaFactor: string := "1.8"
);
port (
  StreamClk : in  STD_LOGIC;
  aStreamReset_n : in  STD_LOGIC;
  s_axis_video_tready : out STD_LOGIC;
  s_axis_video_tdata : in  STD_LOGIC_VECTOR(kAXI_InputDataWidth-1 downto 0);
  s_axis_video_tvalid : in  STD_LOGIC;
  s_axis_video_tuser : in  STD_LOGIC;
  s_axis_video_tlast : in  STD_LOGIC;

  m_axis_video_tready : in  STD_LOGIC;
  m_axis_video_tdata : out STD_LOGIC_VECTOR(kAXI_OutputDataWidth-1 downto 0);
  m_axis_video_tvalid : out STD_LOGIC;
  m_axis_video_tuser : out STD_LOGIC;
  m_axis_video_tlast : out STD_LOGIC
);
end AXI_GammaCorrection;

architecture rtl of AXI_GammaCorrection is

  type RGB_Component_t is array (2 downto 0) of
    STD_LOGIC_VECTOR(7 downto 0);
  signal sGammaComponent: RGB_Component_t;
  signal sAXI_OutputValid : STD_LOGIC;
  signal sDataIsAvailableAndRequested : STD_LOGIC;

begin

sDataIsAvailableAndRequested <= '1' when ((m_axis_video_tready = '1') and
  (s_axis_video_tvalid = '1')) else '0';
s_axis_video_tready <= m_axis_video_tready;

-- This infers multiple ROM components (one for each color component), in
-- order to apply gamma correction to each color component.
GammaStorageCoefsGeneration: for i in 0 to 2 generate
begin
  StoredGammaCoefsInst: entity work.StoredGammaCoefs
  generic map(kGammaFactor => kGammaFactor)
  port map(
    RomClk => StreamClk,
    rReadEnable => sDataIsAvailableAndRequested,
    rReadAddr => s_axis_video_tdata((kInputColorWidth*(i+1)-1) downto (kInputColorWidth*i)),
    rStoredData => sGammaComponent(i)
  );
end generate;

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
m_axis_video_tdata  <= sGammaComponent(2) & sGammaComponent(1) & sGammaComponent(0);

end rtl;

