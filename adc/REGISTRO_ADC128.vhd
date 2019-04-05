library IEEE;
use ieee.std_logic_1164.all;

entity REGISTRO_ADC128 is 
	generic(
	n:integer :=8
	);
	port(
	RST,CLK : in std_logic;
	MOSI_SPI: in std_logic_vector(n-1 downto 0);
	HR1: in std_logic;
	MOSI_ADC: out std_logic_vector(n-1 downto 0)
	);
end REGISTRO_ADC128;

architecture secuencial of REGISTRO_ADC128 is 
signal Qp,Qn : std_logic_vector(n-1 downto 0) ;
begin 
	combinacional:process(MOSI_SPI,HR1,Qp)
	begin
		if(HR1='0') then
			Qn <= Qp;
		else
			Qn <= MOSI_SPI;
		end if;
	end process;
	MOSI_ADC<=Qp;			
	secuencial:process(RST,CLK)
	 begin 
		 if (RST='1')then
			 Qp<=(others =>'0');
		 elsif(CLK'event and CLK ='1')then
			 Qp<=Qn;
		 end if;
		 end process;
	 end secuencial;
