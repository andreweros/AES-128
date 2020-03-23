LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;


ENTITY Round IS
   PORT (
      clk            : IN STD_LOGIC;
      reset          : IN STD_LOGIC;
      data_valid_in  : IN STD_LOGIC;
      key_valid_in   : IN STD_LOGIC;
      data_in        : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      round_key      : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      valid_out      : OUT STD_LOGIC;
      data_out       : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
   );
END Round;

ARCHITECTURE trans OF Round IS

Component Subbytes_128 IS
   PORT (
      clk        : IN STD_LOGIC;
      reset      : IN STD_LOGIC;
      valid_in   : IN STD_LOGIC;
      data_in    : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      valid_out  : OUT STD_LOGIC;
      data_out   : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
   );
END Component;

Component shiftrows is
    Port ( 
				clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				valid_in : in  STD_LOGIC;
				data_in : in  STD_LOGIC_VECTOR (127 downto 0);
           valid_out : out  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (127 downto 0)
           );
end Component;

Component MixColumns is
    Port ( 
				clock : in STD_LOGIC;
				reset : in STD_LOGIC;
				start : in STD_LOGIC;
				a : in STD_LOGIC_VECTOR (127 downto 0);
				finish : out STD_LOGIC;
				mixout : out STD_LOGIC_VECTOR (127 downto 0)
           );
end Component;

Component AddRoundKey IS
   PORT (
      clk            : IN STD_LOGIC;
      reset          : IN STD_LOGIC;
      data_valid_in  : IN STD_LOGIC;
      key_valid_in   : IN STD_LOGIC;
      data_in        : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      round_key      : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      valid_out      : OUT STD_LOGIC;
      data_out       : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
   );
END Component;

   SIGNAL data_sub2shift  : STD_LOGIC_VECTOR(127 DOWNTO 0);
   SIGNAL data_shift2mix  : STD_LOGIC_VECTOR(127 DOWNTO 0);
   SIGNAL data_mix2key    : STD_LOGIC_VECTOR(127 DOWNTO 0);
   
   SIGNAL valid_sub2shift : STD_LOGIC;
   SIGNAL valid_shift2mix : STD_LOGIC;
   SIGNAL valid_mix2key   : STD_LOGIC;
   
   -- Declare intermediate signals for referenced outputs
   SIGNAL valid_out_ref : STD_LOGIC;
   SIGNAL data_out_ref  : STD_LOGIC_VECTOR(127 DOWNTO 0);
BEGIN
   -- Drive referenced outputs
   valid_out <= valid_out_ref;
   data_out <= data_out_ref;
   
   
   
   U_SUB : SubBytes_128
      PORT MAP (
         clk,
         reset,
         data_valid_in,
         data_in,
         valid_sub2shift,
         data_sub2shift
      );
   
   
   
   U_SH : ShiftRows
      PORT MAP (
         clk,
         reset,
         valid_sub2shift,
         data_sub2shift,
         valid_shift2mix,
         data_shift2mix
      );
   
   
   
   U_MIX : MixColumns
      PORT MAP (
         clk,
         reset,
         valid_shift2mix,
         data_shift2mix,
         valid_mix2key,
         data_mix2key
      );
   
   
   
   U_KEY : AddRoundKey
      PORT MAP (
         clk,
         reset,
         valid_mix2key,
         key_valid_in,
         data_mix2key,
         round_key,
         valid_out_ref,
         data_out_ref
      );
   
END trans;



