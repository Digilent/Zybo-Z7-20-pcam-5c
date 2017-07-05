----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2016 01:57:26 PM
-- Design Name: 
-- Module Name: CSI2 - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CSI2 is
    Generic( CSI2_Lane_width: natural range 1 to 4 := 2;
             CSI2_Data_width: natural := 8);
    Port ( 
        sysclk: in std_logic;
        RxByteClkHS : in STD_LOGIC;
        RxDataHS : in  STD_LOGIC_VECTOR (CSI2_Data_width * CSI2_Lane_width - 1 downto 0);
        RxSyncHS : in  STD_LOGIC_VECTOR (CSI2_Lane_width - 1 downto 0);
        RxValidHS : in  STD_LOGIC_VECTOR (CSI2_Lane_width - 1 downto 0);
        RxActiveHS : in  STD_LOGIC_VECTOR (CSI2_Lane_width - 1 downto 0);
        aDEnable : out STD_LOGIC_VECTOR (CSI2_Lane_width - 1 downto 0);
        aClkEnable : out STD_LOGIC;
        
        init_done: in std_logic;
        
        --axi stream signals
        m_axis_video_tdata    : out std_logic_vector(23 downto 0);
        m_axis_video_tvalid    : out std_logic;
        m_axis_video_tready    : in std_logic;
        m_axis_video_tlast    : out std_logic;
        m_axis_video_tuser    : out std_logic;
        
        WC: out std_logic_vector(15 downto 0);
        CRC_ERR: out std_logic_vector(31 downto 0);
        ECC_ERR: out std_logic_vector(31 downto 0);
        data_type_err: out std_logic;
        actual_line: out std_logic_vector(15 downto 0);
        shorter_line: out std_logic_vector(15 downto 0);
        shorter_line_interrupt: out std_logic;
        frame_width: out std_logic_vector(15 downto 0);
        irq_ack: in std_logic
    );
end CSI2;

architecture Behavioral of CSI2 is
    component LLP
        Port(
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
    end component;
    
    component Lane_Merger
        Generic(
            Lane_number: integer := CSI2_Lane_width;
            Data_length: integer := CSI2_Data_width);
        Port ( sysclk: in std_logic;
               
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
    end component;
    
    component csi2_2_axis
        Generic(
            C_AXIS_WORD_WIDTH : natural range 8 to 20 := 8;
            C_AXIS_DUMMY_BITS: natural range 0 to 20 := 0);
        Port ( 
            header_end: in std_logic;      -- short packet <=> ecc_done
            err : in std_logic;
            ce: in std_logic;       -- <=> d_ceo
            rx_end: in std_logic;
            Data_Type: in std_logic_vector(5 downto 0);
            d_in: in std_logic_vector(31 downto 0);
            rst     : in std_logic;
            
            -- Ports of Axi Master Bus Interface M00_AXIS
            aclk    : in std_logic;
            aresetn    : in std_logic;                 --not used
            
            fifo_extract : in std_logic;
            processing: out std_logic;
            
            m_axis_video_tdata    : out std_logic_vector(23 downto 0);
            m_axis_video_tvalid    : out std_logic;
            m_axis_video_tready    : in std_logic;       --not used
            m_axis_video_tlast    : out std_logic;
            m_axis_video_tuser    : out std_logic;
            
            data_type_err: out std_logic;
            actual_line: out std_logic_vector(15 downto 0);
            frame_width: out std_logic_vector(15 downto 0)
        );
    end component;
    
    signal LLP_ce: std_logic := '0';        
    signal LLP_first_word: std_logic := '0';     
    signal DataHs_out: STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal LLP_data_in: STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal LLP_last_ceo: std_logic := '0';  
    
    signal LLP_Data_Type :  STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
    signal LLP_d_out : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal LLP_d_ceo : std_logic := '0';
    signal LLP_ECC_error, LLP_ECC_error_1: std_logic := '0';
    signal LLP_CRC_error: std_logic := '0';
    signal LLP_done :  STD_LOGIC := '0';
    
    signal axis_data: std_logic_vector(31 downto 0) := (others => '0');
    signal axis_ceo: std_logic;
    signal axis_cnt: integer range 0 to 3 := 0;
    signal axis_processing: std_logic := '0';
    
    signal ECC_Done :  STD_LOGIC := '0';
    signal ECC_PROCESSING : std_logic := '0';
    
    signal fifo_extract: std_logic := '0';
    signal CRC_ERR_buf: std_logic_vector(31 downto 0) := (others => '0');
    signal ECC_ERR_buf: std_logic_vector(31 downto 0) := (others => '0');
begin
    
    CRC_ERR <= CRC_ERR_buf;
    ECC_ERR <= ECC_ERR_buf;
    
    process(sysclk)
    begin
        if(rising_edge(sysclk)) then
            LLP_ECC_error_1 <= LLP_ECC_error;
        end if;
    end process;
    
    process(sysclk)
    begin
        if(rising_edge(sysclk)) then
            if(LLP_CRC_error = '1') then
                CRC_ERR_buf <= CRC_ERR_buf + '1';
            end if;
            if(LLP_ECC_error = '1' and LLP_ECC_error_1 = '0') then
                ECC_ERR_buf <= ECC_ERR_buf + '1';
            end if;
        end if;
    end process;
    
    LLP_data_in <= DataHs_out;
    
    aDEnable <= (others => '1');
    aClkEnable <= '1';
    
    axis_data <= LLP_d_out;
    axis_ceo <= LLP_d_ceo;
    
    csi2_2_axis_inst: csi2_2_axis
        Generic Map(
                C_AXIS_WORD_WIDTH => 8,
                C_AXIS_DUMMY_BITS => 0)
        Port map( 
            header_end      => ECC_Done,
--            err => '0',
            err             => LLP_ECC_error,
--            ce  => LLP_d_ceo,
            ce              => axis_ceo,
            rx_end          => LLP_last_ceo,
            Data_Type       => LLP_Data_Type,
            d_in            => axis_data,
            rst             => LLP_first_word,
            
            -- Ports of Axi Master Bus Interface M00_AXIS
            aclk            => sysclk,
            aresetn         => '0',                 --not used
            
            fifo_extract    => fifo_extract,
            processing      => axis_processing,
            
            m_axis_video_tdata    => m_axis_video_tdata,
            m_axis_video_tvalid   => m_axis_video_tvalid,
            m_axis_video_tready   => m_axis_video_tready,
            m_axis_video_tlast    => m_axis_video_tlast,
            m_axis_video_tuser    => m_axis_video_tuser,
            
            data_type_err => data_type_err,
            actual_line => actual_line,
            frame_width => frame_width
        );
    
    LM_inst: Lane_Merger
        Generic Map( 
                Lane_number => CSI2_Lane_width,
                Data_length => CSI2_Data_width)
        Port Map( 
            sysclk          => sysclk,
            
            RxByteClkHS     => RxByteClkHS,
            RxDataHS        => RxDataHS,
            RxSyncHS        => RxSyncHS,
            RxValidHS       => RxValidHS,
            RxActiveHS      => RxActiveHS,
--            LM_ce          => m_axis_video_tready and (not axis_processing),
            LM_ce          => m_axis_video_tready and (not ECC_PROCESSING) and (not axis_processing),
            ecc_end         => ECC_Done,
            
            data_q          => DataHs_out,
            en_q            => LLP_ce,
            fifo_extract    => fifo_extract,
            header_send     => LLP_first_word
        );
    
    LLP_inst: LLP
        Port Map( 
            sysclk          => sysclk,
            llp_ce          => LLP_ce,
            tready          => m_axis_video_tready,
            d_in            => LLP_data_in,
            header_send     => LLP_first_word,
            
            init_done       => init_done,
            
            WC              => WC,
            Data_Type       => LLP_Data_Type,
            d_out           => LLP_d_out,
            d_ceo           => LLP_d_ceo,
            ECC_error       => LLP_ECC_error,
            CRC_error       => LLP_CRC_error,
            done            => LLP_done,
            ECC_done        => ECC_Done,
            last_ceo        => LLP_last_ceo,
            ECC_PROCESSING    => ECC_PROCESSING,
            shorter_line_interrupt => shorter_line_interrupt,
            shorter_line           => shorter_line,
            irq_ack         => irq_ack
        );
    
end Behavioral;
