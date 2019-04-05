LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity nuevo_vga is 
	port(
		clk			:	in  std_logic;
		button		:	in	std_logic;
		switch		:	in std_logic_vector(7 downto 0);
	  	pixel_clk	: 	out std_logic;
		h_sync		:	out	std_logic;
		v_sync		:	out std_logic;
		n_blank		:   out std_logic;
		n_sync		:	out	std_logic;
		R,G,B		:	out std_logic_vector(7 downto 0)
		);
end nuevo_vga;

architecture simple of nuevo_vga is

component vga_controller is
	GENERIC(
		h_pulse 	:	INTEGER := 112;    	--horiztonal sync pulse width in pixels
		h_bp	 	:	INTEGER := 248;		--horiztonal back porch width in pixels
		h_pixels	:	INTEGER := 1280;		--horiztonal display width in pixels
		h_fp	 	:	INTEGER := 48;		--horiztonal front porch width in pixels
		h_pol		:	STD_LOGIC := '1';		--horizontal sync pulse polarity (1 = positive, 0 = negative)
		v_pulse 	:	INTEGER := 3;			--vertical sync pulse width in rows
		v_bp	 	:	INTEGER := 38;			--vertical back porch width in rows
		v_pixels	:	INTEGER := 1024;		--vertical display width in rows
		v_fp	 	:	INTEGER := 1;			--vertical front porch width in rows
		v_pol		:	STD_LOGIC := '1');	--vertical sync pulse polarity (1 = positive, 0 = negative)
	PORT(
		pixel_clk	:	IN		STD_LOGIC;	--pixel clock at frequency of VGA mode being used
		reset_n		:	IN		STD_LOGIC;	--active low asycnchronous reset
		h_sync		:	OUT	STD_LOGIC;	--horiztonal sync pulse
		v_sync		:	OUT	STD_LOGIC;	--vertical sync pulse
		disp_ena	:	OUT	STD_LOGIC;	--display enable ('1' = display time, '0' = blanking time)
		column		:	OUT	INTEGER;		--horizontal pixel coordinate
		row			:	OUT	INTEGER;		--vertical pixel coordinate
		n_blank		:	OUT	STD_LOGIC;	--direct blacking output to DAC
		n_sync		:	OUT	STD_LOGIC); --sync-on-green output to DAC
end component;

component image_generator is
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
end component;

component pll is
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
END component;

component RAM is
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
end component;

component base_1 is
	port(
	Clk : in std_logic;
	RST : in std_logic;
	T : out std_logic
	);
end component;

signal  clk_out, disp_ena, base_t : std_logic;
signal  dir : Integer;
signal	row, col, dato : integer;

begin

	pixel_clk <= clk_out;
	
	control:	vga_controller  port map(clk_out, '1',h_sync, v_sync, disp_ena, col, row, n_blank, n_sync);
	 imagen:	image_generator	port map(disp_ena, row, col, dato, dir, R, G, B);
	memoria:	RAM port map (base_t, button, dir, '1', switch, dato); 
	base:		base_1 port map	(clk, button, base_t);
	pll_clk:	pll	port map(clk, clk_out);
	
end simple;
