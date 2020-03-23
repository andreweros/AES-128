--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:13:01 03/19/2020
-- Design Name:   
-- Module Name:   E:/AES128_Fpga/AES_TOP/AES128_pipelined/Roundkeygen_tb.vhd
-- Project Name:  AES128_pipelined
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RoundkeyGen
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
 
ENTITY Roundkeygen_tb IS
END Roundkeygen_tb;
 
ARCHITECTURE behavior OF Roundkeygen_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RoundkeyGen
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         RCON : IN  std_logic_vector(31 downto 0);
         valid_in : IN  std_logic;
         key : IN  std_logic_vector(127 downto 0);
         round_key : OUT  std_logic_vector(127 downto 0);
         valid_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal RCON : std_logic_vector(31 downto 0) := (others => '0');
   signal valid_in : std_logic := '0';
   signal key : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal round_key : std_logic_vector(127 downto 0);
   signal valid_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RoundkeyGen PORT MAP (
          clk => clk,
          reset => reset,
          RCON => RCON,
          valid_in => valid_in,
          key => key,
          round_key => round_key,
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
		
      key <= x"2b7e151628aed2a6abf7158809cf4f3c";
		
		RCON <= "00000001000000000000000000000000";
		
		valid_in <= '1';
 
      wait;
   end process;

END;
