LIBRARY ieee;
 USE ieee.std_logic_1164.all;
 USE ieee.std_logic_unsigned.all;


ENTITY Keyexpantion IS
   PORT (
      
      clk         : IN STD_LOGIC;
      reset       : IN STD_LOGIC;
      valid_in    : IN STD_LOGIC;
      cipher_key  : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      W           : OUT STD_LOGIC_VECTOR((11 * 128)-1  DOWNTO 0);
      valid_out   : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
   );
END Keyexpantion;

ARCHITECTURE trans OF Keyexpantion IS
   COMPONENT RoundkeyGen IS
      PORT (
         clk         : IN STD_LOGIC;
         reset       : IN STD_LOGIC;
         RCON        : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
         valid_in    : IN STD_LOGIC;
         key         : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
         round_key   : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
         valid_out   : OUT STD_LOGIC
      );
   END COMPONENT;
   
   TYPE l_array IS ARRAY (0 TO 9) OF STD_LOGIC_VECTOR(127 DOWNTO 0);
   TYPE s_array IS ARRAY (0 TO 9) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
   
   
   SIGNAL RCON             : s_array;
   SIGNAL keygen_valid_out : STD_LOGIC_VECTOR(9 DOWNTO 0);
   SIGNAL W_array          : l_array;
BEGIN
   
   RCON(0) <= "00000001000000000000000000000000";
   RCON(1) <= "00000010000000000000000000000000";
   RCON(2) <= "00000100000000000000000000000000";
   RCON(3) <= "00001000000000000000000000000000";
   RCON(4) <= "00010000000000000000000000000000";
   RCON(5) <= "00100000000000000000000000000000";
   RCON(6) <= "01000000000000000000000000000000";
   RCON(7) <= "10000000000000000000000000000000";
   RCON(8) <= "00011011000000000000000000000000";
   RCON(9) <= "00110110000000000000000000000000";
   
   
   
   RKGEN_U0 : RoundkeyGen
      PORT MAP (
         clk,
         reset,
         RCON(0),
         valid_in,
         cipher_key,
         W_array(0),
         keygen_valid_out(0)
      );
   
   ROUND_KEY_GEN : FOR i IN 9 DOWNTO 1 GENERATE
      
      
      RKGEN_U : RoundkeyGen
         PORT MAP (
            clk,
            reset,
            RCON(i),
            keygen_valid_out(i - 1),
            W_array(i - 1),
            W_array(i),
            keygen_valid_out(i)
         );
   END GENERATE;
   
			W <= (cipher_key & W_array(0) & W_array(1) & W_array(2) & W_array(3) & W_array(4) & W_array(5) & W_array(6) & W_array(7) & W_array(8) & W_array(9));
			valid_out <= '1' & keygen_valid_out;
	
END trans;




