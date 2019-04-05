LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY image_generator IS
	GENERIC(
		pixels_y :	INTEGER := 478;    --row that first color will persist until
		pixels_x	:	INTEGER := 600);   --column that first color will persist until
	PORT(
		disp_ena		:	IN		STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		row			:	IN		INTEGER;		--row pixel coordinate
		column		:	IN		INTEGER;		--column pixel coordinate
		height		:	IN		INTEGER;
		memory		:	OUT INTEGER;
		red			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
		green			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
		blue			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0')); --blue magnitude output to DAC
END image_generator;

ARCHITECTURE behavior OF image_generator IS
BEGIN
	PROCESS(disp_ena, row, column,height)
	BEGIN
		IF(disp_ena = '1') THEN		--display time
			-- Axes display
			IF ((row > 1 ) AND (column > 19) AND (row <1022) AND (column < 40))THEN
				red <= (OTHERS => '0');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');
			ELSIF ((row > 1001 ) AND (column > 39) AND (row <1022) AND (column < 1240)) THEN
				red <= (OTHERS => '0');
				green	<= (OTHERS => '0');
				blue <= (OTHERS => '0');
			
			-- dato 0
			ELSIF ((row > 1 ) AND (column >39) AND (row <1002) AND (column <60)) THEN
				memory <= 0;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 1
			ELSIF ((row > 1 ) AND (column >59) AND (row <1002) AND (column <80)) THEN
				memory <= 1;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 2
			ELSIF ((row > 1 ) AND (column >79) AND (row <1002) AND (column <100)) THEN
				memory <= 2;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 3
			ELSIF ((row > 1 ) AND (column >99) AND (row <1002) AND (column <120)) THEN
				memory <= 3;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 4
			ELSIF ((row > 1 ) AND (column >119) AND (row <1002) AND (column <140)) THEN
				memory <= 4;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 5
			ELSIF ((row > 1 ) AND (column >139) AND (row <1002) AND (column <160)) THEN
				memory <= 5;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 6
			ELSIF ((row > 1 ) AND (column >159) AND (row <1002) AND (column <180)) THEN
				memory <= 6;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 7
			ELSIF ((row > 1 ) AND (column >179) AND (row <1002) AND (column <200)) THEN
				memory <= 7;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 8
			ELSIF ((row > 1 ) AND (column >199) AND (row <1002) AND (column <220)) THEN
				memory <= 8;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 9
			ELSIF ((row > 1 ) AND (column >219) AND (row <1002) AND (column <240)) THEN
				memory <= 9;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 10
			ELSIF ((row > 1 ) AND (column >239) AND (row <1002) AND (column <260)) THEN
				memory <= 10;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 11
			ELSIF ((row > 1 ) AND (column >259) AND (row <1002) AND (column <280)) THEN
				memory <= 11;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 12
			ELSIF ((row > 1 ) AND (column >279) AND (row <1002) AND (column <300)) THEN
				memory <= 12;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 13
			ELSIF ((row > 1 ) AND (column >299) AND (row <1002) AND (column <320)) THEN
				memory <= 13;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 14
			ELSIF ((row > 1 ) AND (column >319) AND (row <1002) AND (column <340)) THEN
				memory <= 14;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 15
			ELSIF ((row > 1 ) AND (column >339) AND (row <1002) AND (column <360)) THEN
				memory <= 15;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 16
			ELSIF ((row > 1 ) AND (column >359) AND (row <1002) AND (column <380)) THEN
				memory <= 16;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 17
			ELSIF ((row > 1 ) AND (column >379) AND (row <1002) AND (column <400)) THEN
				memory <= 17;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 18
			ELSIF ((row > 1 ) AND (column >399) AND (row <1002) AND (column <420)) THEN
				memory <= 18;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 19
			ELSIF ((row > 1 ) AND (column >419) AND (row <1002) AND (column <440)) THEN
				memory <= 19;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 20
			ELSIF ((row > 1 ) AND (column >439) AND (row <1002) AND (column <460)) THEN
				memory <= 20;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 21
			ELSIF ((row > 1 ) AND (column >459) AND (row <1002) AND (column <480)) THEN
				memory <= 21;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 22
			ELSIF ((row > 1 ) AND (column >479) AND (row <1002) AND (column <500)) THEN
				memory <= 22;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 23
			ELSIF ((row > 1 ) AND (column >499) AND (row <1002) AND (column <520)) THEN
				memory <= 23;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 24
			ELSIF ((row > 1 ) AND (column >519) AND (row <1002) AND (column <540)) THEN
				memory <= 24;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 25
			ELSIF ((row > 1 ) AND (column >539) AND (row <1002) AND (column <560)) THEN
				memory <= 25;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 26
			ELSIF ((row > 1 ) AND (column >559) AND (row <1002) AND (column <580)) THEN
				memory <= 26;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 27
			ELSIF ((row > 1 ) AND (column >579) AND (row <1002) AND (column <600)) THEN
				memory <= 27;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 28
			ELSIF ((row > 1 ) AND (column >599) AND (row <1002) AND (column <620)) THEN
				memory <= 28;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 29
			ELSIF ((row > 1 ) AND (column >619) AND (row <1002) AND (column <640)) THEN
				memory <= 29;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 30
			ELSIF ((row > 1 ) AND (column >639) AND (row <1002) AND (column <660)) THEN
				memory <= 30;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 31
			ELSIF ((row > 1 ) AND (column >659) AND (row <1002) AND (column <680)) THEN
				memory <= 31;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 32
			ELSIF ((row > 1 ) AND (column >679) AND (row <1002) AND (column <700)) THEN
				memory <= 32;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 33
			ELSIF ((row > 1 ) AND (column >699) AND (row <1002) AND (column <720)) THEN
				memory <= 33;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 34
			ELSIF ((row > 1 ) AND (column >719) AND (row <1002) AND (column <740)) THEN
				memory <= 34;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 35
			ELSIF ((row > 1 ) AND (column >739) AND (row <1002) AND (column <760)) THEN
				memory <= 35;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 36
			ELSIF ((row > 1 ) AND (column >759) AND (row <1002) AND (column <780)) THEN
				memory <= 36;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 37
			ELSIF ((row > 1 ) AND (column >779) AND (row <1002) AND (column <800)) THEN
				memory <= 37;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 38
			ELSIF ((row > 1 ) AND (column >799) AND (row <1002) AND (column <820)) THEN
				memory <= 38;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 39
			ELSIF ((row > 1 ) AND (column >819) AND (row <1002) AND (column <840)) THEN
				memory <= 39;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 40
			ELSIF ((row > 1 ) AND (column >839) AND (row <1002) AND (column <860)) THEN
				memory <= 40;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 41
			ELSIF ((row > 1 ) AND (column >859) AND (row <1002) AND (column <880)) THEN
				memory <= 41;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 42
			ELSIF ((row > 1 ) AND (column >879) AND (row <1002) AND (column <900)) THEN
				memory <= 42;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 43
			ELSIF ((row > 1 ) AND (column >899) AND (row <1002) AND (column <920)) THEN
				memory <= 43;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 44
			ELSIF ((row > 1 ) AND (column >919) AND (row <1002) AND (column <940)) THEN
				memory <= 44;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 45
			ELSIF ((row > 1 ) AND (column >939) AND (row <1002) AND (column <960)) THEN
				memory <= 45;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 46
			ELSIF ((row > 1 ) AND (column >959) AND (row <1002) AND (column <980)) THEN
				memory <= 46;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 47
			ELSIF ((row > 1 ) AND (column >979) AND (row <1002) AND (column <1000)) THEN
				memory <= 47;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 48
			ELSIF ((row > 1 ) AND (column >999) AND (row <1002) AND (column <1020)) THEN
				memory <= 48;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 49
			ELSIF ((row > 1 ) AND (column >1019) AND (row <1002) AND (column <1040)) THEN
				memory <= 49;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 50
			ELSIF ((row > 1 ) AND (column >1039) AND (row <1002) AND (column <1060)) THEN
				memory <= 50;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 51
			ELSIF ((row > 1 ) AND (column >1059) AND (row <1002) AND (column <1080)) THEN
				memory <= 51;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 52
			ELSIF ((row > 1 ) AND (column >1079) AND (row <1002) AND (column <1100)) THEN
				memory <= 52;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 53
			ELSIF ((row > 1 ) AND (column >1099) AND (row <1002) AND (column <1120)) THEN
				memory <= 53;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 54
			ELSIF ((row > 1 ) AND (column >1119) AND (row <1002) AND (column <1140)) THEN
				memory <= 54;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 55
			ELSIF ((row > 1 ) AND (column >1139) AND (row <1002) AND (column <1160)) THEN
				memory <= 55;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 56
			ELSIF ((row > 1 ) AND (column >1159) AND (row <1002) AND (column <1180)) THEN
				memory <= 56;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 57
			ELSIF ((row > 1 ) AND (column >1179) AND (row <1002) AND (column <1200)) THEN
				memory <= 57;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 58
			ELSIF ((row > 1 ) AND (column >1199) AND (row <1002) AND (column <1220)) THEN
				memory <= 58;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;

			-- dato 59
			ELSIF ((row > 1 ) AND (column >1219) AND (row <1002) AND (column <1240)) THEN
				memory <= 59;
				IF (row > (1002-height)) THEN
					red <= (OTHERS => '0');
					green <= (OTHERS => '0');
					blue <= (OTHERS => '1');
				ELSE
					red <= (OTHERS => '1');
					green <= (OTHERS => '1');
					blue <= (OTHERS => '1');
				END IF;
				
			ELSE
				red <= (OTHERS => '1');
				green	<= (OTHERS => '1');
				blue <= (OTHERS => '1');
			END IF;
		ELSE								--blanking time
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		END IF;
	
	END PROCESS;
END behavior;