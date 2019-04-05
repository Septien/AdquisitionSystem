library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity RAM is
	generic(
		m	:	integer := 8;
		n	:	integer := 6;
		k	:	integer := 60
	);
	port(
		clk	:	in  std_logic;
		rst	:	in	std_logic;
		AS	:	in 	Integer;
		WE	:	in  std_logic;
		DE	:	in  std_logic_vector(m-1 downto 0);
		DS	:	out Integer
		);
	end RAM;

architecture simple of RAM is
	subtype Ancho_del_Registro is Integer; 	
	type	Memoria is array(natural range <>) of Ancho_del_registro;
	signal  Memoria_RAM : Memoria(0 to k-1);
begin 
	
	--Control de Lectura
	Lectura: process(AS, Memoria_RAM)
	begin
		DS <= Memoria_RAM(AS);
	end process Lectura;
	
	--Control de escritura
	Escritura: process(clk)
	begin 
		if (rst = '0') then
			for i in 0 to k-1 loop
				--if (i = 0) then
					--Memoria_Ram(0) <= 700;
				--else
					Memoria_Ram(i) <= 0;
				--end if;
			end loop;
		elsif(clk'event and clk='1') then 
			if (WE='1') then 
				for i in k-1 downto 0 loop
					if (i = 0) then
						Memoria_Ram(0) <= (conv_integer(unsigned(DE))*3);
					else
						Memoria_Ram(i) <= Memoria_Ram(i-1);
					end if;
				end loop;
			end if;
		end if;
	end process Escritura;
end simple;