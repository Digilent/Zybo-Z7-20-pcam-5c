----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/25/2016 08:55:17 AM
-- Design Name: 
-- Module Name: csi2_2_axis - Behavioral
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

entity csi2_2_axis is
    Generic(
            C_AXIS_TDATA_WIDTH : natural range 1 to 40 := 3;
            C_AXIS_WORD_WIDTH : natural range 8 to 20 := 8;
            C_AXIS_DUMMY_BITS: natural range 0 to 20 := 0
    );
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
            
            m_axis_video_tdata    : out std_logic_vector(C_AXIS_TDATA_WIDTH * C_AXIS_WORD_WIDTH + C_AXIS_DUMMY_BITS -1 downto 0);
            m_axis_video_tvalid    : out std_logic;
            m_axis_video_tready    : in std_logic;
            m_axis_video_tlast    : out std_logic;
            m_axis_video_tuser    : out std_logic;
            
            data_type_err: out std_logic;
            actual_line: out std_logic_vector(15 downto 0);
            frame_width: out std_logic_vector(15 downto 0)
            );
end csi2_2_axis;

architecture Behavioral of csi2_2_axis is
        
    --AXI data recognized:
    --Data_ID_YUV420_8bit
    --RGB
    
    --DATA TYPE for synchronization (short packet)
    constant Data_Type_SP                           : std_logic_vector(5 downto 4) := "00";                 --short packet
    constant Data_ID_Frame_Start                    : std_logic_vector(5 downto 0) := "00" & x"0";
    constant Data_ID_Frame_End                      : std_logic_vector(5 downto 0) := "00" & x"1";
    constant Data_ID_Line_Start                     : std_logic_vector(5 downto 0) := "00" & x"2";
    constant Data_ID_Line_End                       : std_logic_vector(5 downto 0) := "00" & x"3";
    
    constant Data_Type_Generic_Short_Pack           : std_logic_vector(5 downto 3) := "001";
    
    --DATA TYPE for long packet
    constant Data_ID_Long_Pack_Null                 : std_logic_vector(5 downto 0) := "01" & x"0";
    constant Data_ID_Long_Pack_Blanking_Data        : std_logic_vector(5 downto 0) := "01" & x"1";
    constant Data_ID_Long_Pack_Embedded             : std_logic_vector(5 downto 0) := "01" & x"2";
    
    constant Data_ID_YUV420                         : std_logic_vector(5 downto 0) := "01" & x"8";
    constant Data_ID_YUV420_10bit                   : std_logic_vector(5 downto 0) := "01" & x"9";
    constant Data_ID_L_YUV420_8bit                  : std_logic_vector(5 downto 0) := "01" & x"A";
    constant Data_ID_YUV420_8bit_CSPS               : std_logic_vector(5 downto 0) := "01" & x"C";
    constant Data_ID_YUV420_10bit_CSPS              : std_logic_vector(5 downto 0) := "01" & x"D";
    constant Data_ID_YUV422_8bit                    : std_logic_vector(5 downto 0) := "01" & x"E";
    constant Data_ID_YUV422_10bit                   : std_logic_vector(5 downto 0) := "01" & x"F";
    
    constant Data_ID_RGB444                         : std_logic_vector(5 downto 0) := "10" & x"0";
    constant Data_ID_RGB555                         : std_logic_vector(5 downto 0) := "10" & x"1";
    constant Data_ID_RGB565                         : std_logic_vector(5 downto 0) := "10" & x"2";
    constant Data_ID_RGB666                         : std_logic_vector(5 downto 0) := "10" & x"3";
    constant Data_ID_RGB888                         : std_logic_vector(5 downto 0) := "10" & x"4";
    
    constant Data_ID_RAW6                           : std_logic_vector(5 downto 0) := "10" & x"8";
    constant Data_ID_RAW7                           : std_logic_vector(5 downto 0) := "10" & x"9";
    constant Data_ID_RAW8                           : std_logic_vector(5 downto 0) := "10" & x"A";
    constant Data_ID_RAW10                          : std_logic_vector(5 downto 0) := "10" & x"B";
    constant Data_ID_RAW12                          : std_logic_vector(5 downto 0) := "10" & x"C";
    constant Data_ID_RAW14                          : std_logic_vector(5 downto 0) := "10" & x"D";
    
    constant Data_Type_User_8b                      : std_logic_vector(5 downto 3) := "110";
    
    signal red_data, gre_data, blu_data : std_logic_vector(C_AXIS_WORD_WIDTH - 1 downto 0) := (others => '0');
    signal y_data, uv_data: std_logic_vector(C_AXIS_WORD_WIDTH - 1 downto 0) := (others => '0');
    signal word_buf1, word_buf2, word_buf3 : std_logic_vector(C_AXIS_WORD_WIDTH - 1 downto 0) := (others => '0');
    signal data_buf : std_logic_vector(C_AXIS_TDATA_WIDTH * C_AXIS_WORD_WIDTH + C_AXIS_DUMMY_BITS - 1 downto 0) := (others => '0');
    
    signal cnt : natural range 0 to 14 := 0;
    
    signal sof, eol, eol_buf, eol_1, valid: std_logic := '0';
    signal sofX, validX: std_logic := '0';
    signal data: std_logic_vector(C_AXIS_TDATA_WIDTH * C_AXIS_WORD_WIDTH + C_AXIS_DUMMY_BITS - 1 downto 0);
    
    signal cnt_croc_data: integer := 0;
    signal tvalid : std_logic;
    
    signal axis_processing: std_logic := '0';
    
    signal actual_line_buf: std_logic_vector(15 downto 0) := (others => '0');
begin
    
--    process(aclk)
--    begin
--        if(rising_edge(aclk)) then
--            processing <= fifo_extract and axis_processing;
--        end if;
--    end process;
    
    processing <= axis_processing;
    
--    m_axis_video_tvalid <= tvalid;
    m_axis_video_tvalid <= tvalid and m_axis_video_tready;
    
    process(aclk)
    begin
        if(rising_edge(aclk)) then
            if((m_axis_video_tready = '0' and VALID = '1') or m_axis_video_tready = '1') then
                m_axis_video_tuser <= SOF;
                m_axis_video_tlast <= EOL;
                m_axis_video_tdata <= data;
            end if;
            
            if(m_axis_video_tready = '0' and VALID = '1') then
                tvalid <= '1';
            elsif(m_axis_video_tready = '1') then
                tvalid <= VALID;
            end if;
        end if;
    end process;
    
    data(C_AXIS_WORD_WIDTH - 1 downto 0)                            <= gre_data or y_data;
    data(2 * C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH)        <= blu_data or uv_data;
    data(3 * C_AXIS_WORD_WIDTH - 1 downto 2 * C_AXIS_WORD_WIDTH)    <= red_data;
--    data(C_AXIS_WORD_WIDTH - 1 downto 0)                            <= data_buf(C_AXIS_WORD_WIDTH - 1 downto 0);
--    data(2 * C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH)        <= data_buf(3 * C_AXIS_WORD_WIDTH - 1 downto 2 * C_AXIS_WORD_WIDTH);
--    data(3 * C_AXIS_WORD_WIDTH - 1 downto 2 * C_AXIS_WORD_WIDTH)    <= data_buf(2 * C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH);
    
    MSB_BITS: IF C_AXIS_DUMMY_BITS > 0 generate
        data(C_AXIS_TDATA_WIDTH * C_AXIS_WORD_WIDTH + C_AXIS_DUMMY_BITS - 1 downto C_AXIS_TDATA_WIDTH * C_AXIS_WORD_WIDTH) <= (others => '0');
    end generate;
    
    actual_line <= actual_line_buf;
    
    eol_1_inst: process(aclk)
    begin
        if(rising_edge(aclk)) then
            eol_1 <= eol;
        end if;
    end process; 
    
    actual_line_proc: process(aclk)
    begin
        if(rising_edge(aclk)) then
            if(eol = '1' and eol_1 = '0') then
                if(Data_Type = Data_ID_Frame_Start) then
                    actual_line_buf <= (others => '0');
                elsif(Data_Type = Data_ID_Frame_End) then
                    frame_width <= actual_line_buf;
--                elsif(Data_Type(5 downto 4) /= Data_Type_SP) then
--                    actual_line_buf <= actual_line_buf + '1';
                elsif(Data_Type = Data_ID_Line_End) then
                    actual_line_buf <= actual_line_buf + '1';
                end if;
            end if;
        end if;
    end process;   
    
    sof_proc: process(aclk)
    begin
        if(rising_edge(aclk)) then
--            if(header_end = '1' and err = '0' and Data_Type = Data_ID_Frame_Start) then
            if(header_end = '1' and Data_Type = Data_ID_Frame_Start) then
                SOF <= '1';
            elsif(VALID = '1') then
                SOF <= '0';
            end if;
        end if;
    end process;   
    
    
    
    eol_inst: process(aclk)
    begin
        if(rising_edge(aclk)) then
            if(Data_Type(5 downto 4) /= Data_Type_SP) then          --there is a long packet
                if(eol = '1') then
                    eol_buf <= '0';
                elsif(eol_buf = '0' and rx_end = '1' and ce = '1') then
                    eol_buf <= '1';
                end if;
            end if;
        end if;
    end process;
    
    DT_process: process(aclk)
    begin
        if(rising_edge(aclk)) then
            if(rst = '1') then
                cnt <= 0;
                eol <= '0';
                data_type_err <= '0';
                
            elsif(m_axis_video_tready = '1') then
                eol <= '0';
                data_type_err <= '0';
                
                if(Data_Type = Data_ID_RGB888 and err = '0') then
                        --see section 11.3.1 -> RGB888
                        y_data <= (others => '0');
                        uv_data <= (others => '0');
                        
                        if cnt = 0 and ce = '1' then
                            cnt <= 1;
                            
                            valid <= '1';
                            blu_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(7 downto 0);
                            gre_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(15 downto 8);
                            red_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(23 downto 16);
                            word_buf1(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(31 downto 24);
                            
                            axis_processing <= '0';
                        elsif cnt = 1 and ce = '1' then
                            cnt <= 2;
                            
                            valid <= '1';
                            blu_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= word_buf1(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8);
                            
                            gre_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(7 downto 0);
                            red_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <=  d_in(15 downto 8);
                            word_buf1(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(23 downto 16);
                            word_buf2(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(31 downto 24);
                            
                            axis_processing <= '1';
                        elsif cnt = 2 and ce = '1' then
                            cnt <= 3;
                            
                            valid <= '1';
                            blu_data <= word_buf1;
                            gre_data <= word_buf2;
                            
                            red_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(7 downto 0);
                            word_buf1(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(15 downto 8); 
                            word_buf2(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(23 downto 16);
                            word_buf3(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(31 downto 24);
                            
                            axis_processing <= '0';
                        elsif cnt = 3 then
                            cnt <= 0;
                            valid <= '1';
                            
                            word_buf1 <= (others => '0');
                            word_buf2 <= (others => '0');
                            word_buf3 <= (others => '0');
                            
                            blu_data <= word_buf1;
                            gre_data <= word_buf2;
                            red_data <= word_buf3;
                            
                            eol <= (rx_end and ce) or eol_buf;
                            axis_processing <= '0';
                        else
                            valid <= '0';
                        end if;
--                elsif(Data_Type = Data_ID_RGB666) then  
--                        --see section 11.3.2 -> RGB666
                elsif(Data_Type = Data_ID_RGB565 and err = '0') then 
                        --see section 11.3.3 -> RGB565
                        y_data <= (others => '0');
                        uv_data <= (others => '0');
                                        
                        red_data(C_AXIS_WORD_WIDTH - 6 downto 0) <= (others => '0');
                        gre_data(C_AXIS_WORD_WIDTH - 7 downto 0) <= (others => '0');
                        blu_data(C_AXIS_WORD_WIDTH - 6 downto 0) <= (others => '0');
                        
                        if cnt = 0 and ce = '1' then
                            cnt <= 1;
                            valid <= '1';
                            
                            axis_processing <= '1';
                            
                            blu_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(4 downto 0);
                            gre_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 6) <= d_in(10 downto 5);
                            red_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(15 downto 11);
                                                        
                            word_buf1(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(20 downto 16);
                            word_buf2(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 6) <= d_in(26 downto 21);
                            word_buf3(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(31 downto 27);
                        elsif cnt = 1 then
                            cnt <= 0;
                            valid <= '1';
                            axis_processing <= '0';
                            
                            word_buf1 <= (others => '0');
                            word_buf2 <= (others => '0');
                            word_buf3 <= (others => '0');
                            
                            blu_data <= word_buf1;
                            gre_data <= word_buf2;
                            red_data <= word_buf3;
                            eol <= eol_buf;
                        else
                            cnt <= 0;
                            valid <= '0';
                        end if;
                elsif(Data_Type = Data_ID_RGB555 and err = '0') then 
                        --see section 11.3.4 -> RGB555
                        y_data <= (others => '0');
                        uv_data <= (others => '0');
                        
                        red_data(C_AXIS_WORD_WIDTH - 6 downto 0) <= (others => '0');
                        gre_data(C_AXIS_WORD_WIDTH - 6 downto 0) <= (others => '0');
                        blu_data(C_AXIS_WORD_WIDTH - 6 downto 0) <= (others => '0');
                        
                        if cnt = 0 and ce = '1' then
                            cnt <= 1;
                            valid <= '1';
                            
                            axis_processing <= '1';
                            
                            blu_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(4 downto 0);
                            gre_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(10 downto 6);
                            red_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(15 downto 11);
                            
                            word_buf1(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(20 downto 16);
                            word_buf2(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(26 downto 22);
                            word_buf3(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 5) <= d_in(31 downto 27);
                        elsif cnt = 1 then
                            cnt <= 0;
                            valid <= '1';
                            axis_processing <= '0';
                            
                            word_buf1 <= (others => '0');
                            word_buf2 <= (others => '0');
                            word_buf3 <= (others => '0');
                            
                            blu_data <= word_buf1;
                            gre_data <= word_buf2;
                            red_data <= word_buf3;
                            eol <= eol_buf;
                        else
                            cnt <= 0;
                            valid <= '0';
                        end if;
                elsif(Data_Type = Data_ID_RGB444 and err = '0') then
                        --see section 11.3.5 -> RGB444
                        y_data <= (others => '0');
                        uv_data <= (others => '0');
                        
                        red_data(C_AXIS_WORD_WIDTH - 6 downto 0) <= (others => '0');
                        gre_data(C_AXIS_WORD_WIDTH - 6 downto 0) <= (others => '0');
                        blu_data(C_AXIS_WORD_WIDTH - 6 downto 0) <= (others => '0');
                        
                        red_data(C_AXIS_WORD_WIDTH - 5) <= '1';
                        gre_data(C_AXIS_WORD_WIDTH - 5) <= '1';
                        blu_data(C_AXIS_WORD_WIDTH - 5) <= '1';
                        
                        if cnt = 0 and ce = '1' then
                            cnt <= 1;
                            valid <= '1';
                            axis_processing <= '1';
                            
                            blu_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 4) <= d_in(4 downto 1);
                            gre_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 4) <= d_in(10 downto 7);
                            red_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 4) <= d_in(15 downto 12);
                            
                            word_buf1(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 4) <= d_in(20 downto 17);
                            word_buf2(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 4) <= d_in(26 downto 23);
                            word_buf3(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 4) <= d_in(31 downto 28);
                        elsif cnt = 1 then
                            cnt <= 0;
                            valid <= '1';
                            axis_processing <= '0';
                            
                            word_buf1 <= (C_AXIS_WORD_WIDTH - 5 => '1', others => '0');
                            word_buf2 <= (C_AXIS_WORD_WIDTH - 5 => '1', others => '0');
                            word_buf3 <= (C_AXIS_WORD_WIDTH - 5 => '1', others => '0');
                            
                            blu_data <= word_buf1;
                            gre_data <= word_buf2;
                            red_data <= word_buf3;
                            eol <= eol_buf;
                        end if;
                elsif(Data_Type = Data_ID_YUV422_8bit and err = '0') then
                        --see section 11.2.4 -> YUV422 8-bit
                        red_data <= (others => '0');
                        gre_data <= (others => '0');
                        blu_data <= (others => '0');
                        
                        if cnt = 0 then
                            cnt <= 1;
                            axis_processing <= '1';
                            valid <= '1';
                            
                            uv_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(7 downto 0);        --U0
                            y_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(15 downto 8);        --Y0
                        elsif cnt = 1 then
                            cnt <= 0;
                            axis_processing <= '0';
                            valid <= '1';
                            
                            uv_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(7 downto 0);        --V0
                            y_data(C_AXIS_WORD_WIDTH - 1 downto C_AXIS_WORD_WIDTH - 8) <= d_in(15 downto 8);        --Y1
                            eol <= eol_buf;
                        else
                            cnt <= 0;
                            valid <= '0';
                        end if;
                        
                elsif((header_end = '1' or rx_end = '1') and err = '0' and ce = '1') then
                    cnt <= 0;
                    axis_processing <= '0';
                    if(err = '0') then
                        data_type_err <= '1';
                    end if;
                else
                    valid <= '0';
                    axis_processing <= '0';
                    if(err = '0') then
                        data_type_err <= '1';
                    end if;
                end if;  
            elsif(ce = '0') then
                valid <= '0';
            end if;
        end if;
    end process;
    
end Behavioral;
