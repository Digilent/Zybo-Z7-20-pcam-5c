----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:46 03/29/2016 
-- Design Name: 
-- Module Name:    Low_Level_Protocol - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Citirea datelor trebuie facuta pe front crescator
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LLP is
    Port ( 
        sysclk : in  STD_LOGIC;
        llp_ce : in  STD_LOGIC;
        tready : in  STD_LOGIC;
        d_in : in  STD_LOGIC_VECTOR (31 downto 0);
        header_send: in std_logic;
        
        init_done: in std_logic;
        
        WC: out std_logic_vector(15 downto 0);
        Data_Type : out  STD_LOGIC_VECTOR (5 downto 0);
        d_out : out  STD_LOGIC_VECTOR (31 downto 0);
        d_ceo : out std_logic;
        ECC_error: out std_logic;
        CRC_error: out std_logic;
        done : out  STD_LOGIC;
        ECC_done: out std_logic;
        last_ceo: out std_logic;
        ECC_PROCESSING: out std_logic;
        shorter_line_interrupt: out std_logic;
        shorter_line: out std_logic_vector(15 downto 0);
        irq_ack: in std_logic
    );
end LLP;

architecture Behavioral of LLP is
	
	component ECC
    Port (  clk : in  STD_LOGIC;
            data : in  STD_LOGIC_VECTOR (31 downto 0);
            ce: in std_logic;
            ecc_processing: out std_logic;
                         
            init_done: in std_logic;
            
            data_corrected: out std_logic_vector(23 downto 0);
            done: out std_logic;
            
            no_error: out std_logic;
            many_errors: out std_logic
		);
	end component;
	
	component CRC16 IS
        generic (data_width : natural range 8 to 128 := 32);
        PORT(
            clk        : IN  STD_LOGIC; 
            rst        : IN  STD_LOGIC; 
            data       : IN  STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0); 
            data_valid : IN  STD_LOGIC;
            crc        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END component; 
    
	signal ECC_dataTX: std_logic_vector(23 downto 0) := (others => '0');
	signal ECC_many_err : std_logic := '0';
	
	signal WC_divided: std_logic_vector(15 downto 0) := (others => '1');
	
    signal data_cnt: STD_LOGIC_VECTOR (16 downto 0) := (others => '1');
	signal CRC_rx :  STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
	signal CRC_clc, crc_clc_buf :  STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
	
    signal doneX: std_logic := '0';
    
    signal crc_err: std_logic;
    
    signal data_typeX : std_logic_vector(5 downto 0) := (others => '0');
    constant Data_Type_short_packet : std_logic_vector(5 downto 4) := "00";
    
    signal fifo_disable_buf: std_logic;
    signal ecc_done_buf: std_logic := '0';
    signal all_zeros_17:  STD_LOGIC_VECTOR (17 downto 0) := (others => '0');
    
    signal header_send_1: std_logic := '0';
begin
    Data_Type <= data_typeX;
    
    WC <= ECC_dataTX(23 downto 8) when data_typeX(5 downto 4) /= Data_Type_short_packet;
    
    last_ceo <= '1' when data_cnt = WC_divided else
                '0';
                
    ECC_PROCESSING <= fifo_disable_buf;
    
    ECC_error <= ECC_many_err;
    CRC_error <= crc_err;
    done <= doneX;
    data_typeX <= ECC_dataTX(5 downto 0);
    --test signals

    process(sysclk)
    begin
        if(rising_edge(sysclk)) then
            header_send_1 <= header_send;
        end if;
    end process;
        cnt_proc: process(sysclk)
    begin
        if(rising_edge(sysclk)) then
--            if(fifo_disable_buf = '1') then
            if(header_send = '1') then
                data_cnt <= (others => '0');
            elsif(llp_ce = '1' and WC_divided + '1' > data_cnt) then
                data_cnt <= data_cnt + '1';
            end if;
        end if;
    end process;
    
    shorter_line_proc: process(sysclk)
    begin
        if(rising_edge(sysclk)) then
            if(header_send = '1' and data_cnt < WC_divided and data_typeX(5 downto 4) /= Data_Type_short_packet and data_cnt > all_zeros_17) then
                shorter_line_interrupt <= '1';
                shorter_line <= data_cnt(15 downto 0);
            elsif(irq_ack = '1') then
                shorter_line_interrupt <= '0';
            end if;
        end if;
    end process;
    
    process(sysclk)
    begin
        if(rising_edge(sysclk)) then
            if(tready = '1' or llp_ce = '1') then
                d_out <= d_in;
                if(WC_divided > data_cnt) then
                    d_ceo <= llp_ce and (not fifo_disable_buf);
                else
                    d_ceo <= '0';
                end if;
            end if;
        end if;
    end process;
    
    WC_divided <= "00" & ECC_dataTX(23 downto 10) when data_typeX(5 downto 4) /= Data_Type_short_packet;
    
    ecc_done <= ECC_done_buf;
    
    ECC_inst: ECC
    Port map( clk 			=> sysclk,
        data 					=> d_in,
        ce                    => header_send and llp_ce,
        ecc_processing        => fifo_disable_buf,
        
        init_done => init_done,
        
        data_corrected 		=> ECC_dataTX,
        done            => ECC_done_buf,
        
        no_error 				=> open,
        many_errors 			=> ECC_many_err
    );
    
    CRC_rx <= d_in(15 downto 0);
    
    process(sysclk)
    begin
        if(rising_edge(sysclk)) then
            if(data_cnt = WC_divided and llp_ce = '1') then
                doneX <= '1';
                if(CRC_clc /= CRC_rx and data_typeX(5 downto 4) /= Data_Type_short_packet) then
                    crc_err <= '1';
                else
                    crc_err <= '0';
                end if;
            else
                doneX <= '0';
                crc_err <= '0';
            end if;
        end if;
    end process;
    
    CRC_inst: CRC16
        Port Map(
            clk        => sysclk,
            rst        => ECC_done_buf,
            data       => d_in,
            data_valid => llp_ce,
            crc        => CRC_clc);
       
end Behavioral;
