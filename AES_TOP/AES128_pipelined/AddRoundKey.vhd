----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:54 02/25/2020 
-- Design Name: 
-- Module Name:    AddRoundKey - Behavioral 
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
LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;


ENTITY AddRoundKey IS
   GENERIC (
      DATA_W         : INTEGER := 128
   );
   PORT (
      clk            : IN STD_LOGIC;
      reset          : IN STD_LOGIC;
      data_valid_in  : IN STD_LOGIC;
      key_valid_in   : IN STD_LOGIC;
      data_in        : IN STD_LOGIC_VECTOR(DATA_W - 1 DOWNTO 0);
      round_key      : IN STD_LOGIC_VECTOR(DATA_W - 1 DOWNTO 0);
      valid_out      : OUT STD_LOGIC;
      data_out       : OUT STD_LOGIC_VECTOR(DATA_W - 1 DOWNTO 0)
   );
END AddRoundKey;

ARCHITECTURE trans OF AddRoundKey IS
BEGIN
   
   PROCESS (clk, reset)
   BEGIN
      IF ((NOT(reset)) = '1') THEN
         data_out <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
         valid_out <= '0';
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (data_valid_in ='1' AND key_valid_in='1') THEN
            data_out <= data_in XOR round_key;
         END IF;
         valid_out <= data_valid_in AND key_valid_in;
      END IF;
   END PROCESS;
   
   
END trans;


