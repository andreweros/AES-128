LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY RoundkeyGen IS
   PORT (
      clk        : IN STD_LOGIC;
      reset      : IN STD_LOGIC;
      RCON       : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      valid_in   : IN STD_LOGIC;
      key        : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      round_key  : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
      valid_out  : OUT STD_LOGIC
   );
END RoundkeyGen;



ARCHITECTURE trans OF RoundkeyGen IS

Component Subbytes_32 IS
   PORT (
      clk        : IN STD_LOGIC;
      reset      : IN STD_LOGIC;
      valid_in   : IN STD_LOGIC;
      data_in    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      valid_out  : OUT STD_LOGIC;
      data_out   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
   );
END Component;
   
   SIGNAL Key_RotWord        : STD_LOGIC_VECTOR(31 DOWNTO 0);
   SIGNAL Key_SecondStage    : STD_LOGIC_VECTOR(127 DOWNTO 0);
   SIGNAL round_key_delay    : STD_LOGIC_VECTOR(127 DOWNTO 0);
   SIGNAL valid_round_key    : STD_LOGIC;
   SIGNAL Key_SubBytes       : STD_LOGIC_VECTOR(31 DOWNTO 0);
   SIGNAL temp_round_key     : STD_LOGIC_VECTOR(127 DOWNTO 0);
   SIGNAL subbytes_valid_out : STD_LOGIC;
	
BEGIN
   Key_RotWord <= (key(23 DOWNTO 0) & key(31 DOWNTO 24));
   temp_round_key(127 DOWNTO 96) <= key(127 DOWNTO 96) XOR Key_SubBytes XOR RCON;
   temp_round_key(95 DOWNTO 64) <= key(95 DOWNTO 64) XOR temp_round_key(127 DOWNTO 96);
   temp_round_key(63 DOWNTO 32) <= key(63 DOWNTO 32) XOR temp_round_key(95 DOWNTO 64);
   temp_round_key(31 DOWNTO 0) <= key(31 DOWNTO 0) XOR temp_round_key(63 DOWNTO 32);
   
   
   SUB_U : Subbytes_32
      PORT MAP (
         clk,
         reset,
         valid_in,
         Key_RotWord,
         subbytes_valid_out,
         Key_SubBytes
      );
   
   PROCESS (clk, reset)
   BEGIN
      IF ((NOT(reset)) = '1') THEN
         round_key_delay <= x"00000000000000000000000000000000";
         valid_round_key <= '0';
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (subbytes_valid_out = '1') THEN
            round_key_delay <= temp_round_key;
         END IF;
         valid_round_key <= subbytes_valid_out;
      END IF;
   END PROCESS;
   
   
   PROCESS (clk, reset)
   BEGIN
      IF ((NOT(reset)) = '1') THEN
         valid_out <= '0';
         round_key <= x"00000000000000000000000000000000";
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (valid_round_key = '1') THEN
            round_key <= round_key_delay;
         END IF;
         valid_out <= valid_round_key;
      END IF;
   END PROCESS;
   
   
END trans;


