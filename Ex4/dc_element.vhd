----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:58:36 04/14/2020 
-- Design Name: 
-- Module Name:    dc_element - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dc_element is
	port (A : in std_logic;
    DC_OUT_0 : out std_logic;
	 DC_OUT_1 : out std_logic);
end dc_element;

architecture Behavioral of dc_element is

begin
	dc: process (A)
	begin
		if (A = '1') then
			DC_OUT_0 <= '0';
			DC_OUT_1 <= '1';
		else 
			DC_OUT_0 <= '1';
			DC_OUT_1 <= '0';
		end if;
	end process;
end Behavioral;

