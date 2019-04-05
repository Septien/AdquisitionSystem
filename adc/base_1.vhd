library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity base_1 is
	port(
	Clk : in std_logic;
	RST : in std_logic;
	T : out std_logic
	);
end base_1;

architecture simple of Base_1 is
signal Qp, Qn : std_logic_vector(25 downto 0);
begin
	
	
	Secuencial : process(Clk,RST)
	begin						 
		if(RST ='0') then
			Qp <= (others => '0');
		elsif(Clk'event and Clk ='1') then
			Qp <= Qn;
		end if;
	end process Secuencial;
	
	
	Combinacional : process(Qp)
	begin
		if(Qp = "10111110101111000010000000" ) then
		--if(Qp = "01011111010111100000111111" ) then
			Qn <= (others => '0');
			T <= '1';
		else
			T <= '0';
			Qn <= Qp + 1;
		end if;
	end process Combinacional;
end simple;