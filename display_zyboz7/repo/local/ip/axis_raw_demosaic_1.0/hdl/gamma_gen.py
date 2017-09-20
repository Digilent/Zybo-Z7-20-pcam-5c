import math

name = "gamma"
rrange = 1024
dwidth = 8
gamma = 1.8

def get_val(s):
	return round(255*(s/1023.0)**(1/gamma))
	
print "----------------------------------------------------------------------------------"
print "-- Engineer: Oleksandr Kiyenko"
print "----------------------------------------------------------------------------------"
print "library IEEE;"
print "use IEEE.STD_LOGIC_1164.ALL;"
print "use ieee.STD_LOGIC_arith.all;"
print "use ieee.STD_LOGIC_unsigned.all;"
print "----------------------------------------------------------------------------------"
print "entity "+name+"_rom is"
print "port("
print "    addra  : in  STD_LOGIC_VECTOR(9 downto 0);"
print "    clka   : in  STD_LOGIC;"
print "    douta  : out STD_LOGIC_VECTOR("+str(dwidth-1)+" downto 0)"
print ");"
print "end "+name+"_rom;"
print "----------------------------------------------------------------------------------"
print "architecture Behavioral of "+name+"_rom is"
print "----------------------------------------------------------------------------------"
print "type rom_type is array ("+str(rrange-1)+" downto 0) of std_logic_vector ("+str(dwidth-1)+" downto 0);"
print "signal rom 	: rom_type := ("
for i in range(rrange):
	v = get_val(1023-i)
	if(i == rrange-1):
		print "x\"%02x\"" % (v),
	else:
		print "x\"%02x\"," % (v),
	
	if((i%16) == 15):
		print
print ");"
print "attribute rom_style : string;"
print "attribute rom_style of rom : signal is \"block\";"
print "----------------------------------------------------------------------------------"
print "begin"
print "----------------------------------------------------------------------------------"
print "process (clka)"
print "begin"
print "    if rising_edge(clka) then"
print "        douta <= rom(conv_integer(addra));"
print "    end if;"
print "end process;"
print "----------------------------------------------------------------------------------"
print "end Behavioral;"
