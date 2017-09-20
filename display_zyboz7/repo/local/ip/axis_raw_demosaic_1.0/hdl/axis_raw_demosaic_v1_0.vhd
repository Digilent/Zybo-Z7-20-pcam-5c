----------------------------------------------------------------------------------
-- Company: Trenz Electronic GmbH
-- Engineer: Oleksandr Kiyenko
----------------------------------------------------------------------------------
library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VComponents.all;
----------------------------------------------------------------------------------
entity axis_raw_demosaic_v1_0 is
generic (
	C_S_AXIS_TDATA_WIDTH	: integer	:= 40;
	C_RAW_WIDTH				: integer	:= 10;
  C_S_MAX_SAMPLES_PER_CLOCK : integer := 4
);
port (
	s_axis_aclk				: in  STD_LOGIC;
	s_axis_aresetn			: in  STD_LOGIC;
	s_axis_tready			: out STD_LOGIC;
	s_axis_tdata			: in  STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 downto 0);
	s_axis_tuser			: in  STD_LOGIC;
	s_axis_tlast			: in  STD_LOGIC;
	s_axis_tvalid			: in  STD_LOGIC;

	m_axis_aclk				: in  STD_LOGIC;
	m_axis_aresetn			: in  STD_LOGIC;
	m_axis_tvalid			: out STD_LOGIC;
	m_axis_tdata			: out STD_LOGIC_VECTOR(23 downto 0);
	m_axis_tuser			: out STD_LOGIC;
	m_axis_tlast			: out STD_LOGIC;
	m_axis_tready			: in  STD_LOGIC
);
end axis_raw_demosaic_v1_0;
----------------------------------------------------------------------------------
architecture arch_imp of axis_raw_demosaic_v1_0 is
----------------------------------------------------------------------------------
component dualport_ram is
port (
	clk						: in  STD_LOGIC;
	wea						: in  STD_LOGIC;
	addra					: in  STD_LOGIC_VECTOR(10 downto 0);
	addrb					: in  STD_LOGIC_VECTOR(10 downto 0);
	dia						: in  STD_LOGIC_VECTOR(9 downto 0);
	dob						: out STD_LOGIC_VECTOR(9 downto 0)
);
end component;

component gamma_rom is
port(
	addra					: in  STD_LOGIC_VECTOR(9 downto 0);
	clka					: in  STD_LOGIC;
	douta					: out STD_LOGIC_VECTOR(7 downto 0)
);
end component;
----------------------------------------------------------------------------------
--signal tx_alpha				: STD_LOGIC_VECTOR(7 downto 0);
signal tx_blue				: STD_LOGIC_VECTOR(7 downto 0);
signal tx_green				: STD_LOGIC_VECTOR(7 downto 0);
signal tx_red				: STD_LOGIC_VECTOR(7 downto 0);
signal x_cnt				: UNSIGNED(15 downto 0) := (others => '0');
signal y_cnt				: UNSIGNED(15 downto 0) := (others => '0');
type sm_state_type is (ST_IDLE, ST_PROCESS, ST_SEND, ST_OTHERPIX);
signal sm_state				: sm_state_type := ST_IDLE;
signal up_crnt_pixel_data		: STD_LOGIC_VECTOR(C_RAW_WIDTH-1 downto 0);
signal crnt_pixel_data			: STD_LOGIC_VECTOR(C_RAW_WIDTH-1 downto 0);
-- 29 downto 0
signal other_pixel_data			: STD_LOGIC_VECTOR((C_RAW_WIDTH*(C_S_MAX_SAMPLES_PER_CLOCK-1))-1 downto 0);
signal position				: STD_LOGIC_VECTOR(1 downto 0);
signal tx_valid				: STD_LOGIC;
signal tx_user				: STD_LOGIC;
signal tx_last				: STD_LOGIC;
signal x_wr_addr			: UNSIGNED(15 downto 0);
signal x_rd_addr			: UNSIGNED(15 downto 0);
signal ram_write			: STD_LOGIC;
signal ram_wr_addr			: STD_LOGIC_VECTOR(10 downto 0);
signal ram_rd_addr			: STD_LOGIC_VECTOR(10 downto 0);
signal ram_wr_data			: STD_LOGIC_VECTOR( 9 downto 0);
signal ram_rd_data			: STD_LOGIC_VECTOR( 9 downto 0);
signal cnt_rem_pixels: unsigned(1 downto 0);
type raw_pixel is array (3 downto 0) of STD_LOGIC_VECTOR(C_RAW_WIDTH-1 downto 0);
signal pixel				: raw_pixel;
type std_pixel is array (3 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
signal pixel_gamma			: std_pixel;
signal tlast_asserted : STD_LOGIC;
----------------------------------------------------------------------------------
begin
----------------------------------------------------------------------------------
ram_wr_addr		<= STD_LOGIC_VECTOR(x_wr_addr(10 downto 0));
ram_rd_addr		<= STD_LOGIC_VECTOR(x_rd_addr(10 downto 0));
ram_wr_data		<= pixel(0);
up_crnt_pixel_data	<= ram_rd_data;

ram_inst: dualport_ram
port map(
	clk			=> s_axis_aclk,
	wea			=> ram_write,
	addra		=> ram_wr_addr,
	addrb		=> ram_rd_addr,
	dia			=> ram_wr_data,
	dob			=> ram_rd_data
);
----------------------------------------------------------------------------------
crnt_pixel_data		<= s_axis_tdata(C_RAW_WIDTH-1 downto 0);

process(s_axis_aclk)
begin
	if(s_axis_aclk = '1' and s_axis_aclk'event)then
		case sm_state is
			when ST_IDLE => 
				if(m_axis_tready = '1')then
					tx_valid		<= '0';
					tx_last			<= '0';
				end if;
				if((s_axis_tvalid = '1') and (m_axis_tready = '1'))then
					sm_state		<= ST_PROCESS;
					pixel(0)		<= crnt_pixel_data;
          -- 39 downto 10
          other_pixel_data <= s_axis_tdata((C_RAW_WIDTH*C_S_MAX_SAMPLES_PER_CLOCK)-1
            downto C_RAW_WIDTH);
          cnt_rem_pixels <= "11";
					pixel(1)		<= pixel(0);
					pixel(2)		<= up_crnt_pixel_data;
					pixel(3)		<= pixel(2);
					tx_user			<= s_axis_tuser;
					tx_last			<= '0';
          tlast_asserted <= s_axis_tlast;
					x_wr_addr		<= x_cnt;
					ram_write		<= '1';
					position		<= y_cnt(0) & x_cnt(0);
					x_cnt		<= x_cnt + 1;
					x_rd_addr	<= x_cnt + 1;
					if(s_axis_tuser = '1')then
						y_cnt		<= (others => '0');
					end if;
				else
					ram_write		<= '0';
				end if;
			when ST_PROCESS =>
				ram_write			<= '0';
				sm_state			<= ST_SEND;
			when ST_SEND =>
        if cnt_rem_pixels = 0 then
          sm_state			<= ST_IDLE;
        else
          sm_state			<= ST_OTHERPIX;
        end if;
				tx_valid			<= '1';
				ram_write			<= '0';
				case position is
					when "01" =>
						tx_blue		<= pixel_gamma(1);
						tx_green	<= pixel_gamma(0);
						tx_red		<= pixel_gamma(2);
					when "00" =>
						tx_blue		<= pixel_gamma(0);
						tx_green	<= pixel_gamma(1);
						tx_red		<= pixel_gamma(3);
					when "11" =>
						tx_blue		<= pixel_gamma(3);
						tx_green	<= pixel_gamma(1);
						tx_red		<= pixel_gamma(0);
					when "10" =>
						tx_blue		<= pixel_gamma(2);
						tx_green	<= pixel_gamma(0);
						tx_red		<= pixel_gamma(1);
					when others => null;
				end case;
		  when ST_OTHERPIX =>
        if(m_axis_tready = '1')then
					tx_valid		<= '0';
					tx_last			<= '0';
				end if;
        sm_state		<= ST_PROCESS;
        pixel(0)		<= other_pixel_data(C_RAW_WIDTH-1 downto 0);
        -- 10 bits & 29 downto 10
        other_pixel_data <= "00"&x"00" & other_pixel_data((C_RAW_WIDTH*(C_S_MAX_SAMPLES_PER_CLOCK-1))-1
          downto C_RAW_WIDTH);
        cnt_rem_pixels <= cnt_rem_pixels - 1;
        pixel(1)		<= pixel(0);
        pixel(2)		<= up_crnt_pixel_data;
        pixel(3)		<= pixel(2);
        tx_user			<= '0';
        if cnt_rem_pixels = 1 then
          tx_last			<= tlast_asserted;
        end if;
        x_wr_addr		<= x_cnt;
        ram_write		<= '1';
        position		<= y_cnt(0) & x_cnt(0);
        if(cnt_rem_pixels = 1) and (tlast_asserted = '1') then
          x_cnt		<= (others => '0');
          x_rd_addr	<= (others => '0');
          y_cnt		<= y_cnt + 1;
        else
          x_cnt		<= x_cnt + 1;
          x_rd_addr	<= x_cnt + 1;
        end if;
        
    end case;
	end if;
end process;
----------------------------------------------------------------------------------
gamma_rom_gen: for i in 0 to 3 generate
begin
	pa_gamma_inst: gamma_rom
	port map(
		addra		=> pixel(i),
		clka		=> s_axis_aclk,
		douta		=> pixel_gamma(i)
	);
end generate;
----------------------------------------------------------------------------------
--tx_alpha			<= (others => '0');
s_axis_tready		<= '1' when ((sm_state = ST_IDLE) and (m_axis_tready = '1')) else '0';
m_axis_tvalid		<= tx_valid;
m_axis_tuser		<= tx_user;
m_axis_tlast		<= tx_last;
--m_axis_tdata		<= tx_alpha & tx_blue & tx_green & tx_red;
m_axis_tdata		<= tx_red & tx_blue & tx_green;
----------------------------------------------------------------------------------
-- Bypass (Raw grayscale)
-- s_axis_tready		<= m_axis_tready;
-- m_axis_tvalid		<= s_axis_tvalid;
-- m_axis_tuser		<= s_axis_tuser;
-- m_axis_tlast		<= s_axis_tlast;
-- m_axis_tdata		<= x"00" & s_axis_tdata(9 downto 2) & s_axis_tdata(9 downto 2) & s_axis_tdata(9 downto 2);
----------------------------------------------------------------------------------
end arch_imp;
