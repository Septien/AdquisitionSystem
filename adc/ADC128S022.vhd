library IEEE;
use ieee.std_logic_1164.all;
entity Fsm_ADC128 is
	port(
	RST: in std_logic;
	CLK: in std_logic;
	START_ADC: in std_logic;
	END_SPI: in std_logic;
	EOC_ADC: out std_logic;
	Selector: out std_logic;
	START_SPI: out std_logic;
	HR1: out std_logic;	
	HR2: out std_logic;
	CS: out std_logic
	);	
end Fsm_ADC128;
architecture simple of Fsm_ADC128 is 
signal Qn,Qp : std_logic_vector(2 downto 0);
begin 
	combinacional:process(Qp,START_ADC,END_SPI)
	begin
		case Qp is 
			when "000" =>
				if (START_ADC= '1')then
					Qn<= "001";
				else 
					Qn<="000";
				end if;	
			EOC_ADC<='1';		 
			Selector<='0';
			START_SPI<='0';	
			HR1<='0';
			HR2<='0';
			CS<='1';
			
		
			when"001"=>
			Qn<="010";
			EOC_ADC<='0';		 
			Selector<='1';
			START_SPI<='1';	
			HR1<='0';
			HR2<='0';
			CS<='0';
		
		
			when "010"=>		  -- MSB
				if (END_SPI= '1')then
					Qn<= "011";
				else 
					Qn<="010";
				end if;
			EOC_ADC<='0';		 
			Selector<='1';
			START_SPI<='0';	
			HR1<='0';
			HR2<='0';
			CS<='0';
			
			when "011"=>
			Qn<="100";
			EOC_ADC<='0';		 
			Selector<='0';
			START_SPI<='1';	
			HR1<='1';
			HR2<='0';
			CS<='0';
			
			when "100"=>		 --LSB
				if (END_SPI= '1')then
					Qn<= "101";
				else 
					Qn<="100";
				end if;
			EOC_ADC<='0';		 
			Selector<='0';
			START_SPI<='0';	
			HR1<='0';
			HR2<='0';
			CS<='0';
			
			when others =>
			Qn<="000";
			EOC_ADC<='0';		 
			Selector<='0';
			START_SPI<='1';	
			HR1<='0';
			HR2<='1';
			CS<='0';
			
			
		end case;
	end process;
	secuencial:process(RST,CLK)
		begin
		if(RST='1') then 
			Qp<=(others=>'0');
		elsif(CLK'event and CLK='1')then
			Qp<=Qn;
		end if ;
		end process;
		end simple;
