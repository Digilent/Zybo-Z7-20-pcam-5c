-- ecc_calc(i) = {D(0) & Parity[0](i)} ^ ... ^ {D(23) & Parity[23](i)}
-- where    Parity[x] is the x parity byte
--          D(x) is the x received data bit

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ECC is
    Port (    clk : in  STD_LOGIC;		
              data : in  STD_LOGIC_VECTOR (31 downto 0);
              ce: in std_logic;
              
              init_done: in std_logic;
              
              ecc_processing: out std_logic;
			  
			  data_corrected: out std_logic_vector(23 downto 0);
			  done: out std_logic;
			  
			  no_error: out std_logic;
			  many_errors: out std_logic
	);
end ECC;

architecture Behavioral of ECC is
	
    component cnt_generic
        generic(width: integer := 32);
        port(CLK, RST, CE, load: in std_logic;
             load_data: in std_logic_vector(width - 1 downto 0);
             Q : out std_logic_vector(width - 1 downto 0));
    end component;
    
    type bit_parity is array ( 0 to 23 ) of std_logic_vector(7 downto 0);
    constant b_p : bit_parity := (  "00000111", "00001011", "00001101", "00001110", "00010011", "00010101", "00010110", "00011001",
                                    "00011010", "00011100", "00100011", "00100101", "00100110", "00101001", "00101010", "00101100",
                                    "00110001", "00110010", "00110100", "00111000", "00011111", "00101111", "00110111", "00111011");
	
	signal received_data: std_logic_vector(23 downto 0) := (others => '0');
    signal ecc_rx, ecc_xor: std_logic_vector(7 downto 0) := (others => '0');
	
	signal ecc_calc: std_logic_vector(7 downto 0) := (others => '0');
	signal data_correctedX: std_logic_vector(23 downto 0) := (others => '0');
	signal corrected_bit: integer range 0 to 31 := 0;
	
	signal many_errorsX, no_errorX : std_logic := '0';
	signal fifo_disable_buf: std_logic := '0';
	
	signal ecc_cnt: std_logic_vector(1 downto 0) := "00";
	signal done_buf : std_logic := '0';
	signal ce_1: std_logic := '0';
	signal init_done_1, init_finish: std_logic := '0';
begin
    done <= done_buf;
    
    no_error <= no_errorX;
    many_errors <= many_errorsX;
    
    data_corrected <= data_correctedX;
    
--    ecc_processing <= fifo_disable_buf;
    ecc_processing <= fifo_disable_buf when init_done = '1' else
                           '0';
    
    fifo_disable_buf <= '1' when ce = '1' else
                        '0' when ecc_cnt = "11" and done_buf = '0';
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            ce_1 <= ce;
            init_done_1 <= init_done;
        end if;
    end process;
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(init_done_1 = '0' and init_done = '1') then
                init_finish <= '1';
            end if;
        end if;
    end process;
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(ce = '1' and ce_1 = '0') then
                received_data(23 downto 16) <= data(23 downto 16);
                received_data(15 downto 8) <= data(15 downto 8);
                received_data(7 downto 0) <= data(7 downto 0);
                ecc_rx <= data(31 downto 24);
            end if;
        end if;
    end process;
            
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(ecc_cnt > "00" and ecc_cnt < "11") then
                ecc_cnt <= ecc_cnt + '1';
            elsif(ce = '1' and ce_1 = '0') then
                ecc_cnt <= "01";
            end if;
        end if;
    end process;
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(ecc_cnt = "01") then
                for i in 0 to 7 loop
                    ecc_calc(i) <=  (received_data(0) and b_p(0)(i)) xor
                                    (received_data(1) and b_p(1)(i)) xor
                                    (received_data(2) and b_p(2)(i)) xor
                                    (received_data(3) and b_p(3)(i)) xor
                                    (received_data(4) and b_p(4)(i)) xor
                                    (received_data(5) and b_p(5)(i)) xor
                                    (received_data(6) and b_p(6)(i)) xor
                                    (received_data(7) and b_p(7)(i)) xor
                                    (received_data(8) and b_p(8)(i)) xor
                                    (received_data(9) and b_p(9)(i)) xor
                                    (received_data(10) and b_p(10)(i)) xor
                                    (received_data(11) and b_p(11)(i)) xor
                                    (received_data(12) and b_p(12)(i)) xor
                                    (received_data(13) and b_p(13)(i)) xor
                                    (received_data(14) and b_p(14)(i)) xor
                                    (received_data(15) and b_p(15)(i)) xor
                                    (received_data(16) and b_p(16)(i)) xor
                                    (received_data(17) and b_p(17)(i)) xor
                                    (received_data(18) and b_p(18)(i)) xor
                                    (received_data(19) and b_p(19)(i)) xor
                                    (received_data(20) and b_p(20)(i)) xor
                                    (received_data(21) and b_p(21)(i)) xor
                                    (received_data(22) and b_p(22)(i)) xor
                                    (received_data(23) and b_p(23)(i));
                end loop;
            end if;
        end if;
    end process;
    
    ECC_xor <= ecc_calc xor ecc_rx;
                
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(ce = '1' and ce_1 = '0' and init_finish = '0') then
                data_correctedX <= data(23 downto 0);
                done_buf <= '1';
            elsif(ecc_cnt = "01") then
                data_correctedX <= data(23 downto 0);
            elsif(ecc_cnt = "10" and init_finish = '1') then
                done_buf <= '1';
                if(ecc_rx /= ecc_calc) then
                    LOOP1: for i in 0 to 23 loop
                            if(ECC_xor = b_p(i)) then
                                corrected_bit <= i;
                                many_errorsX <= '0';
                                no_errorX <= '0';
                                
--                                if(i = 23) then
--                                    data_correctedX <= (received_data(23) xor '1') & received_data(22 downto 0);
--                                elsif(i = 0) then
--                                    data_correctedX <= received_data(23 downto 1) & (received_data(0) xor '1');
--                                else
--                                    data_correctedX <= received_data(23 downto i + 1) & (received_data(i) xor '1') & received_data(i - 1 downto 0);
--                                end if;
                                data_correctedX(i) <= received_data(i) xor '1';
                                
                                exit LOOP1;
                            else
                                data_correctedX <= (others => '0');
                                many_errorsX <= '1';
                                no_errorX <= '0';
                            end if;
                    end loop LOOP1;
                    
                else
                    data_correctedX <= received_data;
                    many_errorsX <= '0';
                    no_errorX <= '1';
                end if;
            else
                done_buf <= '0';
            end if;
        end if;
    end process;
    
end Behavioral;
