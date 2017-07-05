----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/20/2016 05:31:17 PM
-- Design Name: 
-- Module Name: Alignment - Behavioral
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
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use DPHY_Pkg.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alignment is
   Generic (
      kInputReg : boolean := false;
      kCmpPattern : std_logic_vector(7 downto 0)
   );
   Port (
      ByteClk : in STD_LOGIC;
      bDataIn : in STD_LOGIC_VECTOR (7 downto 0);
      bDataOut : out STD_LOGIC_VECTOR (7 downto 0);
      bRst : in STD_LOGIC;
      bCmp : in STD_LOGIC;
      bHardSync : out STD_LOGIC;
      bSoftSync : out STD_LOGIC;
      bErr : out STD_LOGIC);
end Alignment;

architecture Behavioral of Alignment is
   function isSoftMatch(mask : std_logic_vector(7 downto 0); word : std_logic_vector(7 downto 0)) return boolean is
   variable diff : std_logic_vector(7 downto 0);
   variable sum : unsigned(3 downto 0) := "0000";
   begin
      diff := mask xor word;
      if (diff = x"01" or diff = x"02" or diff = x"04" or diff = x"08" or
          diff = x"10" or diff = x"20" or diff = x"40" or diff = x"80") then
         return true;
      else
         return false;
      end if;
   end isSoftMatch;
   
signal data_rank : vector8(0 to 2);
signal data_aligned : vector8(0 to 7);
signal data_cmp_equ : vector1(0 to 7);
begin

GenInputReg: if kInputReg generate
   process (ByteClk)
   begin
      if Rising_Edge(ByteClk) then
         if (bRst = '1') then
            data_rank(0) <= (others => '0');
         else
            data_rank(0) <= bDataIn;
         end if;
      end if;
   end process;
end generate GenInputReg;

GenNoInputReg: if not kInputReg generate
   data_rank(0) <= bDataIn;
end generate GenNoInputReg;

process (ByteClk)
begin
   if Rising_Edge(ByteClk) then
      if (bRst = '1') then
         data_rank(1) <= (others => '0');
      else
         data_rank(1) <= data_rank(0);
      end if;
   end if;
end process;

data_aligned(0) <= data_rank(0)(7 downto 0);
GenAlignments: for i in 1 to 7 generate
   data_aligned(i) <= data_rank(0)(7-i downto 0) & data_rank(1)(7 downto 7+1-i);
end generate GenAlignments;

GenComparators: for i in 0 to 7 generate
   data_cmp_equ(i) <= '1' when data_aligned(i) = kCmdPattern else '0';
   data_cmp_soft(i) <= '1' when isSoftMatch(data_aligned(i), kCmdPattern) else '0';
end generate GenComparators;
process (data_cmp_equ)
variable int_rst : vector1(0 to 7);
begin
   for i in 0 to 7 loop
      int_rst(i) := '0';
      for j in 0 to 7 loop
         if (i /= j) then
            int_rst(i) := int_rst(i) or data_cmp_equ(i);
         end if;
      end loop;
   end loop;
end process;
 
process(ByteClk)
begin
   if Rising_Edge(ByteClk) then
      if (bCmp = '1') then
         for i in 0 to 7 loop
            
         end loop;
      end if;
   end if;
end process;


end Behavioral;
