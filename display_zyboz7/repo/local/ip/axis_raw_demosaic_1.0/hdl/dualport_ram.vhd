----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.STD_LOGIC_unsigned.all;
----------------------------------------------------------------------------------
entity dualport_ram is
port (
	clk		: in  STD_LOGIC;
	wea		: in  STD_LOGIC;
	addra	: in  STD_LOGIC_VECTOR(10 downto 0);
	addrb	: in  STD_LOGIC_VECTOR(10 downto 0);
	dia		: in  STD_LOGIC_VECTOR(9 downto 0);
	dob		: out STD_LOGIC_VECTOR(9 downto 0)
);
end dualport_ram;
----------------------------------------------------------------------------------
architecture dualport_ram_arch of dualport_ram is
type ram_type is array (2047 downto 0) of STD_LOGIC_VECTOR (9 downto 0);
signal ram : ram_type;
----------------------------------------------------------------------------------
attribute block_ram : boolean;
attribute block_ram of ram : signal is TRUE;
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
process (clk)
begin
	if (clk'event and clk = '1') then
		if (wea = '1') then
			ram(conv_integer(addra)) <= dia;
		end if;
		dob <= ram(conv_integer(addrb));
	end if;
end process;
----------------------------------------------------------------------------------
end dualport_ram_arch;
