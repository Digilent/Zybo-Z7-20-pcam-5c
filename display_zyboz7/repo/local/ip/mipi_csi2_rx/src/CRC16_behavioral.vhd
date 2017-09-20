----------------------------------------------------------------------------------
-- Company: Digilent Ro
-- Engineer: Elod GYORGY
-- 
-- Create Date: 02/22/2017 06:04:11 PM
-- Design Name: 
-- Module Name: CRC16_behavioral - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: Sub-optimal implementation of CRC-16, with untested
-- bByteIgnore.
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CRC16 is
   Generic (
      kLaneCount : natural range 1 to 4 := 2
   );
   Port (
      ByteClk : in STD_LOGIC;
      bData : in STD_LOGIC_VECTOR (kLaneCount*8-1 downto 0);
      bDataEnable : in std_logic;
      bKeep : in STD_LOGIC_VECTOR (kLaneCount-1 downto 0);
      bCRC : out STD_LOGIC_VECTOR (15 downto 0);
      bRst : in STD_LOGIC);
end CRC16;

architecture Behavioral of CRC16 is
   function crc16_serial ( crc : std_logic_vector;
                           data_in : std_logic) return std_logic_vector is
      variable crc_new : std_logic_vector(15 downto 0);
   begin
      if ((crc(0) xor data_in) = '1') then
         crc_new := ('0' & crc(15 downto 1)) xor x"8408";
      else
         crc_new :=  '0' & crc(15 downto 1);
      end if;
      return crc_new;
   end crc16_serial;
   
   signal crc : std_logic_vector(15 downto 0);
begin

   process(ByteClk)
      variable crc_temp : std_logic_vector(15 downto 0);
   begin
      if Rising_Edge(ByteClk) then
         if (bRst = '1') then
            crc <= x"FFFF";
         elsif (bDataEnable = '1') then
            crc_temp := crc;
            if std_match(bKeep, "1111") then
               for i in 0 to 32-0*8-1 loop
                  crc_temp := crc16_serial(crc_temp, bData(i));
               end loop;
            elsif std_match(bKeep, "0111") then
               for i in 0 to 32-1*8-1 loop
                  crc_temp := crc16_serial(crc_temp, bData(i));
               end loop;
            elsif std_match(bKeep, "-011") then
               for i in 0 to 32-2*8-1 loop
                  crc_temp := crc16_serial(crc_temp, bData(i));
               end loop;
            elsif std_match(bKeep, "--01") then
               for i in 0 to 32-3*8-1 loop
                  crc_temp := crc16_serial(crc_temp, bData(i));
               end loop;
            end if;
            crc <= crc_temp;
         end if;
      end if;
   end process;
   
   bCRC <= crc;

end Behavioral;
