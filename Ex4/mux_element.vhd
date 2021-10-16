----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:08:02 04/14/2020 
-- Design Name: 
-- Module Name:    mux_element - Behavioral 
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

entity mux_element is
	port (A, B, C, D : in std_logic_vector(7 downto 0);
					 SEL : in std_logic_vector(1 downto 0);
				  M_OUT : out std_logic_vector(7 downto 0));
end mux_element;

architecture Behavioral of mux_element is

begin
with SEL select
	M_OUT <= A when "00",
				B when "01",
				C when "10",
				D when "11",
			   (others => '0') when others;
end Behavioral;

