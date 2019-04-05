library ieee;
use ieee.std_logic_1164.all;

entity MUX_ADC128 is
	port(
	Kt: in std_logic_vector(7 downto 0);
	selector: in std_logic;
	BYTE_TX: out std_logic_vector(7 downto 0)
	);
end MUX_ADC128;

architecture combinacional of MUX_ADC128 is
begin
	m:process(selector,Kt)
	begin
	if(selector='1') then
		BYTE_TX<=Kt;
		
	else
		BYTE_TX<="00000000";
	end if;	
	end process;
	end combinacional;
	
	