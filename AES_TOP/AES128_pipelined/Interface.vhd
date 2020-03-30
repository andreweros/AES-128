----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:40:04 03/23/2020 
-- Design Name: 
-- Module Name:    Interface - Behavioral 
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

entity Interface is
port (
		clk : in std_logic;                       --system clock
		reset : in std_logic;                     --asynch reset
		valid_in : in std_logic;            --test valid signal
		valid_out : OUT std_logic               --output valid signal
);
end Interface;

architecture Behavioral of Interface is

component Top is
port (
		clk : in std_logic;                       --system clock
		reset : in std_logic;                     --asynch reset
		data_valid_in : in std_logic;            --data valid signal
		cipherkey_valid_in : in std_logic;        --cipher key valid signal
		cipher_key : IN STD_LOGIC_VECTOR(127 DOWNTO 0);    --cipher key
		plain_text : IN STD_LOGIC_VECTOR(127 DOWNTO 0);   --plain text
		valid_out : OUT std_logic;               --output valid signal
		cipher_text : OUT STD_LOGIC_VECTOR(127 DOWNTO 0) --cipher text
);
end component;

signal key : std_logic_vector(127 downto 0) := x"00000000000000000000000000000000";
signal text_in : std_logic_vector(127 downto 0) := x"00000000000000000000000000000000";
signal valid_out_delay :std_logic;
signal valid_in_delay :std_logic;
signal text_out : std_logic_vector(127 downto 0);

begin

U_TOP : 	Top
port map (clk, reset, valid_in_delay, valid_in_delay, key, text_in, valid_out_delay, text_out);


PROCESS (clk, reset)
BEGIN
      IF ((NOT(reset)) = '1') THEN
         valid_out <= '0';
		ElSIF(clk'EVENT AND clk = '1') THEN
			IF (valid_in = '1') THEN
					key <= x"2b7e151628aed2a6abf7158809cf4f3c";
					text_in <=x"3243f6a8885a308d313198a2e0370734";
				IF(text_out = x"3925841d02dc09fbdc118597196a0b32") THEN
				valid_out <= valid_out_delay;
				END IF;
			END IF;
			valid_in_delay <= valid_in;
			END IF;
END PROCESS;

end Behavioral;

