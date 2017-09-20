----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2017 07:22:13 PM
-- Design Name: 
-- Module Name: tb_axis_raw_demosaic_0 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_axis_raw_demosaic_0 is
--  Port ( );
end tb_axis_raw_demosaic_0;

architecture Behavioral of tb_axis_raw_demosaic_0 is

constant C_S_AXIS_TDATA_WIDTH : integer := 40;
constant C_RAW_WIDTH : integer	:= 10;

component axis_raw_demosaic_v1_0
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
end component;


signal m_axis_aclk : STD_LOGIC := '0';
signal m_axis_aresetn : STD_LOGIC := '0';

-- OUTPUTS
signal s_axis_tdata : STD_LOGIC_VECTOR(C_S_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
signal s_axis_tuser : STD_LOGIC := '0';
signal s_axis_tlast : STD_LOGIC := '0';
signal s_axis_tvalid : STD_LOGIC := '0';
signal m_axis_tready : STD_LOGIC := '0';

-- INPUTS
signal s_axis_tready : STD_LOGIC;
signal m_axis_tvalid : STD_LOGIC;
signal m_axis_tdata : STD_LOGIC_VECTOR(23 downto 0);
signal m_axis_tuser : STD_LOGIC;
signal m_axis_tlast : STD_LOGIC;

begin

uut: axis_raw_demosaic_v1_0
generic map(
  C_S_AXIS_TDATA_WIDTH => 40,
  C_RAW_WIDTH => 10,
  C_S_MAX_SAMPLES_PER_CLOCK => 4
)
port map(
  s_axis_aclk => m_axis_aclk,
  s_axis_aresetn => m_axis_aresetn,
  s_axis_tready => s_axis_tready,
  s_axis_tdata => s_axis_tdata,
  s_axis_tuser => s_axis_tuser,
  s_axis_tlast => s_axis_tlast,
  s_axis_tvalid => s_axis_tvalid,
  m_axis_aclk => m_axis_aclk,
  m_axis_aresetn => m_axis_aresetn,
  m_axis_tvalid => m_axis_tvalid,
  m_axis_tdata => m_axis_tdata,
  m_axis_tuser => m_axis_tuser,
  m_axis_tlast => m_axis_tlast,
  m_axis_tready => m_axis_tready
);

m_axis_aclk <= not m_axis_aclk after 10ns;
m_axis_aresetn <= '0', '1' after 100ns;

GenerateInputData: process
variable i, j: integer;
begin

  -- Reset & initialization
  wait until m_axis_aresetn = '1';
  wait until rising_edge(m_axis_aclk);
  m_axis_tready <= '1';
  
  j := 0;
  while j < 900 loop
    i := 0;
    -- Start sending a new line
    
    while i < 1280 loop
      if s_axis_tready = '1' then
        s_axis_tdata <= std_logic_vector(to_unsigned(i+4, C_RAW_WIDTH)) &
          std_logic_vector(to_unsigned(i+3, C_RAW_WIDTH)) &
          std_logic_vector(to_unsigned(i+2, C_RAW_WIDTH)) &
          std_logic_vector(to_unsigned(i+1, C_RAW_WIDTH));
        s_axis_tvalid <= '1';
        if i = 0 then
          if j = 0 then
            s_axis_tuser <= '1';
          end if;
        elsif i = 1276 then
          s_axis_tlast <= '1';
        else
          s_axis_tuser <= '0';
        end if;
        
        if (i = 400) and (j = 1) then
          m_axis_tready <= '0';
          wait until rising_edge(m_axis_aclk);
          wait until rising_edge(m_axis_aclk);
          wait until rising_edge(m_axis_aclk);
          wait until rising_edge(m_axis_aclk);
          wait until rising_edge(m_axis_aclk);
          m_axis_tready <= '1';
        end if;
        i := i + 4;
      end if;
      wait until rising_edge(m_axis_aclk);
    end loop;

    while s_axis_tready = '0' loop
      wait until rising_edge(m_axis_aclk);
    end loop;
    s_axis_tdata <= (others => '0');
    s_axis_tvalid <= '0';
    s_axis_tlast <= '0';
    j := j + 1;
    
    wait until rising_edge(m_axis_aclk);
    wait until rising_edge(m_axis_aclk);
  end loop;

end process GenerateInputData;

end Behavioral;

