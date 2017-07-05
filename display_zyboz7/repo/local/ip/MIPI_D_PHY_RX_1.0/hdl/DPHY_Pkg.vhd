----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2016 03:27:27 PM
-- Design Name: 
-- Module Name: DPHY_Pkg - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package DPHY_types is
   type vector1 is array (natural range <>) of std_logic;
   type vector2 is array (natural range <>) of std_logic_vector(1 downto 0);
   type vector4 is array (natural range <>) of std_logic_vector(3 downto 0);
   type vector8 is array (natural range <>) of std_logic_vector(7 downto 0);
end package;
