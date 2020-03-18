library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shiftrows is
    Port ( data_in : in  STD_LOGIC_VECTOR (127 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           valid_in : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (127 downto 0);
           valid_out : out  STD_LOGIC);
end shiftrows;

architecture Behavioral of shiftrows is

begin
process(clk,reset)
 begin
	IF ((NOT(reset)) = '1') THEN
		valid_out <= '0';
	ELSIF(clk'EVENT AND clk = '1')THEN
		IF(valid_in = '1') THEN
--			for x in 0 to 3 loop
--				for y in 0 to 3 loop
--					data_out((127-(8*(4*y+x))) downto (120-(8*(4*y+x)))) <= data_in((127-(8*((4*y+5*x) mod 16))) downto (120-(8*((4*y+5*x) mod 16))));
--				end loop;
--			end loop;
		data_out(127 downto 96) <= data_in(127 downto 120) & data_in(87 downto 80)& data_in(47 downto 40)& data_in(7 downto 0);
		data_out(95 downto 64) <= data_in(95 downto 88)& data_in(55 downto 48)& data_in(15 downto 8)& data_in(103 downto 96);
		data_out(63 downto 32) <= data_in(63 downto 56)&data_in(23 downto 16)& data_in(111 downto 104)& data_in(71 downto 64);
		data_out(31 downto 0) <= data_in(31 downto 24)&data_in(119 downto 112)& data_in(79 downto 72)& data_in(39 downto 32);
		
		
		END IF;
		valid_out <= valid_in;
	END IF ;
 end process;

end Behavioral;

