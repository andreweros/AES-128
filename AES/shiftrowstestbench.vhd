--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:47:45 02/27/2020
-- Design Name:   
-- Module Name:   C:/Users/mao236/Desktop/system design/shiftrows/shiftrowstestbench.vhd
-- Project Name:  shiftrows
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shiftrows
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shiftrowstestbench IS
END shiftrowstestbench;
 
ARCHITECTURE behavior OF shiftrowstestbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shiftrows
    PORT(
         data_in : IN  std_logic_vector(127 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         valid_in : IN  std_logic;
         data_out : OUT  std_logic_vector(127 downto 0);
         valid_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(127 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal valid_in : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(127 downto 0);
   signal valid_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shiftrows PORT MAP (
          data_in => data_in,
          clk => clk,
          reset => reset,
          valid_in => valid_in,
          data_out => data_out,
          valid_out => valid_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

 reset_proc: process
begin 
		wait for 50ns;
		reset<='0';
		wait for 50ns;
		reset<='1';
		wait;
end process;

data_proc:process
 begin
 wait for 100ns;
valid_in <='1';
data_in<="00010101001001000101011001111000000100100011010001010110011110000001001000110100010101100111100000010010001101000101011001111000";   
end process;
end behavior;