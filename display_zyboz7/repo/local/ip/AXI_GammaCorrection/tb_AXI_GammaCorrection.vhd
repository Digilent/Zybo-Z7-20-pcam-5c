-------------------------------------------------------------------------------
--
-- File: tb_AXI_GammaCorrection.vhd
-- Author: Ioan Catuna
-- Original Project: AXI Gamma Correction
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
-- Basic testbench for the AXI_BayerToRGB.vhd component.
--  
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_AXI_GammaCorrection is
end tb_AXI_GammaCorrection;

architecture Behavioral of tb_AXI_GammaCorrection is

constant kAXI_InputDataWidth : integer := 32;
constant kInputColorWidth : integer	:= 10;
constant kAXI_OutputDataWidth : integer := 24;
constant C_S_AXI_DATA_WIDTH  : integer  := 32;
constant C_S_AXI_ADDR_WIDTH  : integer  := 3;

component AXI_GammaCorrection
generic (
	kAXI_InputDataWidth : integer := 32;
  kInputColorWidth : integer := 10;
  kAXI_OutputDataWidth : integer := 24;
  C_S_AXI_DATA_WIDTH  : integer  := 32;
  C_S_AXI_ADDR_WIDTH  : integer  := 3
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
  m_axis_video_tlast : out STD_LOGIC;

  -- Write address (issued by master, acceped by Slave)
  S_AXI_AWADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  -- Write channel Protection type. This signal indicates the
    -- privilege and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
  S_AXI_AWPROT  : in std_logic_vector(2 downto 0);
  -- Write address valid. This signal indicates that the master signaling
    -- valid write address and control information.
  S_AXI_AWVALID  : in std_logic;
  -- Write address ready. This signal indicates that the slave is ready
    -- to accept an address and associated control signals.
  S_AXI_AWREADY  : out std_logic;
  -- Write data (issued by master, acceped by Slave) 
  S_AXI_WDATA  : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  -- Write strobes. This signal indicates which byte lanes hold
    -- valid data. There is one write strobe bit for each eight
    -- bits of the write data bus.    
  S_AXI_WSTRB  : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
  -- Write valid. This signal indicates that valid write
    -- data and strobes are available.
  S_AXI_WVALID  : in std_logic;
  -- Write ready. This signal indicates that the slave
    -- can accept the write data.
  S_AXI_WREADY  : out std_logic;
  -- Write response. This signal indicates the status
    -- of the write transaction.
  S_AXI_BRESP  : out std_logic_vector(1 downto 0);
  -- Write response valid. This signal indicates that the channel
    -- is signaling a valid write response.
  S_AXI_BVALID  : out std_logic;
  -- Response ready. This signal indicates that the master
    -- can accept a write response.
  S_AXI_BREADY  : in std_logic;
  -- Read address (issued by master, acceped by Slave)
  S_AXI_ARADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  -- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether the
    -- transaction is a data access or an instruction access.
  S_AXI_ARPROT  : in std_logic_vector(2 downto 0);
  -- Read address valid. This signal indicates that the channel
    -- is signaling valid read address and control information.
  S_AXI_ARVALID  : in std_logic;
  -- Read address ready. This signal indicates that the slave is
    -- ready to accept an address and associated control signals.
  S_AXI_ARREADY  : out std_logic;
  -- Read data (issued by slave)
  S_AXI_RDATA  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  -- Read response. This signal indicates the status of the
    -- read transfer.
  S_AXI_RRESP  : out std_logic_vector(1 downto 0);
  -- Read valid. This signal indicates that the channel is
    -- signaling the required read data.
  S_AXI_RVALID  : out std_logic;
  -- Read ready. This signal indicates that the master can
    -- accept the read data and response information.
  S_AXI_RREADY  : in std_logic
);
end component;

signal StreamClk : STD_LOGIC := '0';
signal aStreamReset_n : STD_LOGIC := '0';

-- OUTPUTS
signal sAXI_SlaveData : STD_LOGIC_VECTOR(kAXI_InputDataWidth-1 downto 0) := (others => '0');
signal sAXI_SlaveUser : STD_LOGIC := '0';
signal sAXI_SlaveLast : STD_LOGIC := '0';
signal sAXI_SlaveValid : STD_LOGIC := '0';
signal sAXI_MasterReady : STD_LOGIC := '0';
signal S_AXI_AWREADY  : std_logic;
signal S_AXI_WREADY  : std_logic;
signal S_AXI_BRESP  : std_logic_vector(1 downto 0);
signal S_AXI_BVALID  : std_logic;
signal S_AXI_ARREADY  : std_logic;
signal S_AXI_RDATA  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal S_AXI_RRESP  : std_logic_vector(1 downto 0);
signal S_AXI_RVALID  : std_logic;

-- INPUTS
signal sAXI_SlaveReady : STD_LOGIC;
signal sAXI_MasterValid : STD_LOGIC;
signal sAXI_MasterData : STD_LOGIC_VECTOR(kAXI_OutputDataWidth-1 downto 0);
signal sAXI_MasterUser : STD_LOGIC;
signal sAXI_MasterLast : STD_LOGIC;
signal S_AXI_AWADDR  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
signal S_AXI_AWPROT  : std_logic_vector(2 downto 0);
signal S_AXI_AWVALID  : std_logic;
signal S_AXI_WDATA  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal S_AXI_WSTRB  : std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
signal S_AXI_WVALID  : std_logic;
signal S_AXI_BREADY  : std_logic;
signal S_AXI_ARADDR  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
signal S_AXI_ARPROT  : std_logic_vector(2 downto 0);
signal S_AXI_ARVALID  : std_logic;
signal S_AXI_RREADY  : std_logic;

begin

uut: AXI_GammaCorrection
generic map(
  kAXI_InputDataWidth => kAXI_InputDataWidth,
  kInputColorWidth => kInputColorWidth,
  kAXI_OutputDataWidth => kAXI_OutputDataWidth,
  C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH,
  C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH
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
  m_axis_video_tlast => sAXI_MasterLast,
  S_AXI_AWADDR => S_AXI_AWADDR,
  S_AXI_AWPROT => S_AXI_AWPROT,
  S_AXI_AWVALID => S_AXI_AWVALID,
  S_AXI_AWREADY => S_AXI_AWREADY,
  S_AXI_WDATA => S_AXI_WDATA,
  S_AXI_WSTRB => S_AXI_WSTRB,
  S_AXI_WVALID => S_AXI_WVALID,
  S_AXI_WREADY => S_AXI_WREADY,
  S_AXI_BRESP => S_AXI_BRESP,
  S_AXI_BVALID => S_AXI_BVALID,
  S_AXI_BREADY => S_AXI_BREADY,
  S_AXI_ARADDR => S_AXI_ARADDR,
  S_AXI_ARPROT => S_AXI_ARPROT,
  S_AXI_ARVALID => S_AXI_ARVALID,
  S_AXI_ARREADY => S_AXI_ARREADY,
  S_AXI_RDATA => S_AXI_RDATA,
  S_AXI_RRESP => S_AXI_RRESP,
  S_AXI_RVALID => S_AXI_RVALID,
  S_AXI_RREADY => S_AXI_RREADY
);

S_AXI_AWADDR <= (others => '0');
S_AXI_AWPROT <= (others => '0');
S_AXI_AWVALID <= '0';
S_AXI_WDATA <= (others => '0');
S_AXI_WSTRB <= (others => '0');
S_AXI_WVALID <= '0';
S_AXI_BREADY <= '0';
S_AXI_ARADDR <= (others => '0');
S_AXI_ARPROT <= (others => '0');
S_AXI_ARVALID <= '0';
S_AXI_RREADY <= '0';

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
    
    while i < 1284 loop
      if sAXI_SlaveReady = '1' then
        if j = 0 then
          sAXI_SlaveData <= "00" &
            std_logic_vector(to_unsigned(500+i+8, kInputColorWidth)) &
            std_logic_vector(to_unsigned(500+i+4, kInputColorWidth)) &
            std_logic_vector(to_unsigned(500+i, kInputColorWidth));
        else
          sAXI_SlaveData <= "00" &
            std_logic_vector(to_unsigned(i+3, kInputColorWidth)) &
            std_logic_vector(to_unsigned(i+2, kInputColorWidth)) &
            std_logic_vector(to_unsigned(i+1, kInputColorWidth));
        end if;
        sAXI_SlaveValid <= '1';
        if i = 0 then
          if j = 0 then
            sAXI_SlaveUser <= '1';
          end if;
        elsif i = 1272 then
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
        --if sAXI_SlaveReady = '1' then
          --wait until sAXI_SlaveReady = '0';
        --end if;
        if (i = 84) or (i = 228) then
          ClkDelay(35);
        end if;
        
        i := i + 12;
      else
        ClkDelay(1);
      end if;
      --ClkDelay(1);
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

