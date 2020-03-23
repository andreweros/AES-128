--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:18:25 03/20/2020
-- Design Name:   
-- Module Name:   E:/AES128_Fpga/AES_TOP/AES128_pipelined/Mixcloumns_tb.vhd
-- Project Name:  AES128_pipelined
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mixcolumns
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
 
ENTITY Mixcloumns_tb IS
END Mixcloumns_tb;
 
ARCHITECTURE behavior OF Mixcloumns_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mixcolumns
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         a : IN  std_logic_vector(127 downto 0);
         finish : OUT  std_logic;
         mixout : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';
   signal a : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal finish : std_logic;
   signal mixout : std_logic_vector(127 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mixcolumns PORT MAP (
          clock => clock,
          reset => reset,
          start => start,
          a => a,
          finish => finish,
          mixout => mixout
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      reset <= '1';
		
      a <= x"876e46a6f24ce78c4d904ad897ecc395";
		
		start <= '1'; 

      wait;
   end process;

END;
