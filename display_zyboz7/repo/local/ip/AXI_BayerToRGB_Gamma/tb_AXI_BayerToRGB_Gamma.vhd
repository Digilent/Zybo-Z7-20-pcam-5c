-------------------------------------------------------------------------------
--
-- File: tb_AXI_BayerToRGB_Gamma.vhd
-- Author: Ioan Catuna
-- Original Project: AXI Bayer to RGB Image Conversion and Gamma Correction
-- Date: 30 October 2017
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
-- Basic testbench for the AXI_BayerToRGB_Gamma.vhd component.
--  
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_axis_raw_demosaic_0 is
end tb_axis_raw_demosaic_0;

architecture Behavioral of tb_axis_raw_demosaic_0 is

constant kAXI_DataWidth : integer := 40;
constant kBayerWidth : integer	:= 10;

component AXI_BayerToRGB_Gamma
generic (
	kAXI_DataWidth	: integer	:= 40;
	kBayerWidth				: integer	:= 10;
  kMaxSamplesPerClock : integer := 4
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
  m_axis_video_tdata : out STD_LOGIC_VECTOR(23 downto 0);
  m_axis_video_tvalid : out STD_LOGIC;
  m_axis_video_tuser : out STD_LOGIC;
  m_axis_video_tlast : out STD_LOGIC
);
end component;

signal StreamClk : STD_LOGIC := '0';
signal aStreamReset_n : STD_LOGIC := '0';

-- OUTPUTS
signal sAXI_SlaveData : STD_LOGIC_VECTOR(kAXI_DataWidth-1 downto 0) := (others => '0');
signal sAXI_SlaveUser : STD_LOGIC := '0';
signal sAXI_SlaveLast : STD_LOGIC := '0';
signal sAXI_SlaveValid : STD_LOGIC := '0';
signal sAXI_MasterReady : STD_LOGIC := '0';

-- INPUTS
signal sAXI_SlaveReady : STD_LOGIC;
signal sAXI_MasterValid : STD_LOGIC;
signal sAXI_MasterData : STD_LOGIC_VECTOR(23 downto 0);
signal sAXI_MasterUser : STD_LOGIC;
signal sAXI_MasterLast : STD_LOGIC;

begin

uut: AXI_BayerToRGB_Gamma
generic map(
  kAXI_DataWidth => kAXI_DataWidth,
  kBayerWidth => kBayerWidth,
  kMaxSamplesPerClock => 4
)
port map(
  StreamClk => StreamClk,
  aStreamReset_n => aStreamReset_n,
  s_axis_video_tready => sAXI_SlaveReady,
  s_axis_video_tdata => sAXI_SlaveData,
  s_axis_video_tvalid => sAXI_SlaveValid,
  s_axis_video_tuser => sAXI_SlaveUser,
  s_axis_video_tlast => sAXI_SlaveLast,
  m_axis_video_tready => sAXI_MasterReady,
  m_axis_video_tdata => sAXI_MasterData,
  m_axis_video_tvalid => sAXI_MasterValid,
  m_axis_video_tuser => sAXI_MasterUser,
  m_axis_video_tlast => sAXI_MasterLast
);

StreamClk <= not StreamClk after 10ns;
aStreamReset_n <= '0', '1' after 100ns;

GenerateInputData: process

  procedure ClkDelay(DelayCycles: in integer) is
  variable i : integer;
  begin
    for i in 1 to DelayCycles loop
      wait until rising_edge(StreamClk);
    end loop;
  end ClkDelay;
  
  Procedure InsertMasterReadyDeassertion(DeassertionCycles: in integer) is
  begin
    sAXI_MasterReady <= '0';
    ClkDelay(DeassertionCycles);
    sAXI_MasterReady <= '1';
  end InsertMasterReadyDeassertion;

  variable i, j: integer := 0;
begin

  -- Reset & initialization
  wait until aStreamReset_n = '1';
  ClkDelay(1);
  sAXI_MasterReady <= '1';
  
  j := 0;
  while j < 900 loop
    i := 0;
    -- Start sending a new line
    
    while i < 1280 loop
      if sAXI_SlaveReady = '1' then
        if j = 1 then
          sAXI_SlaveData <= std_logic_vector(to_unsigned(500+i+4, kBayerWidth)) &
            std_logic_vector(to_unsigned(500+i+3, kBayerWidth)) &
            std_logic_vector(to_unsigned(500+i+2, kBayerWidth)) &
            std_logic_vector(to_unsigned(500+i+1, kBayerWidth));
        else
          sAXI_SlaveData <= std_logic_vector(to_unsigned(i+4, kBayerWidth)) &
            std_logic_vector(to_unsigned(i+3, kBayerWidth)) &
            std_logic_vector(to_unsigned(i+2, kBayerWidth)) &
            std_logic_vector(to_unsigned(i+1, kBayerWidth));
        end if;
        sAXI_SlaveValid <= '1';
        if i = 0 then
          if j = 0 then
            sAXI_SlaveUser <= '1';
          end if;
        elsif i = 1276 then
          sAXI_SlaveLast <= '1';
        else
          sAXI_SlaveUser <= '0';
        end if;
        
        ClkDelay(1);
        sAXI_SlaveValid <= '0';
        
        -- Insert AXI Master interface Ready deassertion
        if i = 0 then
          InsertMasterReadyDeassertion(11);
        end if;
        
        -- Insert a long delay before sending new data over the AXI Slave interface
        if sAXI_SlaveReady = '1' then
          wait until sAXI_SlaveReady = '0';
        end if;
        ClkDelay(35);
        
        i := i + 4;
      end if;
      ClkDelay(1);
    end loop;

    while sAXI_SlaveReady = '0' loop
      ClkDelay(1);
    end loop;
    sAXI_SlaveData <= (others => '0');
    sAXI_SlaveValid <= '0';
    sAXI_SlaveLast <= '0';
    j := j + 1;
    
    ClkDelay(2);
  end loop;

end process GenerateInputData;

end Behavioral;

