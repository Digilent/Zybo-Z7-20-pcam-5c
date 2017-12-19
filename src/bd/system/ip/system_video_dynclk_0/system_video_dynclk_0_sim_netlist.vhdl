-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Tue Dec 19 13:28:03 2017
-- Host        : WK73 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               C:/sam_work/git/digilent/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_video_dynclk_0/system_video_dynclk_0_sim_netlist.vhdl
-- Design      : system_video_dynclk_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_video_dynclk_0_SyncAsync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    xLckdRisingFlag_reg : out STD_LOGIC;
    \FSM_onehot_clk_state_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SRDY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    LOCKED_O : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_video_dynclk_0_SyncAsync : entity is "SyncAsync";
end system_video_dynclk_0_SyncAsync;

architecture STRUCTURE of system_video_dynclk_0_SyncAsync is
  signal \FSM_onehot_clk_state[4]_i_2_n_0\ : STD_LOGIC;
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\FSM_onehot_clk_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \FSM_onehot_clk_state_reg[4]\(0),
      I1 => \FSM_onehot_clk_state[4]_i_2_n_0\,
      I2 => SRDY,
      I3 => \FSM_onehot_clk_state_reg[4]\(3),
      I4 => Q(0),
      I5 => \FSM_onehot_clk_state_reg[4]\(2),
      O => E(0)
    );
\FSM_onehot_clk_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => \FSM_onehot_clk_state_reg[4]\(1),
      I2 => Q(0),
      I3 => \FSM_onehot_clk_state_reg[4]\(4),
      O => \FSM_onehot_clk_state[4]_i_2_n_0\
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      CLR => SR(0),
      D => LOCKED_O,
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      CLR => SR(0),
      D => oSyncStages(0),
      Q => oSyncStages(1)
    );
xLckdRisingFlag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => p_0_in,
      O => xLckdRisingFlag_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_video_dynclk_0_axi_dynclk_S00_AXI is
  port (
    s_axi_lite_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sen_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[25]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \axi_rdata_reg[30]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \rom_do_reg[10]\ : out STD_LOGIC;
    \rom_do_reg[10]_0\ : out STD_LOGIC;
    \rom_do_reg[13]\ : out STD_LOGIC;
    \rom_do_reg[13]_0\ : out STD_LOGIC;
    \rom_do_reg[14]\ : out STD_LOGIC;
    \rom_do_reg[15]\ : out STD_LOGIC;
    sen_reg_reg_0 : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rom_addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_video_dynclk_0_axi_dynclk_S00_AXI : entity is "axi_dynclk_S00_AXI";
end system_video_dynclk_0_axi_dynclk_S00_AXI;

architecture STRUCTURE of system_video_dynclk_0_axi_dynclk_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \^axi_rdata_reg[25]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^axi_rdata_reg[30]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 26 downto 8 );
  signal \rom_do[0]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[0]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[0]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[11]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[11]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[11]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[12]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[12]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[12]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[1]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[1]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[1]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[2]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[2]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[2]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[3]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[3]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[3]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[4]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[4]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[4]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[5]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[5]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[5]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[6]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[6]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[6]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[7]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[7]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[7]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[8]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[8]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[8]_i_4_n_0\ : STD_LOGIC;
  signal \rom_do[9]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[9]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[9]_i_4_n_0\ : STD_LOGIC;
  signal \^s_axi_lite_arready\ : STD_LOGIC;
  signal \^s_axi_lite_awready\ : STD_LOGIC;
  signal \^s_axi_lite_bvalid\ : STD_LOGIC;
  signal \^s_axi_lite_rvalid\ : STD_LOGIC;
  signal \^s_axi_lite_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^sen_reg_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair7";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  SR(0) <= \^sr\(0);
  \axi_rdata_reg[25]_0\(6 downto 0) <= \^axi_rdata_reg[25]_0\(6 downto 0);
  \axi_rdata_reg[30]_0\(0) <= \^axi_rdata_reg[30]_0\(0);
  s_axi_lite_arready <= \^s_axi_lite_arready\;
  s_axi_lite_awready <= \^s_axi_lite_awready\;
  s_axi_lite_bvalid <= \^s_axi_lite_bvalid\;
  s_axi_lite_rvalid <= \^s_axi_lite_rvalid\;
  s_axi_lite_wready <= \^s_axi_lite_wready\;
  sen_reg_reg(0) <= \^sen_reg_reg\(0);
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => axi_arready_i_1_n_0,
      D => s_axi_lite_araddr(0),
      Q => sel0(0),
      S => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => axi_arready_i_1_n_0,
      D => s_axi_lite_araddr(1),
      Q => sel0(1),
      S => \^sr\(0)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => axi_arready_i_1_n_0,
      D => s_axi_lite_araddr(2),
      Q => sel0(2),
      S => \^sr\(0)
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => axi_arready_i_1_n_0,
      D => s_axi_lite_araddr(3),
      Q => sel0(3),
      S => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^s_axi_lite_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_lite_arready\,
      R => \^sr\(0)
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => axi_awready0,
      D => s_axi_lite_awaddr(0),
      Q => axi_awaddr(2),
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => axi_awready0,
      D => s_axi_lite_awaddr(1),
      Q => axi_awaddr(3),
      R => \^sr\(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => axi_awready0,
      D => s_axi_lite_awaddr(2),
      Q => axi_awaddr(4),
      R => \^sr\(0)
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => axi_awready0,
      D => s_axi_lite_awaddr(3),
      Q => axi_awaddr(5),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_lite_aresetn,
      O => \^sr\(0)
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^s_axi_lite_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_lite_awready\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s_axi_lite_bready,
      I1 => \^s_axi_lite_bvalid\,
      I2 => \^s_axi_lite_wready\,
      I3 => s_axi_lite_awvalid,
      I4 => s_axi_lite_wvalid,
      I5 => \^s_axi_lite_awready\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_lite_bvalid\,
      R => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[0]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2(0),
      I2 => sel0(1),
      I3 => \out\(1),
      I4 => sel0(0),
      I5 => \^sen_reg_reg\(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => slv_reg6(0),
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => slv_reg4(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[10]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => slv_reg2(10),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[10]\,
      I4 => sel0(0),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => slv_reg6(10),
      I2 => sel0(1),
      I3 => slv_reg5(10),
      I4 => sel0(0),
      I5 => slv_reg4(10),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[11]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => slv_reg2(11),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[11]\,
      I4 => sel0(0),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => slv_reg6(11),
      I2 => sel0(1),
      I3 => slv_reg5(11),
      I4 => sel0(0),
      I5 => slv_reg4(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[12]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => slv_reg2(12),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[12]\,
      I4 => sel0(0),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => slv_reg6(12),
      I2 => sel0(1),
      I3 => slv_reg5(12),
      I4 => sel0(0),
      I5 => slv_reg4(12),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[13]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[13]_i_3_n_0\,
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => slv_reg6(13),
      I2 => sel0(1),
      I3 => slv_reg5(13),
      I4 => sel0(0),
      I5 => slv_reg4(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg2(13),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[13]\,
      I4 => sel0(0),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[14]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[14]_i_3_n_0\,
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => slv_reg5(14),
      I4 => sel0(0),
      I5 => slv_reg4(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^q\(0),
      I1 => slv_reg2(14),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[14]\,
      I4 => sel0(0),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[15]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[15]_i_3_n_0\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => slv_reg5(15),
      I4 => sel0(0),
      I5 => slv_reg4(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^q\(1),
      I1 => slv_reg2(15),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[15]\,
      I4 => sel0(0),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[16]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[16]_i_3_n_0\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => slv_reg5(16),
      I4 => sel0(0),
      I5 => slv_reg4(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => slv_reg2(16),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[16]\,
      I4 => sel0(0),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[17]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => slv_reg2(17),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[17]\,
      I4 => sel0(0),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => slv_reg5(17),
      I4 => sel0(0),
      I5 => slv_reg4(17),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[18]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[18]_i_3_n_0\,
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => slv_reg5(18),
      I4 => sel0(0),
      I5 => slv_reg4(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => slv_reg2(18),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[18]\,
      I4 => sel0(0),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[19]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => slv_reg2(19),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[19]\,
      I4 => sel0(0),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => slv_reg5(19),
      I4 => sel0(0),
      I5 => slv_reg4(19),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[1]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[1]\,
      I4 => sel0(0),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[25]_0\(0),
      I1 => slv_reg6(1),
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      I5 => slv_reg4(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[20]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[20]_i_3_n_0\,
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => slv_reg5(20),
      I4 => sel0(0),
      I5 => slv_reg4(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => slv_reg2(20),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[20]\,
      I4 => sel0(0),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[21]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[21]_i_3_n_0\,
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[25]_0\(5),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => slv_reg5(21),
      I4 => sel0(0),
      I5 => slv_reg4(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => slv_reg2(21),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[21]\,
      I4 => sel0(0),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[22]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[22]_i_3_n_0\,
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => slv_reg5(22),
      I4 => sel0(0),
      I5 => slv_reg4(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => slv_reg2(22),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[22]\,
      I4 => sel0(0),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[23]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[23]_i_3_n_0\,
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => slv_reg5(23),
      I4 => sel0(0),
      I5 => slv_reg4(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => slv_reg2(23),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[23]\,
      I4 => sel0(0),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[24]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[24]_i_3_n_0\,
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => slv_reg5(24),
      I4 => sel0(0),
      I5 => slv_reg4(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => slv_reg2(24),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[24]\,
      I4 => sel0(0),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[25]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => slv_reg2(25),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[25]\,
      I4 => sel0(0),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[25]_0\(6),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => slv_reg5(25),
      I4 => sel0(0),
      I5 => slv_reg4(25),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[26]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[26]_i_3_n_0\,
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => slv_reg5(26),
      I4 => sel0(0),
      I5 => slv_reg4(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => slv_reg2(26),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[26]\,
      I4 => sel0(0),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[27]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => slv_reg2(27),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[27]\,
      I4 => sel0(0),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => slv_reg5(27),
      I4 => sel0(0),
      I5 => slv_reg4(27),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[28]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => slv_reg2(28),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[28]\,
      I4 => sel0(0),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => slv_reg5(28),
      I4 => sel0(0),
      I5 => slv_reg4(28),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[29]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => slv_reg2(29),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[29]\,
      I4 => sel0(0),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => slv_reg5(29),
      I4 => sel0(0),
      I5 => slv_reg4(29),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[2]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg2(2),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[2]\,
      I4 => sel0(0),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[25]_0\(1),
      I1 => slv_reg6(2),
      I2 => sel0(1),
      I3 => slv_reg5(2),
      I4 => sel0(0),
      I5 => slv_reg4(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[30]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^q\(2),
      I1 => slv_reg2(30),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[30]\,
      I4 => sel0(0),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => \^axi_rdata_reg[30]_0\(0),
      I2 => sel0(1),
      I3 => slv_reg5(30),
      I4 => sel0(0),
      I5 => slv_reg4(30),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_lite_arready\,
      I1 => s_axi_lite_arvalid,
      I2 => \^s_axi_lite_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[31]_i_3_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[31]_i_4_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \^q\(3),
      I1 => slv_reg2(31),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[31]\,
      I4 => sel0(0),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => slv_reg5(31),
      I4 => sel0(0),
      I5 => slv_reg4(31),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[3]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg2(3),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[3]\,
      I4 => sel0(0),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[25]_0\(2),
      I1 => slv_reg6(3),
      I2 => sel0(1),
      I3 => slv_reg5(3),
      I4 => sel0(0),
      I5 => slv_reg4(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[4]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg2(4),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[4]\,
      I4 => sel0(0),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => slv_reg6(4),
      I2 => sel0(1),
      I3 => slv_reg5(4),
      I4 => sel0(0),
      I5 => slv_reg4(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[5]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg2(5),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[5]\,
      I4 => sel0(0),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => slv_reg6(5),
      I2 => sel0(1),
      I3 => slv_reg5(5),
      I4 => sel0(0),
      I5 => slv_reg4(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[6]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg2(6),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[6]\,
      I4 => sel0(0),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[25]_0\(3),
      I1 => slv_reg6(6),
      I2 => sel0(1),
      I3 => slv_reg5(6),
      I4 => sel0(0),
      I5 => slv_reg4(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[7]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg2(7),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[7]\,
      I4 => sel0(0),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^axi_rdata_reg[25]_0\(4),
      I1 => slv_reg6(7),
      I2 => sel0(1),
      I3 => slv_reg5(7),
      I4 => sel0(0),
      I5 => slv_reg4(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(3),
      I3 => \axi_rdata[8]_i_2_n_0\,
      I4 => sel0(2),
      I5 => \axi_rdata[8]_i_3_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => slv_reg6(8),
      I2 => sel0(1),
      I3 => slv_reg5(8),
      I4 => sel0(0),
      I5 => slv_reg4(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => slv_reg2(8),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[8]\,
      I4 => sel0(0),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata[9]_i_3_n_0\,
      I3 => sel0(3),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => slv_reg2(9),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[9]\,
      I4 => sel0(0),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => slv_reg6(9),
      I2 => sel0(1),
      I3 => slv_reg5(9),
      I4 => sel0(0),
      I5 => slv_reg4(9),
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[0]_i_1_n_0\,
      Q => s_axi_lite_rdata(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => s_axi_lite_rdata(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => s_axi_lite_rdata(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => s_axi_lite_rdata(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(13),
      Q => s_axi_lite_rdata(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(14),
      Q => s_axi_lite_rdata(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(15),
      Q => s_axi_lite_rdata(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(16),
      Q => s_axi_lite_rdata(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => s_axi_lite_rdata(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(18),
      Q => s_axi_lite_rdata(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => s_axi_lite_rdata(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => s_axi_lite_rdata(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(20),
      Q => s_axi_lite_rdata(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(21),
      Q => s_axi_lite_rdata(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(22),
      Q => s_axi_lite_rdata(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(23),
      Q => s_axi_lite_rdata(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(24),
      Q => s_axi_lite_rdata(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => s_axi_lite_rdata(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(26),
      Q => s_axi_lite_rdata(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => s_axi_lite_rdata(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => s_axi_lite_rdata(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => s_axi_lite_rdata(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => s_axi_lite_rdata(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => s_axi_lite_rdata(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => s_axi_lite_rdata(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => s_axi_lite_rdata(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => s_axi_lite_rdata(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => s_axi_lite_rdata(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => s_axi_lite_rdata(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => s_axi_lite_rdata(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(8),
      Q => s_axi_lite_rdata(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => s_axi_lite_rdata(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => \^s_axi_lite_arready\,
      I2 => \^s_axi_lite_rvalid\,
      I3 => s_axi_lite_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_lite_rvalid\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => s_axi_lite_awvalid,
      I2 => \^s_axi_lite_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_lite_wready\,
      R => \^sr\(0)
    );
\rom_do[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[0]_i_2_n_0\,
      I1 => rom_addr(3),
      I2 => \rom_do[0]_i_3_n_0\,
      I3 => rom_addr(2),
      I4 => \rom_do[0]_i_4_n_0\,
      O => D(0)
    );
\rom_do[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg6(20),
      I1 => rom_addr(0),
      I2 => slv_reg6(0),
      I3 => rom_addr(1),
      I4 => slv_reg6(10),
      I5 => rom_addr(2),
      O => \rom_do[0]_i_2_n_0\
    );
\rom_do[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => slv_reg3(0),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(0),
      O => \rom_do[0]_i_3_n_0\
    );
\rom_do[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(16),
      I1 => rom_addr(1),
      I2 => slv_reg2(0),
      I3 => rom_addr(0),
      O => \rom_do[0]_i_4_n_0\
    );
\rom_do[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => slv_reg3(10),
      I2 => rom_addr(1),
      I3 => slv_reg5(10),
      I4 => rom_addr(0),
      I5 => slv_reg4(16),
      O => \rom_do_reg[10]_0\
    );
\rom_do[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => slv_reg4(0),
      I1 => slv_reg2(26),
      I2 => rom_addr(1),
      I3 => slv_reg2(10),
      I4 => rom_addr(0),
      O => \rom_do_reg[10]\
    );
\rom_do[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => \rom_do[11]_i_2_n_0\,
      I2 => rom_addr(3),
      I3 => \rom_do[11]_i_3_n_0\,
      I4 => rom_addr(2),
      I5 => \rom_do[11]_i_4_n_0\,
      O => D(10)
    );
\rom_do[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg7(4),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg6(31),
      O => \rom_do[11]_i_2_n_0\
    );
\rom_do[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => slv_reg3(11),
      I2 => rom_addr(1),
      I3 => slv_reg5(11),
      I4 => rom_addr(0),
      I5 => slv_reg4(17),
      O => \rom_do[11]_i_3_n_0\
    );
\rom_do[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => slv_reg4(1),
      I1 => slv_reg2(27),
      I2 => rom_addr(1),
      I3 => slv_reg2(11),
      I4 => rom_addr(0),
      O => \rom_do[11]_i_4_n_0\
    );
\rom_do[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => \rom_do[12]_i_2_n_0\,
      I2 => rom_addr(3),
      I3 => \rom_do[12]_i_3_n_0\,
      I4 => rom_addr(2),
      I5 => \rom_do[12]_i_4_n_0\,
      O => D(11)
    );
\rom_do[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg7(5),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg7(0),
      O => \rom_do[12]_i_2_n_0\
    );
\rom_do[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => slv_reg3(12),
      I2 => rom_addr(1),
      I3 => slv_reg5(12),
      I4 => rom_addr(0),
      I5 => slv_reg4(18),
      O => \rom_do[12]_i_3_n_0\
    );
\rom_do[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => slv_reg4(2),
      I1 => slv_reg2(28),
      I2 => rom_addr(1),
      I3 => slv_reg2(12),
      I4 => rom_addr(0),
      O => \rom_do[12]_i_4_n_0\
    );
\rom_do[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => slv_reg3(13),
      I2 => rom_addr(1),
      I3 => slv_reg5(13),
      I4 => rom_addr(0),
      I5 => slv_reg4(19),
      O => \rom_do_reg[13]_0\
    );
\rom_do[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => slv_reg4(3),
      I1 => slv_reg2(29),
      I2 => rom_addr(1),
      I3 => slv_reg2(13),
      I4 => rom_addr(0),
      O => \rom_do_reg[13]\
    );
\rom_do[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(30),
      I1 => rom_addr(1),
      I2 => slv_reg2(14),
      I3 => rom_addr(0),
      O => \rom_do_reg[14]\
    );
\rom_do[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(31),
      I1 => rom_addr(1),
      I2 => slv_reg2(15),
      I3 => rom_addr(0),
      O => \rom_do_reg[15]\
    );
\rom_do[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[1]_i_2_n_0\,
      I1 => rom_addr(3),
      I2 => \rom_do[1]_i_3_n_0\,
      I3 => rom_addr(2),
      I4 => \rom_do[1]_i_4_n_0\,
      O => D(1)
    );
\rom_do[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg6(21),
      I1 => rom_addr(0),
      I2 => slv_reg6(1),
      I3 => rom_addr(1),
      I4 => slv_reg6(11),
      I5 => rom_addr(2),
      O => \rom_do[1]_i_2_n_0\
    );
\rom_do[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => slv_reg3(1),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(1),
      O => \rom_do[1]_i_3_n_0\
    );
\rom_do[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(17),
      I1 => rom_addr(1),
      I2 => slv_reg2(1),
      I3 => rom_addr(0),
      O => \rom_do[1]_i_4_n_0\
    );
\rom_do[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[2]_i_2_n_0\,
      I1 => rom_addr(3),
      I2 => \rom_do[2]_i_3_n_0\,
      I3 => rom_addr(2),
      I4 => \rom_do[2]_i_4_n_0\,
      O => D(2)
    );
\rom_do[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg6(22),
      I1 => rom_addr(0),
      I2 => slv_reg6(2),
      I3 => rom_addr(1),
      I4 => slv_reg6(12),
      I5 => rom_addr(2),
      O => \rom_do[2]_i_2_n_0\
    );
\rom_do[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => slv_reg3(2),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(2),
      O => \rom_do[2]_i_3_n_0\
    );
\rom_do[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(18),
      I1 => rom_addr(1),
      I2 => slv_reg2(2),
      I3 => rom_addr(0),
      O => \rom_do[2]_i_4_n_0\
    );
\rom_do[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[3]_i_2_n_0\,
      I1 => rom_addr(3),
      I2 => \rom_do[3]_i_3_n_0\,
      I3 => rom_addr(2),
      I4 => \rom_do[3]_i_4_n_0\,
      O => D(3)
    );
\rom_do[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg6(23),
      I1 => rom_addr(0),
      I2 => slv_reg6(3),
      I3 => rom_addr(1),
      I4 => slv_reg6(13),
      I5 => rom_addr(2),
      O => \rom_do[3]_i_2_n_0\
    );
\rom_do[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => slv_reg3(3),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(3),
      O => \rom_do[3]_i_3_n_0\
    );
\rom_do[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(19),
      I1 => rom_addr(1),
      I2 => slv_reg2(3),
      I3 => rom_addr(0),
      O => \rom_do[3]_i_4_n_0\
    );
\rom_do[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => \rom_do[4]_i_2_n_0\,
      I2 => rom_addr(3),
      I3 => \rom_do[4]_i_3_n_0\,
      I4 => rom_addr(2),
      I5 => \rom_do[4]_i_4_n_0\,
      O => D(4)
    );
\rom_do[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(14),
      I1 => rom_addr(1),
      I2 => slv_reg6(4),
      I3 => rom_addr(0),
      I4 => slv_reg6(24),
      O => \rom_do[4]_i_2_n_0\
    );
\rom_do[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => slv_reg3(4),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(4),
      O => \rom_do[4]_i_3_n_0\
    );
\rom_do[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(20),
      I1 => rom_addr(1),
      I2 => slv_reg2(4),
      I3 => rom_addr(0),
      O => \rom_do[4]_i_4_n_0\
    );
\rom_do[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[5]_i_2_n_0\,
      I1 => rom_addr(3),
      I2 => \rom_do[5]_i_3_n_0\,
      I3 => rom_addr(2),
      I4 => \rom_do[5]_i_4_n_0\,
      O => D(5)
    );
\rom_do[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg6(25),
      I1 => rom_addr(0),
      I2 => slv_reg6(5),
      I3 => rom_addr(1),
      I4 => slv_reg6(15),
      I5 => rom_addr(2),
      O => \rom_do[5]_i_2_n_0\
    );
\rom_do[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => slv_reg3(5),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(5),
      O => \rom_do[5]_i_3_n_0\
    );
\rom_do[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(21),
      I1 => rom_addr(1),
      I2 => slv_reg2(5),
      I3 => rom_addr(0),
      O => \rom_do[5]_i_4_n_0\
    );
\rom_do[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[6]_i_2_n_0\,
      I1 => rom_addr(3),
      I2 => \rom_do[6]_i_3_n_0\,
      I3 => rom_addr(2),
      I4 => \rom_do[6]_i_4_n_0\,
      O => D(6)
    );
\rom_do[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg6(26),
      I1 => rom_addr(0),
      I2 => slv_reg6(6),
      I3 => rom_addr(1),
      I4 => slv_reg6(16),
      I5 => rom_addr(2),
      O => \rom_do[6]_i_2_n_0\
    );
\rom_do[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => slv_reg3(6),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(6),
      O => \rom_do[6]_i_3_n_0\
    );
\rom_do[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(22),
      I1 => rom_addr(1),
      I2 => slv_reg2(6),
      I3 => rom_addr(0),
      O => \rom_do[6]_i_4_n_0\
    );
\rom_do[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => \rom_do[7]_i_2_n_0\,
      I2 => rom_addr(3),
      I3 => \rom_do[7]_i_3_n_0\,
      I4 => rom_addr(2),
      I5 => \rom_do[7]_i_4_n_0\,
      O => D(7)
    );
\rom_do[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(17),
      I1 => rom_addr(1),
      I2 => slv_reg6(7),
      I3 => rom_addr(0),
      I4 => slv_reg6(27),
      O => \rom_do[7]_i_2_n_0\
    );
\rom_do[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => slv_reg3(7),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(7),
      O => \rom_do[7]_i_3_n_0\
    );
\rom_do[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(23),
      I1 => rom_addr(1),
      I2 => slv_reg2(7),
      I3 => rom_addr(0),
      O => \rom_do[7]_i_4_n_0\
    );
\rom_do[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => \rom_do[8]_i_2_n_0\,
      I2 => rom_addr(3),
      I3 => \rom_do[8]_i_3_n_0\,
      I4 => rom_addr(2),
      I5 => \rom_do[8]_i_4_n_0\,
      O => D(8)
    );
\rom_do[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(18),
      I2 => rom_addr(1),
      I3 => slv_reg6(8),
      I4 => rom_addr(0),
      I5 => slv_reg6(28),
      O => \rom_do[8]_i_2_n_0\
    );
\rom_do[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => slv_reg3(8),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(8),
      O => \rom_do[8]_i_3_n_0\
    );
\rom_do[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(24),
      I1 => rom_addr(1),
      I2 => slv_reg2(8),
      I3 => rom_addr(0),
      O => \rom_do[8]_i_4_n_0\
    );
\rom_do[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[9]_i_2_n_0\,
      I1 => rom_addr(3),
      I2 => \rom_do[9]_i_3_n_0\,
      I3 => rom_addr(2),
      I4 => \rom_do[9]_i_4_n_0\,
      O => D(9)
    );
\rom_do[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => slv_reg6(29),
      I1 => rom_addr(0),
      I2 => slv_reg6(9),
      I3 => rom_addr(1),
      I4 => slv_reg6(19),
      I5 => rom_addr(2),
      O => \rom_do[9]_i_2_n_0\
    );
\rom_do[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => slv_reg3(9),
      I2 => rom_addr(1),
      I3 => rom_addr(0),
      I4 => slv_reg5(9),
      O => \rom_do[9]_i_3_n_0\
    );
\rom_do[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30BB"
    )
        port map (
      I0 => slv_reg2(25),
      I1 => rom_addr(1),
      I2 => slv_reg2(9),
      I3 => rom_addr(0),
      O => \rom_do[9]_i_4_n_0\
    );
sen_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out\(0),
      I1 => \^sen_reg_reg\(0),
      O => sen_reg_reg_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_lite_wready\,
      I1 => s_axi_lite_awvalid,
      I2 => s_axi_lite_wvalid,
      I3 => \^s_axi_lite_awready\,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(7),
      D => s_axi_lite_wdata(0),
      Q => \^sen_reg_reg\(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(15),
      D => s_axi_lite_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(15),
      D => s_axi_lite_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(15),
      D => s_axi_lite_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(15),
      D => s_axi_lite_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(15),
      D => s_axi_lite_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(15),
      D => s_axi_lite_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(23),
      D => s_axi_lite_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(23),
      D => s_axi_lite_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(23),
      D => s_axi_lite_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(23),
      D => s_axi_lite_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(7),
      D => s_axi_lite_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(23),
      D => s_axi_lite_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(23),
      D => s_axi_lite_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(23),
      D => s_axi_lite_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(23),
      D => s_axi_lite_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(31),
      D => s_axi_lite_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(31),
      D => s_axi_lite_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(31),
      D => s_axi_lite_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(31),
      D => s_axi_lite_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(31),
      D => s_axi_lite_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(31),
      D => s_axi_lite_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(7),
      D => s_axi_lite_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(31),
      D => s_axi_lite_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(31),
      D => s_axi_lite_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(7),
      D => s_axi_lite_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(7),
      D => s_axi_lite_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(7),
      D => s_axi_lite_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(7),
      D => s_axi_lite_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(7),
      D => s_axi_lite_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(15),
      D => s_axi_lite_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => p_1_in(15),
      D => s_axi_lite_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => slv_reg2(0),
      R => \^sr\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => slv_reg2(10),
      R => \^sr\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => slv_reg2(11),
      R => \^sr\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => slv_reg2(12),
      R => \^sr\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => slv_reg2(13),
      R => \^sr\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => slv_reg2(14),
      R => \^sr\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => slv_reg2(15),
      R => \^sr\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => slv_reg2(16),
      R => \^sr\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => slv_reg2(17),
      R => \^sr\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => slv_reg2(18),
      R => \^sr\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => slv_reg2(19),
      R => \^sr\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => slv_reg2(1),
      R => \^sr\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => slv_reg2(20),
      R => \^sr\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => slv_reg2(21),
      R => \^sr\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => slv_reg2(22),
      R => \^sr\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => slv_reg2(23),
      R => \^sr\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => slv_reg2(24),
      R => \^sr\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => slv_reg2(25),
      R => \^sr\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => slv_reg2(26),
      R => \^sr\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => slv_reg2(27),
      R => \^sr\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => slv_reg2(28),
      R => \^sr\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => slv_reg2(29),
      R => \^sr\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => slv_reg2(2),
      R => \^sr\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => slv_reg2(30),
      R => \^sr\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => slv_reg2(31),
      R => \^sr\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => slv_reg2(3),
      R => \^sr\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => slv_reg2(4),
      R => \^sr\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => slv_reg2(5),
      R => \^sr\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => slv_reg2(6),
      R => \^sr\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => slv_reg2(7),
      R => \^sr\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => slv_reg2(8),
      R => \^sr\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => slv_reg2(9),
      R => \^sr\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => slv_reg3(0),
      R => \^sr\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => slv_reg3(10),
      R => \^sr\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => slv_reg3(11),
      R => \^sr\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => slv_reg3(12),
      R => \^sr\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => slv_reg3(13),
      R => \^sr\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => slv_reg3(16),
      R => \^sr\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => slv_reg3(17),
      R => \^sr\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => slv_reg3(18),
      R => \^sr\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => slv_reg3(19),
      R => \^sr\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => slv_reg3(1),
      R => \^sr\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => slv_reg3(20),
      R => \^sr\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => slv_reg3(21),
      R => \^sr\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => slv_reg3(22),
      R => \^sr\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => slv_reg3(23),
      R => \^sr\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => slv_reg3(24),
      R => \^sr\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => slv_reg3(25),
      R => \^sr\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => slv_reg3(26),
      R => \^sr\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => slv_reg3(27),
      R => \^sr\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => slv_reg3(28),
      R => \^sr\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => slv_reg3(29),
      R => \^sr\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => slv_reg3(2),
      R => \^sr\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => slv_reg3(3),
      R => \^sr\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => slv_reg3(4),
      R => \^sr\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => slv_reg3(5),
      R => \^sr\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => slv_reg3(6),
      R => \^sr\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => slv_reg3(7),
      R => \^sr\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => slv_reg3(8),
      R => \^sr\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => slv_reg3(9),
      R => \^sr\(0)
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => slv_reg4(0),
      R => \^sr\(0)
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => slv_reg4(10),
      R => \^sr\(0)
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => slv_reg4(11),
      R => \^sr\(0)
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => slv_reg4(12),
      R => \^sr\(0)
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => slv_reg4(13),
      R => \^sr\(0)
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => slv_reg4(14),
      R => \^sr\(0)
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => slv_reg4(15),
      R => \^sr\(0)
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => slv_reg4(16),
      R => \^sr\(0)
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => slv_reg4(17),
      R => \^sr\(0)
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => slv_reg4(18),
      R => \^sr\(0)
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => slv_reg4(19),
      R => \^sr\(0)
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => slv_reg4(1),
      R => \^sr\(0)
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => slv_reg4(20),
      R => \^sr\(0)
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => slv_reg4(21),
      R => \^sr\(0)
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => slv_reg4(22),
      R => \^sr\(0)
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => slv_reg4(23),
      R => \^sr\(0)
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => slv_reg4(24),
      R => \^sr\(0)
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => slv_reg4(25),
      R => \^sr\(0)
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => slv_reg4(26),
      R => \^sr\(0)
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => slv_reg4(27),
      R => \^sr\(0)
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => slv_reg4(28),
      R => \^sr\(0)
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => slv_reg4(29),
      R => \^sr\(0)
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => slv_reg4(2),
      R => \^sr\(0)
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => slv_reg4(30),
      R => \^sr\(0)
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => slv_reg4(31),
      R => \^sr\(0)
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => slv_reg4(3),
      R => \^sr\(0)
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => slv_reg4(4),
      R => \^sr\(0)
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => slv_reg4(5),
      R => \^sr\(0)
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => slv_reg4(6),
      R => \^sr\(0)
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => slv_reg4(7),
      R => \^sr\(0)
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => slv_reg4(8),
      R => \^sr\(0)
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => slv_reg4(9),
      R => \^sr\(0)
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(1),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(3),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(0),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => slv_reg5(0),
      R => \^sr\(0)
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => slv_reg5(10),
      R => \^sr\(0)
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => slv_reg5(11),
      R => \^sr\(0)
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => slv_reg5(12),
      R => \^sr\(0)
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => slv_reg5(13),
      R => \^sr\(0)
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => slv_reg5(14),
      R => \^sr\(0)
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => slv_reg5(15),
      R => \^sr\(0)
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => slv_reg5(16),
      R => \^sr\(0)
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => slv_reg5(17),
      R => \^sr\(0)
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => slv_reg5(18),
      R => \^sr\(0)
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => slv_reg5(19),
      R => \^sr\(0)
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => slv_reg5(1),
      R => \^sr\(0)
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => slv_reg5(20),
      R => \^sr\(0)
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => slv_reg5(21),
      R => \^sr\(0)
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => slv_reg5(22),
      R => \^sr\(0)
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => slv_reg5(23),
      R => \^sr\(0)
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => slv_reg5(24),
      R => \^sr\(0)
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => slv_reg5(25),
      R => \^sr\(0)
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => slv_reg5(26),
      R => \^sr\(0)
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => slv_reg5(27),
      R => \^sr\(0)
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => slv_reg5(28),
      R => \^sr\(0)
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => slv_reg5(29),
      R => \^sr\(0)
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => slv_reg5(2),
      R => \^sr\(0)
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => slv_reg5(30),
      R => \^sr\(0)
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => slv_reg5(31),
      R => \^sr\(0)
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => slv_reg5(3),
      R => \^sr\(0)
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => slv_reg5(4),
      R => \^sr\(0)
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => slv_reg5(5),
      R => \^sr\(0)
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => slv_reg5(6),
      R => \^sr\(0)
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => slv_reg5(7),
      R => \^sr\(0)
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => slv_reg5(8),
      R => \^sr\(0)
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => slv_reg5(9),
      R => \^sr\(0)
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(1),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(0),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => slv_reg6(0),
      R => \^sr\(0)
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => slv_reg6(10),
      R => \^sr\(0)
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => slv_reg6(11),
      R => \^sr\(0)
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => slv_reg6(12),
      R => \^sr\(0)
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => slv_reg6(13),
      R => \^sr\(0)
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => slv_reg6(14),
      R => \^sr\(0)
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => slv_reg6(15),
      R => \^sr\(0)
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => slv_reg6(16),
      R => \^sr\(0)
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => slv_reg6(17),
      R => \^sr\(0)
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => slv_reg6(18),
      R => \^sr\(0)
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => slv_reg6(19),
      R => \^sr\(0)
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => slv_reg6(1),
      R => \^sr\(0)
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => slv_reg6(20),
      R => \^sr\(0)
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => slv_reg6(21),
      R => \^sr\(0)
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => slv_reg6(22),
      R => \^sr\(0)
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => slv_reg6(23),
      R => \^sr\(0)
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => slv_reg6(24),
      R => \^sr\(0)
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => slv_reg6(25),
      R => \^sr\(0)
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => slv_reg6(26),
      R => \^sr\(0)
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => slv_reg6(27),
      R => \^sr\(0)
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => slv_reg6(28),
      R => \^sr\(0)
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => slv_reg6(29),
      R => \^sr\(0)
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => slv_reg6(2),
      R => \^sr\(0)
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => \^axi_rdata_reg[30]_0\(0),
      R => \^sr\(0)
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => slv_reg6(31),
      R => \^sr\(0)
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => slv_reg6(3),
      R => \^sr\(0)
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => slv_reg6(4),
      R => \^sr\(0)
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => slv_reg6(5),
      R => \^sr\(0)
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => slv_reg6(6),
      R => \^sr\(0)
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => slv_reg6(7),
      R => \^sr\(0)
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => slv_reg6(8),
      R => \^sr\(0)
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => slv_reg6(9),
      R => \^sr\(0)
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(4),
      I5 => s_axi_lite_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_lite_wdata(0),
      Q => slv_reg7(0),
      R => \^sr\(0)
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_lite_wdata(10),
      Q => slv_reg7(10),
      R => \^sr\(0)
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_lite_wdata(11),
      Q => slv_reg7(11),
      R => \^sr\(0)
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_lite_wdata(12),
      Q => slv_reg7(12),
      R => \^sr\(0)
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_lite_wdata(13),
      Q => slv_reg7(13),
      R => \^sr\(0)
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_lite_wdata(14),
      Q => slv_reg7(14),
      R => \^sr\(0)
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_lite_wdata(15),
      Q => slv_reg7(15),
      R => \^sr\(0)
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_lite_wdata(16),
      Q => slv_reg7(16),
      R => \^sr\(0)
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_lite_wdata(17),
      Q => slv_reg7(17),
      R => \^sr\(0)
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_lite_wdata(18),
      Q => slv_reg7(18),
      R => \^sr\(0)
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_lite_wdata(19),
      Q => slv_reg7(19),
      R => \^sr\(0)
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_lite_wdata(1),
      Q => \^axi_rdata_reg[25]_0\(0),
      R => \^sr\(0)
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_lite_wdata(20),
      Q => slv_reg7(20),
      R => \^sr\(0)
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_lite_wdata(21),
      Q => \^axi_rdata_reg[25]_0\(5),
      R => \^sr\(0)
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_lite_wdata(22),
      Q => slv_reg7(22),
      R => \^sr\(0)
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s_axi_lite_wdata(23),
      Q => slv_reg7(23),
      R => \^sr\(0)
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_lite_wdata(24),
      Q => slv_reg7(24),
      R => \^sr\(0)
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_lite_wdata(25),
      Q => \^axi_rdata_reg[25]_0\(6),
      R => \^sr\(0)
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_lite_wdata(26),
      Q => slv_reg7(26),
      R => \^sr\(0)
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_lite_wdata(27),
      Q => slv_reg7(27),
      R => \^sr\(0)
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_lite_wdata(28),
      Q => slv_reg7(28),
      R => \^sr\(0)
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_lite_wdata(29),
      Q => slv_reg7(29),
      R => \^sr\(0)
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_lite_wdata(2),
      Q => \^axi_rdata_reg[25]_0\(1),
      R => \^sr\(0)
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_lite_wdata(30),
      Q => slv_reg7(30),
      R => \^sr\(0)
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s_axi_lite_wdata(31),
      Q => slv_reg7(31),
      R => \^sr\(0)
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_lite_wdata(3),
      Q => \^axi_rdata_reg[25]_0\(2),
      R => \^sr\(0)
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_lite_wdata(4),
      Q => slv_reg7(4),
      R => \^sr\(0)
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_lite_wdata(5),
      Q => slv_reg7(5),
      R => \^sr\(0)
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_lite_wdata(6),
      Q => \^axi_rdata_reg[25]_0\(3),
      R => \^sr\(0)
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s_axi_lite_wdata(7),
      Q => \^axi_rdata_reg[25]_0\(4),
      R => \^sr\(0)
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_lite_wdata(8),
      Q => slv_reg7(8),
      R => \^sr\(0)
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s_axi_lite_wdata(9),
      Q => slv_reg7(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_video_dynclk_0_mmcme2_drp is
  port (
    I : out STD_LOGIC;
    LOCKED_O : out STD_LOGIC;
    SRDY : out STD_LOGIC;
    rom_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    REF_CLK_I : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \slv_reg3_reg[26]\ : in STD_LOGIC;
    \slv_reg4_reg[0]\ : in STD_LOGIC;
    \slv_reg3_reg[29]\ : in STD_LOGIC;
    \slv_reg4_reg[3]\ : in STD_LOGIC;
    \slv_reg2_reg[30]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[31]\ : in STD_LOGIC;
    \slv_reg7_reg[25]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \slv_reg6_reg[30]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sen_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_video_dynclk_0_mmcme2_drp : entity is "mmcme2_drp";
end system_video_dynclk_0_mmcme2_drp;

architecture STRUCTURE of system_video_dynclk_0_mmcme2_drp is
  signal DADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \DADDR[0]_i_1_n_0\ : STD_LOGIC;
  signal \DADDR[1]_i_1_n_0\ : STD_LOGIC;
  signal \DADDR[2]_i_1_n_0\ : STD_LOGIC;
  signal \DADDR[3]_i_1_n_0\ : STD_LOGIC;
  signal \DADDR[4]_i_1_n_0\ : STD_LOGIC;
  signal \DADDR[5]_i_1_n_0\ : STD_LOGIC;
  signal \DADDR[6]_i_2_n_0\ : STD_LOGIC;
  signal DEN : STD_LOGIC;
  signal DI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \DI[0]_i_1_n_0\ : STD_LOGIC;
  signal \DI[10]_i_1_n_0\ : STD_LOGIC;
  signal \DI[11]_i_1_n_0\ : STD_LOGIC;
  signal \DI[12]_i_1_n_0\ : STD_LOGIC;
  signal \DI[13]_i_1_n_0\ : STD_LOGIC;
  signal \DI[14]_i_1_n_0\ : STD_LOGIC;
  signal \DI[15]_i_1_n_0\ : STD_LOGIC;
  signal \DI[15]_i_3_n_0\ : STD_LOGIC;
  signal \DI[1]_i_1_n_0\ : STD_LOGIC;
  signal \DI[2]_i_1_n_0\ : STD_LOGIC;
  signal \DI[3]_i_1_n_0\ : STD_LOGIC;
  signal \DI[4]_i_1_n_0\ : STD_LOGIC;
  signal \DI[5]_i_1_n_0\ : STD_LOGIC;
  signal \DI[6]_i_1_n_0\ : STD_LOGIC;
  signal \DI[7]_i_1_n_0\ : STD_LOGIC;
  signal \DI[8]_i_1_n_0\ : STD_LOGIC;
  signal \DI[9]_i_1_n_0\ : STD_LOGIC;
  signal DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal DRDY : STD_LOGIC;
  signal DWE : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \^locked_o\ : STD_LOGIC;
  signal RST_MMCM : STD_LOGIC;
  signal RST_MMCM_i_1_n_0 : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal mmcm_fbclk_out : STD_LOGIC;
  signal next_daddr : STD_LOGIC;
  signal next_den : STD_LOGIC;
  signal next_di : STD_LOGIC;
  signal next_dwe : STD_LOGIC;
  signal next_rom_addr : STD_LOGIC;
  signal next_srdy : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rom : STD_LOGIC_VECTOR ( 38 downto 10 );
  signal \^rom_addr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rom_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[10]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[13]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[14]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[14]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[15]_i_2_n_0\ : STD_LOGIC;
  signal \rom_do[15]_i_3_n_0\ : STD_LOGIC;
  signal \rom_do[24]_i_1_n_0\ : STD_LOGIC;
  signal \rom_do[35]_i_1_n_0\ : STD_LOGIC;
  signal \rom_do[37]_i_1_n_0\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[0]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[10]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[11]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[12]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[13]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[14]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[15]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[1]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[23]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[24]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[25]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[27]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[28]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[29]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[2]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[30]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[31]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[3]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[4]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[5]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[6]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[7]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[8]\ : STD_LOGIC;
  signal \rom_do_reg_n_0_[9]\ : STD_LOGIC;
  signal state_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \state_count[3]_i_2_n_0\ : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_current_state_reg[3]\ : label is "yes";
  attribute box_type : string;
  attribute box_type of mmcm_adv_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rom_do[23]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rom_do[24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rom_do[25]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rom_do[27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rom_do[28]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rom_do[29]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rom_do[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rom_do[31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rom_do[32]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rom_do[33]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rom_do[34]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rom_do[36]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rom_do[37]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rom_do[38]_i_1\ : label is "soft_lutpair5";
begin
  LOCKED_O <= \^locked_o\;
  rom_addr(3 downto 0) <= \^rom_addr\(3 downto 0);
\DADDR[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(0),
      I1 => current_state(1),
      O => \DADDR[0]_i_1_n_0\
    );
\DADDR[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => current_state(1),
      O => \DADDR[1]_i_1_n_0\
    );
\DADDR[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => current_state(1),
      O => \DADDR[2]_i_1_n_0\
    );
\DADDR[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => current_state(1),
      O => \DADDR[3]_i_1_n_0\
    );
\DADDR[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => current_state(1),
      O => \DADDR[4]_i_1_n_0\
    );
\DADDR[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(5),
      I1 => current_state(1),
      O => \DADDR[5]_i_1_n_0\
    );
\DADDR[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0041"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      O => next_daddr
    );
\DADDR[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in(6),
      I1 => current_state(1),
      O => \DADDR[6]_i_2_n_0\
    );
\DADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_daddr,
      D => \DADDR[0]_i_1_n_0\,
      Q => DADDR(0),
      R => '0'
    );
\DADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_daddr,
      D => \DADDR[1]_i_1_n_0\,
      Q => DADDR(1),
      R => '0'
    );
\DADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_daddr,
      D => \DADDR[2]_i_1_n_0\,
      Q => DADDR(2),
      R => '0'
    );
\DADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_daddr,
      D => \DADDR[3]_i_1_n_0\,
      Q => DADDR(3),
      R => '0'
    );
\DADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_daddr,
      D => \DADDR[4]_i_1_n_0\,
      Q => DADDR(4),
      R => '0'
    );
\DADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_daddr,
      D => \DADDR[5]_i_1_n_0\,
      Q => DADDR(5),
      R => '0'
    );
\DADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_daddr,
      D => \DADDR[6]_i_2_n_0\,
      Q => DADDR(6),
      R => '0'
    );
DEN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      O => next_den
    );
DEN_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => next_den,
      Q => DEN,
      R => '0'
    );
\DI[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[0]\,
      I1 => DI(0),
      I2 => \rom_do_reg_n_0_[25]\,
      I3 => DO(0),
      I4 => current_state(1),
      O => \DI[0]_i_1_n_0\
    );
\DI[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[10]\,
      I1 => DI(10),
      I2 => \rom_do_reg_n_0_[29]\,
      I3 => DO(10),
      I4 => current_state(1),
      O => \DI[10]_i_1_n_0\
    );
\DI[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[11]\,
      I1 => DI(11),
      I2 => \rom_do_reg_n_0_[27]\,
      I3 => DO(11),
      I4 => current_state(1),
      O => \DI[11]_i_1_n_0\
    );
\DI[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[12]\,
      I1 => DI(12),
      I2 => \rom_do_reg_n_0_[28]\,
      I3 => DO(12),
      I4 => current_state(1),
      O => \DI[12]_i_1_n_0\
    );
\DI[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[13]\,
      I1 => DI(13),
      I2 => \rom_do_reg_n_0_[29]\,
      I3 => DO(13),
      I4 => current_state(1),
      O => \DI[13]_i_1_n_0\
    );
\DI[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[14]\,
      I1 => DI(14),
      I2 => \rom_do_reg_n_0_[30]\,
      I3 => DO(14),
      I4 => current_state(1),
      O => \DI[14]_i_1_n_0\
    );
\DI[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(3),
      I3 => current_state(0),
      O => \DI[15]_i_1_n_0\
    );
\DI[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1021"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(3),
      I2 => current_state(2),
      I3 => current_state(1),
      O => next_di
    );
\DI[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[15]\,
      I1 => DI(15),
      I2 => \rom_do_reg_n_0_[31]\,
      I3 => DO(15),
      I4 => current_state(1),
      O => \DI[15]_i_3_n_0\
    );
\DI[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[1]\,
      I1 => DI(1),
      I2 => \rom_do_reg_n_0_[25]\,
      I3 => DO(1),
      I4 => current_state(1),
      O => \DI[1]_i_1_n_0\
    );
\DI[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[2]\,
      I1 => DI(2),
      I2 => \rom_do_reg_n_0_[25]\,
      I3 => DO(2),
      I4 => current_state(1),
      O => \DI[2]_i_1_n_0\
    );
\DI[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[3]\,
      I1 => DI(3),
      I2 => \rom_do_reg_n_0_[25]\,
      I3 => DO(3),
      I4 => current_state(1),
      O => \DI[3]_i_1_n_0\
    );
\DI[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[4]\,
      I1 => DI(4),
      I2 => \rom_do_reg_n_0_[23]\,
      I3 => DO(4),
      I4 => current_state(1),
      O => \DI[4]_i_1_n_0\
    );
\DI[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[5]\,
      I1 => DI(5),
      I2 => \rom_do_reg_n_0_[25]\,
      I3 => DO(5),
      I4 => current_state(1),
      O => \DI[5]_i_1_n_0\
    );
\DI[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[6]\,
      I1 => DI(6),
      I2 => \rom_do_reg_n_0_[25]\,
      I3 => DO(6),
      I4 => current_state(1),
      O => \DI[6]_i_1_n_0\
    );
\DI[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[7]\,
      I1 => DI(7),
      I2 => \rom_do_reg_n_0_[23]\,
      I3 => DO(7),
      I4 => current_state(1),
      O => \DI[7]_i_1_n_0\
    );
\DI[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[8]\,
      I1 => DI(8),
      I2 => \rom_do_reg_n_0_[24]\,
      I3 => DO(8),
      I4 => current_state(1),
      O => \DI[8]_i_1_n_0\
    );
\DI[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEF000"
    )
        port map (
      I0 => \rom_do_reg_n_0_[9]\,
      I1 => DI(9),
      I2 => \rom_do_reg_n_0_[25]\,
      I3 => DO(9),
      I4 => current_state(1),
      O => \DI[9]_i_1_n_0\
    );
\DI_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[0]_i_1_n_0\,
      Q => DI(0),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[10]_i_1_n_0\,
      Q => DI(10),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[11]_i_1_n_0\,
      Q => DI(11),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[12]_i_1_n_0\,
      Q => DI(12),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[13]_i_1_n_0\,
      Q => DI(13),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[14]_i_1_n_0\,
      Q => DI(14),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[15]_i_3_n_0\,
      Q => DI(15),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[1]_i_1_n_0\,
      Q => DI(1),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[2]_i_1_n_0\,
      Q => DI(2),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[3]_i_1_n_0\,
      Q => DI(3),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[4]_i_1_n_0\,
      Q => DI(4),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[5]_i_1_n_0\,
      Q => DI(5),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[6]_i_1_n_0\,
      Q => DI(6),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[7]_i_1_n_0\,
      Q => DI(7),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[8]_i_1_n_0\,
      Q => DI(8),
      R => \DI[15]_i_1_n_0\
    );
\DI_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_di,
      D => \DI[9]_i_1_n_0\,
      Q => DI(9),
      R => \DI[15]_i_1_n_0\
    );
DWE_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(0),
      I3 => current_state(1),
      O => next_dwe
    );
DWE_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => next_dwe,
      Q => DWE,
      R => '0'
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000EFFFF000E0000"
    )
        port map (
      I0 => current_state(2),
      I1 => sen_reg,
      I2 => current_state(3),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => \FSM_sequential_current_state[0]_i_2_n_0\,
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03370007"
    )
        port map (
      I0 => \^locked_o\,
      I1 => current_state(0),
      I2 => current_state(2),
      I3 => current_state(3),
      I4 => DRDY,
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005A4A00055A4A"
    )
        port map (
      I0 => current_state(1),
      I1 => \^locked_o\,
      I2 => current_state(0),
      I3 => current_state(2),
      I4 => current_state(3),
      I5 => \FSM_sequential_current_state[1]_i_2_n_0\,
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555557"
    )
        port map (
      I0 => DRDY,
      I1 => state_count(3),
      I2 => state_count(2),
      I3 => state_count(0),
      I4 => state_count(1),
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(3),
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20200004"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => DRDY,
      I4 => current_state(0),
      O => \FSM_sequential_current_state[3]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => current_state(0),
      R => SR(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => current_state(1),
      R => SR(0)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \FSM_sequential_current_state[2]_i_1_n_0\,
      Q => current_state(2),
      R => SR(0)
    );
\FSM_sequential_current_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \FSM_sequential_current_state[3]_i_1_n_0\,
      Q => current_state(3),
      R => SR(0)
    );
RST_MMCM_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0009"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => current_state(3),
      I3 => current_state(2),
      I4 => RST_MMCM,
      O => RST_MMCM_i_1_n_0
    );
RST_MMCM_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => RST_MMCM_i_1_n_0,
      Q => RST_MMCM,
      R => '0'
    );
SRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => \^locked_o\,
      I3 => current_state(1),
      I4 => current_state(3),
      O => next_srdy
    );
SRDY_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => next_srdy,
      Q => SRDY,
      R => '0'
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 2.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 1,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => mmcm_fbclk_out,
      CLKFBOUT => mmcm_fbclk_out,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => REF_CLK_I,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => I,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => DADDR(6 downto 0),
      DCLK => s_axi_lite_aclk,
      DEN => DEN,
      DI(15 downto 0) => DI(15 downto 0),
      DO(15 downto 0) => DO(15 downto 0),
      DRDY => DRDY,
      DWE => DWE,
      LOCKED => \^locked_o\,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => RST_MMCM
    );
\rom_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(2),
      I1 => \^rom_addr\(0),
      O => \rom_addr[0]_i_1_n_0\
    );
\rom_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^rom_addr\(1),
      I1 => \^rom_addr\(0),
      I2 => current_state(2),
      O => \rom_addr[1]_i_1_n_0\
    );
\rom_addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \^rom_addr\(2),
      I1 => \^rom_addr\(0),
      I2 => \^rom_addr\(1),
      I3 => current_state(2),
      O => \rom_addr[2]_i_1_n_0\
    );
\rom_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10111001"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(3),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => sen_reg,
      O => next_rom_addr
    );
\rom_addr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(2),
      I2 => \^rom_addr\(1),
      I3 => \^rom_addr\(0),
      I4 => current_state(2),
      O => \rom_addr[3]_i_2_n_0\
    );
\rom_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_rom_addr,
      D => \rom_addr[0]_i_1_n_0\,
      Q => \^rom_addr\(0),
      R => '0'
    );
\rom_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_rom_addr,
      D => \rom_addr[1]_i_1_n_0\,
      Q => \^rom_addr\(1),
      R => '0'
    );
\rom_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_rom_addr,
      D => \rom_addr[2]_i_1_n_0\,
      Q => \^rom_addr\(2),
      R => '0'
    );
\rom_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => next_rom_addr,
      D => \rom_addr[3]_i_2_n_0\,
      Q => \^rom_addr\(3),
      R => '0'
    );
\rom_do[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[10]_i_2_n_0\,
      I1 => \^rom_addr\(3),
      I2 => \slv_reg3_reg[26]\,
      I3 => \^rom_addr\(2),
      I4 => \slv_reg4_reg[0]\,
      O => rom(10)
    );
\rom_do[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003808"
    )
        port map (
      I0 => \slv_reg6_reg[30]\(0),
      I1 => \^rom_addr\(0),
      I2 => \^rom_addr\(1),
      I3 => \slv_reg7_reg[25]\(2),
      I4 => \^rom_addr\(2),
      O => \rom_do[10]_i_2_n_0\
    );
\rom_do[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[13]_i_2_n_0\,
      I1 => \^rom_addr\(3),
      I2 => \slv_reg3_reg[29]\,
      I3 => \^rom_addr\(2),
      I4 => \slv_reg4_reg[3]\,
      O => rom(13)
    );
\rom_do[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003808"
    )
        port map (
      I0 => \slv_reg7_reg[25]\(0),
      I1 => \^rom_addr\(0),
      I2 => \^rom_addr\(1),
      I3 => \slv_reg7_reg[25]\(3),
      I4 => \^rom_addr\(2),
      O => \rom_do[13]_i_2_n_0\
    );
\rom_do[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[14]_i_2_n_0\,
      I1 => \^rom_addr\(3),
      I2 => \rom_do[14]_i_3_n_0\,
      I3 => \^rom_addr\(2),
      I4 => \slv_reg2_reg[30]\,
      O => rom(14)
    );
\rom_do[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003808"
    )
        port map (
      I0 => \slv_reg7_reg[25]\(1),
      I1 => \^rom_addr\(0),
      I2 => \^rom_addr\(1),
      I3 => \slv_reg7_reg[25]\(4),
      I4 => \^rom_addr\(2),
      O => \rom_do[14]_i_2_n_0\
    );
\rom_do[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^rom_addr\(1),
      I1 => Q(0),
      I2 => \^rom_addr\(0),
      I3 => Q(2),
      O => \rom_do[14]_i_3_n_0\
    );
\rom_do[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rom_do[15]_i_2_n_0\,
      I1 => \^rom_addr\(3),
      I2 => \rom_do[15]_i_3_n_0\,
      I3 => \^rom_addr\(2),
      I4 => \slv_reg2_reg[31]\,
      O => rom(15)
    );
\rom_do[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \slv_reg7_reg[25]\(5),
      I1 => \^rom_addr\(2),
      I2 => \^rom_addr\(1),
      I3 => \slv_reg7_reg[25]\(6),
      I4 => \^rom_addr\(0),
      O => \rom_do[15]_i_2_n_0\
    );
\rom_do[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^rom_addr\(1),
      I1 => Q(1),
      I2 => \^rom_addr\(0),
      I3 => Q(3),
      O => \rom_do[15]_i_3_n_0\
    );
\rom_do[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3004"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(2),
      I2 => \^rom_addr\(0),
      I3 => \^rom_addr\(1),
      O => rom(23)
    );
\rom_do[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0018"
    )
        port map (
      I0 => \^rom_addr\(1),
      I1 => \^rom_addr\(0),
      I2 => \^rom_addr\(2),
      I3 => \^rom_addr\(3),
      O => \rom_do[24]_i_1_n_0\
    );
\rom_do[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88C"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(2),
      I2 => \^rom_addr\(0),
      I3 => \^rom_addr\(1),
      O => rom(25)
    );
\rom_do[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(2),
      I2 => \^rom_addr\(1),
      I3 => \^rom_addr\(0),
      O => rom(27)
    );
\rom_do[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0412"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(2),
      I2 => \^rom_addr\(0),
      I3 => \^rom_addr\(1),
      O => rom(28)
    );
\rom_do[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA82"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(1),
      I2 => \^rom_addr\(0),
      I3 => \^rom_addr\(2),
      O => rom(29)
    );
\rom_do[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8CE"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(2),
      I2 => \^rom_addr\(0),
      I3 => \^rom_addr\(1),
      O => rom(30)
    );
\rom_do[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"475A"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(0),
      I2 => \^rom_addr\(2),
      I3 => \^rom_addr\(1),
      O => rom(31)
    );
\rom_do[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E5B8"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(0),
      I2 => \^rom_addr\(2),
      I3 => \^rom_addr\(1),
      O => rom(32)
    );
\rom_do[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BACC"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(2),
      I2 => \^rom_addr\(0),
      I3 => \^rom_addr\(1),
      O => rom(33)
    );
\rom_do[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCC8"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(2),
      I2 => \^rom_addr\(0),
      I3 => \^rom_addr\(1),
      O => rom(34)
    );
\rom_do[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF15"
    )
        port map (
      I0 => \^rom_addr\(2),
      I1 => \^rom_addr\(1),
      I2 => \^rom_addr\(0),
      I3 => \^rom_addr\(3),
      O => \rom_do[35]_i_1_n_0\
    );
\rom_do[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F70"
    )
        port map (
      I0 => \^rom_addr\(0),
      I1 => \^rom_addr\(1),
      I2 => \^rom_addr\(3),
      I3 => \^rom_addr\(2),
      O => rom(36)
    );
\rom_do[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^rom_addr\(2),
      I1 => \^rom_addr\(1),
      I2 => \^rom_addr\(0),
      I3 => \^rom_addr\(3),
      O => \rom_do[37]_i_1_n_0\
    );
\rom_do[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => \^rom_addr\(3),
      I1 => \^rom_addr\(0),
      I2 => \^rom_addr\(1),
      I3 => \^rom_addr\(2),
      O => rom(38)
    );
\rom_do_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(0),
      Q => \rom_do_reg_n_0_[0]\,
      R => '0'
    );
\rom_do_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(10),
      Q => \rom_do_reg_n_0_[10]\,
      R => '0'
    );
\rom_do_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(10),
      Q => \rom_do_reg_n_0_[11]\,
      R => '0'
    );
\rom_do_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(11),
      Q => \rom_do_reg_n_0_[12]\,
      R => '0'
    );
\rom_do_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(13),
      Q => \rom_do_reg_n_0_[13]\,
      R => '0'
    );
\rom_do_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(14),
      Q => \rom_do_reg_n_0_[14]\,
      R => '0'
    );
\rom_do_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(15),
      Q => \rom_do_reg_n_0_[15]\,
      R => '0'
    );
\rom_do_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(1),
      Q => \rom_do_reg_n_0_[1]\,
      R => '0'
    );
\rom_do_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(23),
      Q => \rom_do_reg_n_0_[23]\,
      R => '0'
    );
\rom_do_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \rom_do[24]_i_1_n_0\,
      Q => \rom_do_reg_n_0_[24]\,
      R => '0'
    );
\rom_do_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(25),
      Q => \rom_do_reg_n_0_[25]\,
      R => '0'
    );
\rom_do_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(27),
      Q => \rom_do_reg_n_0_[27]\,
      R => '0'
    );
\rom_do_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(28),
      Q => \rom_do_reg_n_0_[28]\,
      R => '0'
    );
\rom_do_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(29),
      Q => \rom_do_reg_n_0_[29]\,
      R => '0'
    );
\rom_do_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(2),
      Q => \rom_do_reg_n_0_[2]\,
      R => '0'
    );
\rom_do_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(30),
      Q => \rom_do_reg_n_0_[30]\,
      R => '0'
    );
\rom_do_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(31),
      Q => \rom_do_reg_n_0_[31]\,
      R => '0'
    );
\rom_do_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(32),
      Q => p_0_in(0),
      R => '0'
    );
\rom_do_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(33),
      Q => p_0_in(1),
      R => '0'
    );
\rom_do_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(34),
      Q => p_0_in(2),
      R => '0'
    );
\rom_do_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \rom_do[35]_i_1_n_0\,
      Q => p_0_in(3),
      R => '0'
    );
\rom_do_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(36),
      Q => p_0_in(4),
      R => '0'
    );
\rom_do_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \rom_do[37]_i_1_n_0\,
      Q => p_0_in(5),
      R => '0'
    );
\rom_do_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rom(38),
      Q => p_0_in(6),
      R => '0'
    );
\rom_do_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(3),
      Q => \rom_do_reg_n_0_[3]\,
      R => '0'
    );
\rom_do_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(4),
      Q => \rom_do_reg_n_0_[4]\,
      R => '0'
    );
\rom_do_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(5),
      Q => \rom_do_reg_n_0_[5]\,
      R => '0'
    );
\rom_do_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(6),
      Q => \rom_do_reg_n_0_[6]\,
      R => '0'
    );
\rom_do_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(7),
      Q => \rom_do_reg_n_0_[7]\,
      R => '0'
    );
\rom_do_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(8),
      Q => \rom_do_reg_n_0_[8]\,
      R => '0'
    );
\rom_do_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => D(9),
      Q => \rom_do_reg_n_0_[9]\,
      R => '0'
    );
\state_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => current_state(2),
      I1 => state_count(0),
      O => \state_count[0]_i_1_n_0\
    );
\state_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => current_state(2),
      I1 => state_count(1),
      I2 => state_count(0),
      O => \state_count[1]_i_1_n_0\
    );
\state_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD7"
    )
        port map (
      I0 => current_state(2),
      I1 => state_count(2),
      I2 => state_count(0),
      I3 => state_count(1),
      O => \state_count[2]_i_1_n_0\
    );
\state_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => current_state(3),
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      O => \state_count[3]_i_1_n_0\
    );
\state_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDD7"
    )
        port map (
      I0 => current_state(2),
      I1 => state_count(3),
      I2 => state_count(2),
      I3 => state_count(1),
      I4 => state_count(0),
      O => \state_count[3]_i_2_n_0\
    );
\state_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => \state_count[3]_i_1_n_0\,
      D => \state_count[0]_i_1_n_0\,
      Q => state_count(0),
      R => '0'
    );
\state_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => \state_count[3]_i_1_n_0\,
      D => \state_count[1]_i_1_n_0\,
      Q => state_count(1),
      R => '0'
    );
\state_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => \state_count[3]_i_1_n_0\,
      D => \state_count[2]_i_1_n_0\,
      Q => state_count(2),
      R => '0'
    );
\state_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => \state_count[3]_i_1_n_0\,
      D => \state_count[3]_i_2_n_0\,
      Q => state_count(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_video_dynclk_0_axi_dynclk is
  port (
    REF_CLK_I : in STD_LOGIC;
    PXL_CLK_O : out STD_LOGIC;
    PXL_CLK_5X_O : out STD_LOGIC;
    LOCKED_O : out STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC
  );
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of system_video_dynclk_0_axi_dynclk : entity is 6;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of system_video_dynclk_0_axi_dynclk : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_video_dynclk_0_axi_dynclk : entity is "axi_dynclk";
  attribute kAddBUFMR : string;
  attribute kAddBUFMR of system_video_dynclk_0_axi_dynclk : entity is "FALSE";
  attribute kRefClkFreqHz : integer;
  attribute kRefClkFreqHz of system_video_dynclk_0_axi_dynclk : entity is 100000000;
  attribute kVersionMajor : integer;
  attribute kVersionMajor of system_video_dynclk_0_axi_dynclk : entity is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of system_video_dynclk_0_axi_dynclk : entity is 1;
end system_video_dynclk_0_axi_dynclk;

architecture STRUCTURE of system_video_dynclk_0_axi_dynclk is
  signal \<const0>\ : STD_LOGIC;
  signal CLR : STD_LOGIC;
  signal CTRL_REG : STD_LOGIC;
  signal \FSM_onehot_clk_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_clk_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_clk_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_clk_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_clk_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_clk_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_clk_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_clk_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_clk_state_reg_n_0_[3]\ : signal is "yes";
  signal I : STD_LOGIC;
  signal \^locked_o\ : STD_LOGIC;
  signal RST : STD_LOGIC;
  signal SRDY : STD_LOGIC;
  signal STAT_REG : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP of STAT_REG : signal is "yes";
  signal SyncAsyncLocked_n_1 : STD_LOGIC;
  signal SyncAsyncLocked_n_2 : STD_LOGIC;
  signal axi_dynclk_S00_AXI_inst_n_31 : STD_LOGIC;
  signal axi_dynclk_S00_AXI_inst_n_32 : STD_LOGIC;
  signal axi_dynclk_S00_AXI_inst_n_33 : STD_LOGIC;
  signal axi_dynclk_S00_AXI_inst_n_34 : STD_LOGIC;
  signal axi_dynclk_S00_AXI_inst_n_35 : STD_LOGIC;
  signal axi_dynclk_S00_AXI_inst_n_36 : STD_LOGIC;
  signal axi_dynclk_S00_AXI_inst_n_37 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rom : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rom_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sen_reg : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 14 );
  signal slv_reg6 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal slv_reg7 : STD_LOGIC_VECTOR ( 25 downto 1 );
  signal xLocked : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of BUFIO_inst : label is "PRIMITIVE";
  attribute box_type of BUFR_inst : label is "PRIMITIVE";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_clk_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_clk_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_clk_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_clk_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_clk_state_reg[4]\ : label is "yes";
begin
  LOCKED_O <= \^locked_o\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
BUFIO_inst: unisim.vcomponents.BUFIO
     port map (
      I => I,
      O => PXL_CLK_5X_O
    );
BUFR_inst: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "5",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => CLR,
      I => I,
      O => PXL_CLK_O
    );
\FSM_onehot_clk_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_clk_state_reg_n_0_[1]\,
      I1 => STAT_REG(0),
      O => \FSM_onehot_clk_state[2]_i_1_n_0\
    );
\FSM_onehot_clk_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => SyncAsyncLocked_n_1,
      D => '0',
      Q => \FSM_onehot_clk_state_reg_n_0_[0]\,
      S => RST
    );
\FSM_onehot_clk_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => SyncAsyncLocked_n_1,
      D => \FSM_onehot_clk_state_reg_n_0_[0]\,
      Q => \FSM_onehot_clk_state_reg_n_0_[1]\,
      R => RST
    );
\FSM_onehot_clk_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => SyncAsyncLocked_n_1,
      D => \FSM_onehot_clk_state[2]_i_1_n_0\,
      Q => \FSM_onehot_clk_state_reg_n_0_[2]\,
      R => RST
    );
\FSM_onehot_clk_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => SyncAsyncLocked_n_1,
      D => \FSM_onehot_clk_state_reg_n_0_[2]\,
      Q => \FSM_onehot_clk_state_reg_n_0_[3]\,
      R => RST
    );
\FSM_onehot_clk_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => SyncAsyncLocked_n_1,
      D => \FSM_onehot_clk_state_reg_n_0_[3]\,
      Q => STAT_REG(0),
      R => RST
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Inst_mmcme2_drp: entity work.system_video_dynclk_0_mmcme2_drp
     port map (
      D(11 downto 10) => rom(12 downto 11),
      D(9 downto 0) => rom(9 downto 0),
      I => I,
      LOCKED_O => \^locked_o\,
      Q(3 downto 2) => slv_reg3(31 downto 30),
      Q(1 downto 0) => slv_reg3(15 downto 14),
      REF_CLK_I => REF_CLK_I,
      SR(0) => RST,
      SRDY => SRDY,
      rom_addr(3 downto 0) => rom_addr(3 downto 0),
      s_axi_lite_aclk => s_axi_lite_aclk,
      sen_reg => sen_reg,
      \slv_reg2_reg[30]\ => axi_dynclk_S00_AXI_inst_n_35,
      \slv_reg2_reg[31]\ => axi_dynclk_S00_AXI_inst_n_36,
      \slv_reg3_reg[26]\ => axi_dynclk_S00_AXI_inst_n_32,
      \slv_reg3_reg[29]\ => axi_dynclk_S00_AXI_inst_n_34,
      \slv_reg4_reg[0]\ => axi_dynclk_S00_AXI_inst_n_31,
      \slv_reg4_reg[3]\ => axi_dynclk_S00_AXI_inst_n_33,
      \slv_reg6_reg[30]\(0) => slv_reg6(30),
      \slv_reg7_reg[25]\(6) => slv_reg7(25),
      \slv_reg7_reg[25]\(5) => slv_reg7(21),
      \slv_reg7_reg[25]\(4 downto 3) => slv_reg7(7 downto 6),
      \slv_reg7_reg[25]\(2 downto 0) => slv_reg7(3 downto 1)
    );
SyncAsyncLocked: entity work.system_video_dynclk_0_SyncAsync
     port map (
      E(0) => SyncAsyncLocked_n_1,
      \FSM_onehot_clk_state_reg[4]\(4) => STAT_REG(0),
      \FSM_onehot_clk_state_reg[4]\(3) => \FSM_onehot_clk_state_reg_n_0_[3]\,
      \FSM_onehot_clk_state_reg[4]\(2) => \FSM_onehot_clk_state_reg_n_0_[2]\,
      \FSM_onehot_clk_state_reg[4]\(1) => \FSM_onehot_clk_state_reg_n_0_[1]\,
      \FSM_onehot_clk_state_reg[4]\(0) => \FSM_onehot_clk_state_reg_n_0_[0]\,
      LOCKED_O => \^locked_o\,
      Q(0) => CTRL_REG,
      SR(0) => RST,
      SRDY => SRDY,
      \out\(0) => xLocked,
      p_0_in => p_0_in,
      s_axi_lite_aclk => s_axi_lite_aclk,
      xLckdRisingFlag_reg => SyncAsyncLocked_n_2
    );
axi_dynclk_S00_AXI_inst: entity work.system_video_dynclk_0_axi_dynclk_S00_AXI
     port map (
      D(11 downto 10) => rom(12 downto 11),
      D(9 downto 0) => rom(9 downto 0),
      Q(3 downto 2) => slv_reg3(31 downto 30),
      Q(1 downto 0) => slv_reg3(15 downto 14),
      SR(0) => RST,
      \axi_rdata_reg[25]_0\(6) => slv_reg7(25),
      \axi_rdata_reg[25]_0\(5) => slv_reg7(21),
      \axi_rdata_reg[25]_0\(4 downto 3) => slv_reg7(7 downto 6),
      \axi_rdata_reg[25]_0\(2 downto 0) => slv_reg7(3 downto 1),
      \axi_rdata_reg[30]_0\(0) => slv_reg6(30),
      \out\(1) => STAT_REG(0),
      \out\(0) => \FSM_onehot_clk_state_reg_n_0_[2]\,
      rom_addr(3 downto 0) => rom_addr(3 downto 0),
      \rom_do_reg[10]\ => axi_dynclk_S00_AXI_inst_n_31,
      \rom_do_reg[10]_0\ => axi_dynclk_S00_AXI_inst_n_32,
      \rom_do_reg[13]\ => axi_dynclk_S00_AXI_inst_n_33,
      \rom_do_reg[13]_0\ => axi_dynclk_S00_AXI_inst_n_34,
      \rom_do_reg[14]\ => axi_dynclk_S00_AXI_inst_n_35,
      \rom_do_reg[15]\ => axi_dynclk_S00_AXI_inst_n_36,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(3 downto 0) => s_axi_lite_araddr(5 downto 2),
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(3 downto 0) => s_axi_lite_awaddr(5 downto 2),
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid,
      sen_reg_reg(0) => CTRL_REG,
      sen_reg_reg_0 => axi_dynclk_S00_AXI_inst_n_37
    );
sen_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => axi_dynclk_S00_AXI_inst_n_37,
      Q => sen_reg,
      R => RST
    );
xLckdRisingFlag_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => SyncAsyncLocked_n_2,
      Q => CLR,
      R => '0'
    );
\xLocked_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => xLocked,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_video_dynclk_0 is
  port (
    REF_CLK_I : in STD_LOGIC;
    PXL_CLK_O : out STD_LOGIC;
    PXL_CLK_5X_O : out STD_LOGIC;
    LOCKED_O : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_lite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_video_dynclk_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_video_dynclk_0 : entity is "system_video_dynclk_0,axi_dynclk,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_video_dynclk_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_video_dynclk_0 : entity is "axi_dynclk,Vivado 2016.4";
end system_video_dynclk_0;

architecture STRUCTURE of system_video_dynclk_0 is
  attribute C_S_AXI_LITE_ADDR_WIDTH : integer;
  attribute C_S_AXI_LITE_ADDR_WIDTH of U0 : label is 6;
  attribute C_S_AXI_LITE_DATA_WIDTH : integer;
  attribute C_S_AXI_LITE_DATA_WIDTH of U0 : label is 32;
  attribute kAddBUFMR : string;
  attribute kAddBUFMR of U0 : label is "FALSE";
  attribute kRefClkFreqHz : integer;
  attribute kRefClkFreqHz of U0 : label is 100000000;
  attribute kVersionMajor : integer;
  attribute kVersionMajor of U0 : label is 1;
  attribute kVersionMinor : integer;
  attribute kVersionMinor of U0 : label is 1;
begin
U0: entity work.system_video_dynclk_0_axi_dynclk
     port map (
      LOCKED_O => LOCKED_O,
      PXL_CLK_5X_O => PXL_CLK_5X_O,
      PXL_CLK_O => PXL_CLK_O,
      REF_CLK_I => REF_CLK_I,
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(5 downto 0) => s_axi_lite_araddr(5 downto 0),
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arprot(2 downto 0) => s_axi_lite_arprot(2 downto 0),
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(5 downto 0) => s_axi_lite_awaddr(5 downto 0),
      s_axi_lite_awprot(2 downto 0) => s_axi_lite_awprot(2 downto 0),
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bresp(1 downto 0) => s_axi_lite_bresp(1 downto 0),
      s_axi_lite_bvalid => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rresp(1 downto 0) => s_axi_lite_rresp(1 downto 0),
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(31 downto 0) => s_axi_lite_wdata(31 downto 0),
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wstrb(3 downto 0) => s_axi_lite_wstrb(3 downto 0),
      s_axi_lite_wvalid => s_axi_lite_wvalid
    );
end STRUCTURE;
