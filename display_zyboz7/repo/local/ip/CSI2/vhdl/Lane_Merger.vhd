----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:45:23 04/01/2016 
-- Design Name: 
-- Module Name:    Lane_Marger - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	 The MSB from the FIFO output data indicates the first 
--					  word transmitted from the stream. The other 8 bites represents
--					  the data
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Lane_Merger is
    Generic( 
        Lane_number: integer := 2;
        Data_length: integer := 8);
    Port (
        sysclk: in std_logic;
        RxByteClkHS : in STD_LOGIC;
        RxDataHS : in  STD_LOGIC_VECTOR (data_length * Lane_number - 1 downto 0);
        RxSyncHS : in  STD_LOGIC_VECTOR (Lane_number - 1 downto 0);
        RxValidHS : in  STD_LOGIC_VECTOR (Lane_number - 1 downto 0);
        RxActiveHS : in  STD_LOGIC_VECTOR (Lane_number - 1 downto 0);
        LM_ce : in std_logic;
        ecc_end: in std_logic;
        
        data_q: out STD_LOGIC_VECTOR (31 downto 0);
        en_q: out std_logic;
        fifo_extract: out std_logic;
        header_send: out std_logic
    );
end Lane_Merger;

architecture Behavioral of Lane_Merger is	
    component fifo_generator_0
      PORT (
        wr_clk : IN STD_LOGIC;
        wr_rst : IN STD_LOGIC;
        rd_clk : IN STD_LOGIC;
        rd_rst : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC
      );
    END component;
	
	signal fifo_insert : std_logic := '0';
	signal fifo_extract_buf : std_logic := '0';
	
	signal fifo_full : std_logic := '0';
	signal fifo_empty : std_logic := '0';
    
	signal fistrWrite_pop: std_logic := '0';
	
	signal RxValidHS_1 : STD_LOGIC_VECTOR (Lane_number - 1 downto 0);
    
    signal RXValidHS_outX: std_logic := '0';
    signal RXValidHS_out_1: std_logic := '0';
    
    signal fifo_input, fifo_output : STD_LOGIC_VECTOR (32 downto 0) := (others => '0');
    signal fifo_rst: std_logic := '0';
    
    signal merge_cnt: std_logic_vector(1 downto 0) := "00";
    
    signal fifo_full_cnt: std_logic_vector(15 downto 0) := (others => '0');
    signal header_send_y: std_logic := '0';
--    signal header_send_1: std_logic := '0';
    signal fifo_q_32_1: std_logic := '0';
    
begin
    
    fifo_extract <= fifo_extract_buf;
    
    process(RxByteClkHS)
    begin
        if(rising_edge(RxByteClkHS)) then
            if(RxValidHS(0) = '1') then
                fifo_insert <= '0';
                if(Lane_number = 1) then
                    if(merge_cnt = "00" or RxValidHS_1(0) = '0') then
                        fifo_input(7 downto 0) <= RxDataHS;
                        merge_cnt <= "01";
                    elsif(merge_cnt = "01") then
                        fifo_input(15 downto 8) <= RxDataHS;
                        merge_cnt <= "10";
                    elsif(merge_cnt = "10") then
                        fifo_input(23 downto 16) <= RxDataHS;
                        merge_cnt <= "11";
                    elsif(merge_cnt = "11") then
                        fifo_input(31 downto 24) <= RxDataHS;
                        merge_cnt <= "00";
                        fifo_insert <= not fifo_full;
                        
--                        if(fifo_full = '1') then
--                            fifo_full_cnt <= fifo_full_cnt + '1';
--                        end if;
                    end if;
                elsif(Lane_number = 2) then
                    if(merge_cnt = "00" or RxValidHS_1(0) = '0') then
                        fifo_input(15 downto 0) <= RxDataHS;
                        merge_cnt <= "01";
                    elsif(merge_cnt = "01") then
                        fifo_input(31 downto 16) <= RxDataHS;
                        merge_cnt <= "00";
                        fifo_insert <= not fifo_full;
                        
--                        if(fifo_full = '1') then
--                            fifo_full_cnt <= fifo_full_cnt + '1';
--                        end if;
                    end if;
                elsif(Lane_number = 4) then
                    fifo_input(31 downto 0) <= RxDataHS;
                    merge_cnt <= "00";
                    fifo_insert <= not fifo_full;
                    
--                    if(fifo_full = '1') then
--                        fifo_full_cnt <= fifo_full_cnt + '1';
--                    end if;
                end if;
            else
                if(Lane_number = 1) then
                    if(merge_cnt > "00") then
                        if(merge_cnt = "01") then
                            fifo_input(31 downto 8) <= (others => '0');
                        elsif(merge_cnt = "10") then
                            fifo_input(31 downto 16) <= (others => '0');
                        elsif(merge_cnt = "11") then
                            fifo_input(31 downto 24) <= (others => '0');
                        end if;
                        
                        merge_cnt <= "00";
                        fifo_insert <= not fifo_full;
                    else
                        fifo_insert <= '0';
                    end if;
                elsif(Lane_number = 2) then
                    if(merge_cnt = "01") then
                        fifo_input(31 downto 16) <= (others => '0');
                        merge_cnt <= "00";
                        fifo_insert <= not fifo_full;
                    else
                        fifo_insert <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    fifo_input(32) <= header_send_y;
    
    en_q <= RXValidHS_outX;
    
    process(RxByteClkHS)
    begin
        if(rising_edge(RxByteClkHS)) then
            if(RxValidHS(0) = '1' and RxValidHS_1(0) = '0' and RxActiveHS(0) = '1' and RxSyncHS(0) = '0' and RxDataHS(7 downto 0) /= x"01") then
                header_send_y <= '1';
            elsif(fifo_insert = '1') then
                header_send_y <= '0';
            end if;
        end if;
    end process;
    
    process(RxByteClkHS)
    begin
        if(rising_edge(RxByteClkHS)) then
            RxValidHS_1 <= RxValidHS;
        end if;
    end process;
    
--    header_send <= fifo_output(32) when fifo_output(5 downto 4) /= "00" else
--                    '0';
        
    header_send <= fifo_output(32);
    
    process(sysclk)
    begin
        if(rising_edge(sysclk)) then
            fifo_q_32_1 <= fifo_output(32);
        end if;
    end process;
    
    process(sysclk)
    begin
        if(rising_edge(sysclk)) then            
            if(fifo_extract_buf = '1') then
                RXValidHS_outX <= '1';
            else
                RXValidHS_outX <= '0';
            end if;
        end if;
    end process;
    
    fifo_extract_buf <= '1' when LM_ce = '1' and fifo_empty = '0' else
                    '0';
    
    data_q <= fifo_output(31 downto 0);
    
--    fifo_rst <=   '1' when RxValidHS(0) = '1' and RxValidHS_1(0) = '0' and RxActiveHS(0) = '1' and RxSyncHS(0) = '0' and RxDataHS(7 downto 0) = x"01" else
--                  '0';
    fifo_rst <=   '0';
    
    fifo_inst: fifo_generator_0
      PORT map(
        wr_clk => RxByteClkHS,
        wr_en => fifo_insert,
        wr_rst => fifo_rst,
        din => fifo_input,
        full => fifo_full,
        
        rd_clk => sysclk,
        rd_en => fifo_extract_buf,
        rd_rst => '0',
        dout => fifo_output,
        empty => fifo_empty
      );
	
end Behavioral;