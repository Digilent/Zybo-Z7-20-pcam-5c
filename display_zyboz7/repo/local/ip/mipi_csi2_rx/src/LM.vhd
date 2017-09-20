----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2017 11:39:38 AM
-- Design Name: 
-- Module Name: LM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- This file requires VHDL-2008 support.
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LM is
   Generic(
      kMaxLaneCount : natural := 4;
      --PPI
      kLaneCount : natural range 1 to 4 := 2 --[1,2,4]
   );
   Port (
       RxByteClkHS : in STD_LOGIC;
       RxDataHS : in  STD_LOGIC_VECTOR (8 * kLaneCount - 1 downto 0);
       RxSyncHS : in  STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
       RxValidHS : in  STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
       RxActiveHS : in  STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
       
       rbMAxisTdata : out std_logic_vector(8 * kMaxLaneCount - 1 downto 0);
       rbMAxisTkeep : out std_logic_vector(kMaxLaneCount - 1 downto 0);
       rbMAxisTvalid : out std_logic;
       rbMAxisTready : in std_logic;
       rbMAxisTlast : out std_logic;
       
       rbOverflow : out std_logic;
       
       aRst : in std_logic
   );
end LM;

architecture Behavioral of LM is
   type state_type is (stIdle, stWaitForValid, stReceive, stEndReceive, stError);
   signal rbState, rbNstate : state_type;
   signal rbRst : std_logic;
   signal rbByteCnt : natural range 0 to kMaxLaneCount - 1 := 0;
   signal rbTvalidInt, rbMAxisTvalidInt,  rbTlastInt, rbPartial : std_logic;
   signal rbTdataInt : std_logic_vector(8 * kMaxLaneCount - 1 downto 0);
   signal rbTkeepInt : std_logic_vector(kMaxLaneCount - 1 downto 0);
   constant kAllOnes : std_logic_vector(kMaxLaneCount - 1 downto 0) := (others => '1');
   --Delay for deskew
--   alias rbDataHS is RxDataHS;
--   alias rbSyncHS is RxSyncHS;
--   alias rbValidHS is RxValidHS;
--   alias rbActiveHS is RxActiveHS;
   signal rbDataHS, rbDataHSInt : STD_LOGIC_VECTOR (8 * kLaneCount - 1 downto 0);
   signal rbSyncHS, rbSyncHSInt : STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
   signal rbValidHS, rbValidHSInt : STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
   signal rbActiveHS, rbActiveHSInt : STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
   signal rbDeskew : std_logic_vector(kLaneCount - 1 downto 0);  
   function orv(vec : std_logic_vector) return std_logic is
      variable result : std_logic := '0';
   begin
      for i in vec'range loop
         result := result or vec(i);
      end loop;
      return result;
   end orv;
   
   function andv(vec : std_logic_vector) return std_logic is
      variable result : std_logic := '1';
   begin
      for i in vec'range loop
         result := result and vec(i);
      end loop;
      return result;
   end andv;
begin

-- Synchronize aRst into the RxByteClkHS domain
SyncReset: entity work.ResetBridge
   generic map (
      kPolarity => '1')
   port map (
      aRst => aRst,
      OutClk => RxByteClkHS,
      oRst => rbRst);

-- The overflow error flag set whenever we provide valid data on the AXI-Stream
-- and the slave is not ready to receive. Buffering should be done downstream.
OverflowFlag: process (RxByteClkHS)
begin
   if Rising_Edge(RxByteClkHS) then
      if (rbRst = '1') then
         rbOverflow <= '0';
      elsif (rbMAxisTvalidInt = '1' and rbMAxisTready = '0') then 
         rbOverflow <= '1';
      end if;
   end if;
end process;

DeSkew: process (RxByteClkHS)
begin
   if Rising_Edge(RxByteClkHS) then
      rbActiveHSInt <= RxActiveHS;
      rbValidHSInt <= RxValidHS;
      rbSyncHSInt <= RxSyncHS;
      rbDataHSInt <= RxDataHS;
   end if;
end process;

DeskewNeeded: for i in 0 to kLaneCount - 1 generate
   process (RxByteClkHS)
   begin
      if Rising_Edge(RxByteClkHS) then
         if (rbRst = '1') then
            rbDeskew(i) <= '1';
         elsif (orv(RxActiveHS) = '1' and orv(rbActiveHSInt) = '0') then
            if (RxActiveHS(i) = '0') then
               rbDeskew(i) <= '0';
            else
               rbDeskew(i) <= '1';
            end if;
         end if;
      end if;
   end process;
   rbActiveHS(i) <=  RxActiveHS(i) when rbDeskew(i) = '0' else
                     rbActiveHSInt(i);
   rbValidHS(i) <=   RxValidHS(i) when rbDeskew(i) = '0' else
                     rbValidHSInt(i);
   rbSyncHS(i) <=    RxSyncHS(i) when rbDeskew(i) = '0' else
                     rbSyncHSInt(i);
   rbDataHS((i+1)*8-1 downto i*8) <=   RxDataHS((i+1)*8-1 downto i*8) when rbDeskew(i) = '0' else
                                       rbDataHSInt((i+1)*8-1 downto i*8);                                                               
end generate;
      
SYNC_PROC: process (rbRst, RxByteClkHS)
begin 
   if (rbRst = '1') then --asynchronously reset FSM, so that we reset Tvalid even when no RxByteClkHS is available
      rbState <= stIdle;
   elsif Rising_Edge(RxByteClkHS) then
      rbState <= rbNstate;
   end if;
end process;

ByteRegisters: process (RxByteClkHS)
begin
   if Rising_Edge(RxByteClkHS) then
      if (rbRst = '1') then
         rbTdataInt <= (others => '0');
         rbTkeepInt <= (others => '0');
      else
         if (rbState = stReceive or rbState = stWaitForValid) then
            --Walk the valid signals, register valid bytes and set keep bits
            --Order is important: last bytes are filled from low-order lanes to high-order ones
            if (rbTvalidInt = '1') then
               rbTkeepInt <= (others => '0');
            end if;
            for i in 0 to kLaneCount - 1 loop
               if (rbValidHS(i) = '0') then
                  exit;
               end if;
               rbTdataInt((i+rbByteCnt+1)*8-1 downto (i+rbByteCnt)*8) <= rbDataHS((i+1)*8-1 downto i*8);
               rbTkeepInt(i+rbByteCnt) <= '1';
            end loop;
         end if;
      end if;
   end if;
end process;

BufferCounter: process (RxByteClkHS)
begin
   if Rising_Edge(RxByteClkHS) then
      if (rbState = stIdle) then
         rbByteCnt <= 0;
      else
         if (rbState = stWaitForValid and orv(rbValidHS) = '1') or (rbState = stReceive) then
            if (rbByteCnt = kMaxLaneCount - kLaneCount) then
               rbByteCnt <= 0;
            else
               rbByteCnt <= rbByteCnt + kLaneCount;
            end if;
         end if;
      end if;
   end if;
end process;

rbTValidInt <= '1' when ((rbState = stReceive and (rbByteCnt = 0 or orv(rbValidHS) = '0')) -- buffer full, or no more bytes
                        or (rbState = stEndReceive)) -- flush partial packet
               else '0';
rbTlastInt <= '1' when (rbState = stReceive and orv(rbValidHS) = '0') -- no more bytes
                        or (rbState = stEndReceive) -- partial packet is last
               else '0';

OutputRegister: process (RxByteClkHS)
begin
   if Rising_Edge(RxByteClkHS) then
      if (rbRst = '1') then
         rbMAxisTdata <= rbTdataInt;
         rbMAxisTkeep <= rbTkeepInt;
         rbMAxisTvalidInt <= rbTvalidInt;
         rbMAxisTlast <= rbTlastInt;
      else
         rbMAxisTvalidInt <= rbTvalidInt;
         if (rbTvalidInt = '1') then
            rbMAxisTdata <= rbTdataInt;
            rbMAxisTkeep <= rbTkeepInt;
            rbMAxisTlast <= rbTlastInt;
         end if;
      end if;
   end if;
end process;

rbMAxisTvalid <= rbMAxisTvalidInt;

NEXT_STATE_DECODE: process (rbState, rbActiveHS, rbValidHS)
begin
   rbNstate <= rbState;  --default is to stay in current rbState
   case (rbState) is
      when stIdle =>
         if (andv(rbActiveHS) = '1') then
            rbNstate <= stWaitForValid;
         elsif (orv(rbActiveHS) = '1') then
            rbNstate <= stError;
         end if;
      when stWaitForValid => -- in High-Speed reception but no data yet
         if (andv(rbValidHS) = '1') then -- first full data
            rbNstate <= stReceive;
         elsif (orv(rbValidHS) = '1') then -- partial data; first is also the last
            rbNstate <= stEndReceive;
         end if;
      when stReceive => -- we are receiving High-Speed data
         if (orv(rbValidHS) = '0') then
            rbNstate <= stIdle;  --no more data
         elsif (andv(rbValidHS) = '0') then -- partial data; last packet
            rbNstate <= stEndReceive;
         end if;
      when stEndReceive =>
         rbNstate <= stIdle; -- last packet seen
      when stError =>
         if (orv(rbActiveHS) = '0') then
            rbNstate <= stIdle;
         end if;
      when others =>
         rbNstate <= stIdle;
   end case;
end process;

end Behavioral;
