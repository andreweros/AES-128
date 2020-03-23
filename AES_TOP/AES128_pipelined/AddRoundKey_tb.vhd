--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:57:30 02/27/2020
-- Design Name:   
-- Module Name:   C:/Users/qiuke/Desktop/AES_V1.0/AES/AddRoundKey_tb.vhd
-- Project Name:  AES
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AddRoundKey
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
 
ENTITY AddRoundKey_tb IS
END AddRoundKey_tb;
 
ARCHITECTURE behavior OF AddRoundKey_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AddRoundKey
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         data_valid_in : IN  std_logic;
         key_valid_in : IN  std_logic;
         data_in : IN  std_logic_vector(127 downto 0);
         round_key : IN  std_logic_vector(127 downto 0);
         valid_out : OUT  std_logic;
         data_out : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal data_valid_in : std_logic := '0';
   signal key_valid_in : std_logic := '0';
   signal data_in : std_logic_vector(127 downto 0) := (others => '0');
   signal round_key : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal valid_out : std_logic;
   signal data_out : std_logic_vector(127 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AddRoundKey PORT MAP (
          clk => clk,
          reset => reset,
          data_valid_in => data_valid_in,
          key_valid_in => key_valid_in,
          data_in => data_in,
          round_key => round_key,
          valid_out => valid_out,
          data_out => data_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

		-- test the function of reset.
		reset <= '0';
		wait for 30 ns;
		reset <= '1';
		
		
      --  data in
		wait for 20 ns;
		data_valid_in <= '1';
		data_in 	 <= X"58cf0bfc4d7c72d958cf0bfc4d7c72d9";
		
		-- key in
		wait for 20 ns;
		key_valid_in <= '1';
		round_key <= X"2b7e151628aed2a6abf7158809cf4f3c";
      wait;
		
   end process;

END;
