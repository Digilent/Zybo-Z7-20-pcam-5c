-------------------------------------------------------------------------------
--
-- File: InputBuffer.vhd
-- Author: Elod Gyorgy
-- Original Project: XCAM
-- Date: 22 April 2016
--
-------------------------------------------------------------------------------
-- (c) 2016 Copyright Digilent Incorporated
-- All Rights Reserved
-- 
-- This program is free software; distributed under the terms of BSD 3-clause 
-- license ("Revised BSD License", "New BSD License", or "Modified BSD License")
--
-- Redistribution and use in source and binary forms, with or without modification,
-- are permitted provided that the following conditions are met:
--
-- 1. Redistributions of source code must retain the above copyright notice, this
--    list of conditions and the following disclaimer.
-- 2. Redistributions in binary form must reproduce the above copyright notice,
--    this list of conditions and the following disclaimer in the documentation
--    and/or other materials provided with the distribution.
-- 3. Neither the name(s) of the above-listed copyright holder(s) nor the names
--    of its contributors may be used to endorse or promote products derived
--    from this software without specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
-- IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
-- ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE 
-- FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
-- DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
-- SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
-- CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
-- OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
-- OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--
-------------------------------------------------------------------------------
--
-- Purpose:
-- This module instantiates the input buffers of the required I/O standard
-- for the LP(1:0) and HS pins. The D-PHY lane is expected to be connected
-- to the FPGA according to Xilinx App Note 894:
-- http://www.xilinx.com/support/documentation/application_notes/xapp894-d-phy-solutions.pdf 
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity InputBuffer is
   Port (
      HS_p : in std_logic;
      HS_n : in std_logic;
      LP_n : in std_logic;
      LP_p : in std_logic;
      
      aHS : out std_logic;
      aLP : out std_logic_vector(1 downto 0) 
   );
end InputBuffer;

architecture Behavioral of InputBuffer is

begin

LaneHighSpeed: IBUFDS
generic map (
   DIFF_TERM => FALSE, -- Differential Termination 
   IBUF_LOW_PWR => FALSE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
   IOSTANDARD => "LVDS_25")
port map (
   O => aHS,  -- Buffer output
   I => HS_p,  -- Diff_p buffer input (connect directly to top-level port)
   IB => HS_n -- Diff_n buffer input (connect directly to top-level port)
);

LaneLowPower0: IBUF
generic map (
   IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
   IOSTANDARD => "HSUL_12")
port map (
   O => aLP(0),     -- Buffer output
   I => LP_n      -- Buffer input (connect directly to top-level port)
);

LaneLowPower1: IBUF
generic map (
   IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
   IOSTANDARD => "HSUL_12")
port map (
   O => aLP(1),     -- Buffer output
   I => LP_p      -- Buffer input (connect directly to top-level port)
);

end Behavioral;
