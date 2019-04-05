library IEEE;
use ieee.std_logic_1164.all;

entity LUT_ADC128 is
	port(
		OPC: in std_logic_vector(2 downto 0);
		Kt: out std_logic_vector(7 downto 0)
		);
end LUT_ADC128;
architecture combinacional of LUT_ADC128 is	
begin 			  
	algoritmo_c1:process(OPC)
	begin	 
		case OPC is
			when "000" => Kt <="00000000";	-- IN 0		 
			when "001" => Kt <="00001000";	-- IN 1
			when "010" => Kt <="00010000";	-- IN 2
			when "011" => Kt <="00011000";	-- IN 3
			when "100" => Kt <="00100000";	-- IN 4
			when "101" => Kt <="00101000";	-- IN 5
			when "110" => Kt <="00110000";	-- IN 6
			when others => Kt <="00111000";	-- IN 7	  
	end case;
	end process;
end combinacional;