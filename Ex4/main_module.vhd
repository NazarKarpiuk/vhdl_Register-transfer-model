----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:38:05 04/14/2020 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_module is
	port (X, Y, Z : in std_logic_vector(7 downto 0);
			DS, CLK : in std_logic;
			 MuxSel : in std_logic_vector(1 downto 0));
end main_module;

architecture Behavioral of main_module is

component mux_element
	port (A, B, C, D : in std_logic_vector(7 downto 0);
					 SEL : in std_logic_vector(1 downto 0);
				  M_OUT : out std_logic_vector(7 downto 0));
end component;

component dc_element
	port (A : in std_logic;
	  DC_OUT_0 : out std_logic;
	  DC_OUT_1 : out std_logic);
end component;

component reg_element 
	port (REG_IN : in std_logic_vector(7 downto 0);
		  LD, CLK : in std_logic;
		  REG_OUT : inout std_logic_vector(7 downto 0));
end component;

signal dc_output_0, dc_output_1 : std_logic;
signal mux_output, ra_output, rb_output : std_logic_vector(7 downto 0); 
begin
	dc_1 : dc_element 
		port map(A => DS,
					DC_OUT_0 => dc_output_0,
					DC_OUT_1 => dc_output_1);
					
	mux_1 : mux_element 
		port map(A => X,
					B => Y, 
					C => Z, 
					D => rb_output, 
					SEL => MuxSel, 
					M_OUT => mux_output);
					
	reg_1 : reg_element
		port map(REG_IN => mux_output,
					LD => dc_output_0,
					CLK => CLK,
					REG_OUT => ra_output);
					
	reg_2 : reg_element
		port map(REG_IN => mux_output,
					LD => dc_output_1,
					CLK => CLK,
					REG_OUT => rb_output);

end Behavioral;

