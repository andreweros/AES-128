--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:04:59 03/19/2020
-- Design Name:   
-- Module Name:   E:/AES128_Fpga/AES_TOP/AES128_pipelined/Keyexpantion_tb.vhd
-- Project Name:  AES128_pipelined
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Keyexpantion
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
 
ENTITY Keyexpantion_tb IS
END Keyexpantion_tb;
 
ARCHITECTURE behavior OF Keyexpantion_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Keyexpantion
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         valid_in : IN  std_logic;
         cipher_key : IN  std_logic_vector(127 downto 0);
         W : OUT  std_logic_vector(1279 downto 0);
         valid_out : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal valid_in : std_logic := '0';
   signal cipher_key : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal W : std_logic_vector(1279 downto 0);
   signal valid_out : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Keyexpantion PORT MAP (
          clk => clk,
          reset => reset,
          valid_in => valid_in,
          cipher_key => cipher_key,
          W => W,
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
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		
		reset <= '1';

      cipher_key <= x"2b7e151628aed2a6abf7158809cf4f3c";
		
		valid_in <= '1';

      wait;
		
   end process;

END;
