----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:16:34 04/14/2020 
-- Design Name: 
-- Module Name:    reg_element - Behavioral 
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

entity reg_element is
	port ( REG_IN : in std_logic_vector(7 downto 0);
			 LD,CLK : in std_logic;
			REG_OUT : inout std_logic_vector(7 downto 0));
end reg_element;

architecture Behavioral of reg_element is
signal data : std_logic_vector(7 downto 0) := "00000000";
begin
	reg: process(CLK)
begin
		if (falling_edge(CLK)) then
			if (LD = '1') then
				data <= REG_IN;
			end if;
		end if;
end process;
REG_OUT <= data;
end Behavioral;

