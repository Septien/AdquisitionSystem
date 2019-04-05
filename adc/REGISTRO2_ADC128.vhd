library IEEE;
use ieee.std_logic_1164.all;

entity REGISTRO2_ADC128 is 
	generic(
	n:integer :=8
	);
	port(
	RST,CLK : in std_logic;
	MOSI_SPI: in std_logic_vector(n-1 downto 0);
	HR2: in std_logic;
	MOSI_ADC2: out std_logic_vector(n-1 downto 0)
	);
end REGISTRO2_ADC128;

architecture secuencial of REGISTRO2_ADC128 is 
signal Qp,Qn : std_logic_vector(n-1 downto 0) ;
begin 
	combinacional:process(MOSI_SPI,HR2,Qp)
	begin
		if(HR2='0') then
			Qn <= Qp;
		else
			Qn <= MOSI_SPI;
		end if;
	end process;
	MOSI_ADC2<=Qp;			
	secuencial:process(RST,CLK)
	 begin 
		 if (RST='1')then
			 Qp<=(others =>'0');
		 elsif(CLK'event and CLK ='1')then
			 Qp<=Qn;
		 end if;
		 end process;
	 end secuencial;
