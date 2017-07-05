----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/25/2016 08:55:17 AM
-- Design Name: 
-- Module Name: crc16 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: used polynom - x^16 + x^12 + x^5 + x^0
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

LIBRARY IEEE ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_arith.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY CRC16 IS
    generic (data_width : natural range 8 to 128 := 32);
    PORT(
        clk        : IN  STD_LOGIC; 
        rst        : IN  STD_LOGIC; 
        data       : IN  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0); 
        data_valid : IN  STD_LOGIC;
        crc        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END CRC16; 

ARCHITECTURE Behavioral OF CRC16 IS
    signal buf1, buf2, buf3: std_logic_vector(data_width - 1 downto 0) := (others => '0');
    signal crc_buf: std_logic_vector(15 downto 0) := (others => '0');
    constant crc_init: std_logic_vector(15 downto 0) := (others => '1');
BEGIN 
    
    buf1(0) <= crc_buf(0) xor data(0);
    buf2(0) <= crc_buf(11) xor buf1(0);
    buf3(0) <= crc_buf(4) xor buf1(0);
        
    buf1(1) <= crc_buf(1) xor data(1);
    buf2(1) <= crc_buf(12) xor buf1(1);
    buf3(1) <= crc_buf(5) xor buf1(1);
        
    buf1(2) <= crc_buf(2) xor data(2);
    buf2(2) <= crc_buf(13) xor buf1(2);
    buf3(2) <= crc_buf(6) xor buf1(2);
        
    buf1(3) <= crc_buf(3) xor data(3);
    buf2(3) <= crc_buf(14) xor buf1(3);
    buf3(3) <= crc_buf(7) xor buf1(3);
            
    buf1(4) <= buf3(0) xor data(4);
    buf2(4) <= crc_buf(15) xor buf1(4);
    buf3(4) <= crc_buf(8) xor buf1(4);
            
    buf1(5) <= buf3(1) xor data(5);
    buf2(5) <= buf1(0) xor buf1(5);
    buf3(5) <= crc_buf(9) xor buf1(5);
            
    buf1(6) <= buf3(2) xor data(6);
    buf2(6) <= buf1(1) xor buf1(6);
    buf3(6) <= crc_buf(10) xor buf1(6);    
    
    buf_x_gen: for i in 7 to data_width - 1 generate
        buf1(i) <= buf3(i - 4) xor data(i);
        buf2(i) <= buf1(i - 5) xor buf1(i);
        buf3(i) <= buf2(i - 7) xor buf1(i);
    end generate buf_x_gen;
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(rst = '1') then
                crc_buf <= crc_init;
            elsif(data_valid = '1') then
                crc_buf <= buf1(data_width - 1) & buf1(data_width - 2) & buf1(data_width - 3) & buf1(data_width - 4) & buf1(data_width - 5) & 
                           buf2(data_width - 1) & buf2(data_width - 2) & buf2(data_width - 3) & buf2(data_width - 4) & buf2(data_width - 5) & buf2(data_width - 6) & buf2(data_width - 7) & 
                           buf3(data_width - 1) & buf3(data_width - 2) & buf3(data_width - 3) & buf3(data_width - 4);
            end if;
        end if;
    end process;
    
--    crc <= crc_buf(7 downto 0) & crc_buf(15 downto 8);
    crc <= crc_buf;
    
END Behavioral;