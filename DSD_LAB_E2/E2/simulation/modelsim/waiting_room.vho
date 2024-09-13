-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "07/08/2024 12:21:35"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	waitingRoom IS
    PORT (
	\Open\ : OUT std_logic;
	T : IN std_logic;
	Ent : IN std_logic;
	\IN\ : IN std_logic;
	set : IN std_logic;
	clk : IN std_logic;
	\OUT\ : IN std_logic;
	clr : IN std_logic;
	Close : OUT std_logic;
	A : OUT std_logic_vector(3 DOWNTO 0)
	);
END waitingRoom;

-- Design Ports Information
-- Open	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Close	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ent	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF waitingRoom IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_Open\ : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_Ent : std_logic;
SIGNAL \ww_IN\ : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \ww_OUT\ : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_Close : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL \Open~output_o\ : std_logic;
SIGNAL \Close~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \IN~input_o\ : std_logic;
SIGNAL \inst2|inst|inst|inst3~combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \inst2|inst28|inst|inst1~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst1~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst3~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst|inst11~1_combout\ : std_logic;
SIGNAL \OUT~input_o\ : std_logic;
SIGNAL \inst27~combout\ : std_logic;
SIGNAL \inst2|inst21|inst2~combout\ : std_logic;
SIGNAL \inst2|inst21|inst|inst3~combout\ : std_logic;
SIGNAL \inst2|inst21|inst|inst1~1_combout\ : std_logic;
SIGNAL \inst2|inst21|inst|inst3~1_combout\ : std_logic;
SIGNAL \inst2|inst21|inst|inst11~1_combout\ : std_logic;
SIGNAL \inst2|inst27~0_combout\ : std_logic;
SIGNAL \inst2|inst22|inst|inst3~combout\ : std_logic;
SIGNAL \inst2|inst22|inst|inst1~1_combout\ : std_logic;
SIGNAL \inst2|inst22|inst|inst3~1_combout\ : std_logic;
SIGNAL \inst2|inst22|inst|inst11~1_combout\ : std_logic;
SIGNAL \inst2|inst34~combout\ : std_logic;
SIGNAL \inst29~combout\ : std_logic;
SIGNAL \inst2|inst33~0_combout\ : std_logic;
SIGNAL \inst2|inst28|inst|inst3~combout\ : std_logic;
SIGNAL \inst2|inst28|inst|inst1~2_combout\ : std_logic;
SIGNAL \inst2|inst28|inst|inst3~1_combout\ : std_logic;
SIGNAL \inst2|inst28|inst|inst11~1_combout\ : std_logic;
SIGNAL \inst2|inst36~combout\ : std_logic;
SIGNAL \Ent~input_o\ : std_logic;
SIGNAL \inst27~0_combout\ : std_logic;
SIGNAL \inst2|inst21|inst|ALT_INV_inst11~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst|ALT_INV_inst11~1_combout\ : std_logic;
SIGNAL \inst2|inst22|inst|ALT_INV_inst11~1_combout\ : std_logic;
SIGNAL \inst2|inst28|inst|ALT_INV_inst11~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst34~combout\ : std_logic;

BEGIN

\Open\ <= \ww_Open\;
ww_T <= T;
ww_Ent <= Ent;
\ww_IN\ <= \IN\;
ww_set <= set;
ww_clk <= clk;
\ww_OUT\ <= \OUT\;
ww_clr <= clr;
Close <= ww_Close;
A <= ww_A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst2|inst21|inst|ALT_INV_inst11~1_combout\ <= NOT \inst2|inst21|inst|inst11~1_combout\;
\inst2|inst|inst|ALT_INV_inst11~1_combout\ <= NOT \inst2|inst|inst|inst11~1_combout\;
\inst2|inst22|inst|ALT_INV_inst11~1_combout\ <= NOT \inst2|inst22|inst|inst11~1_combout\;
\inst2|inst28|inst|ALT_INV_inst11~1_combout\ <= NOT \inst2|inst28|inst|inst11~1_combout\;
\inst2|ALT_INV_inst34~combout\ <= NOT \inst2|inst34~combout\;

-- Location: IOOBUF_X33_Y22_N9
\Open~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~0_combout\,
	devoe => ww_devoe,
	o => \Open~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\Close~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_inst34~combout\,
	devoe => ww_devoe,
	o => \Close~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\A[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst28|inst|ALT_INV_inst11~1_combout\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\A[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst22|inst|ALT_INV_inst11~1_combout\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\A[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst21|inst|ALT_INV_inst11~1_combout\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\A[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|inst|ALT_INV_inst11~1_combout\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOIBUF_X33_Y28_N8
\T~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\IN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\,
	o => \IN~input_o\);

-- Location: LCCOMB_X31_Y25_N24
\inst2|inst|inst|inst3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|inst3~combout\ = (\inst2|inst|inst|inst3~1_combout\ & (\inst29~combout\ $ (!\inst2|inst|inst|inst11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datac => \inst2|inst|inst|inst3~1_combout\,
	datad => \inst2|inst|inst|inst11~1_combout\,
	combout => \inst2|inst|inst|inst3~combout\);

-- Location: IOIBUF_X33_Y25_N1
\clr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\set~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

-- Location: LCCOMB_X31_Y25_N16
\inst2|inst28|inst|inst1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst28|inst|inst1~1_combout\ = (\clk~input_o\ & \clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~input_o\,
	datad => \clr~input_o\,
	combout => \inst2|inst28|inst|inst1~1_combout\);

-- Location: LCCOMB_X32_Y25_N6
\inst2|inst|inst|inst1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|inst1~1_combout\ = (\inst2|inst28|inst|inst1~1_combout\ & ((\inst2|inst|inst|inst1~1_combout\) # ((\set~input_o\) # (\inst2|inst|inst|inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst|inst1~1_combout\,
	datab => \set~input_o\,
	datac => \inst2|inst28|inst|inst1~1_combout\,
	datad => \inst2|inst|inst|inst3~combout\,
	combout => \inst2|inst|inst|inst1~1_combout\);

-- Location: LCCOMB_X32_Y25_N8
\inst2|inst|inst|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|inst3~1_combout\ = (\clr~input_o\ & ((\inst2|inst|inst|inst3~combout\) # ((\inst2|inst|inst|inst1~1_combout\) # (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst|inst3~combout\,
	datab => \clr~input_o\,
	datac => \clk~input_o\,
	datad => \inst2|inst|inst|inst1~1_combout\,
	combout => \inst2|inst|inst|inst3~1_combout\);

-- Location: LCCOMB_X32_Y25_N16
\inst2|inst|inst|inst11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst|inst|inst11~1_combout\ = (!\set~input_o\ & (!\inst2|inst|inst|inst1~1_combout\ & ((\inst2|inst|inst|inst11~1_combout\) # (!\inst2|inst|inst|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst|inst3~1_combout\,
	datab => \inst2|inst|inst|inst11~1_combout\,
	datac => \set~input_o\,
	datad => \inst2|inst|inst|inst1~1_combout\,
	combout => \inst2|inst|inst|inst11~1_combout\);

-- Location: IOIBUF_X33_Y24_N8
\OUT~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_OUT\,
	o => \OUT~input_o\);

-- Location: LCCOMB_X32_Y24_N0
inst27 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst27~combout\ = (\inst27~0_combout\ & !\OUT~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst27~0_combout\,
	datad => \OUT~input_o\,
	combout => \inst27~combout\);

-- Location: LCCOMB_X32_Y25_N30
\inst2|inst21|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst21|inst2~combout\ = \inst2|inst21|inst|inst11~1_combout\ $ (((\inst2|inst|inst|inst11~1_combout\ $ (!\inst27~combout\)) # (!\inst29~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst2|inst21|inst|inst11~1_combout\,
	datac => \inst2|inst|inst|inst11~1_combout\,
	datad => \inst27~combout\,
	combout => \inst2|inst21|inst2~combout\);

-- Location: LCCOMB_X32_Y25_N28
\inst2|inst21|inst|inst3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst21|inst|inst3~combout\ = (\inst2|inst21|inst|inst3~1_combout\ & \inst2|inst21|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst21|inst|inst3~1_combout\,
	datac => \inst2|inst21|inst2~combout\,
	combout => \inst2|inst21|inst|inst3~combout\);

-- Location: LCCOMB_X32_Y25_N12
\inst2|inst21|inst|inst1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst21|inst|inst1~1_combout\ = (\inst2|inst28|inst|inst1~1_combout\ & ((\inst2|inst21|inst|inst1~1_combout\) # ((\set~input_o\) # (\inst2|inst21|inst|inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst21|inst|inst1~1_combout\,
	datab => \set~input_o\,
	datac => \inst2|inst28|inst|inst1~1_combout\,
	datad => \inst2|inst21|inst|inst3~combout\,
	combout => \inst2|inst21|inst|inst1~1_combout\);

-- Location: LCCOMB_X32_Y25_N4
\inst2|inst21|inst|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst21|inst|inst3~1_combout\ = (\clr~input_o\ & ((\inst2|inst21|inst|inst3~combout\) # ((\inst2|inst21|inst|inst1~1_combout\) # (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst21|inst|inst3~combout\,
	datab => \clk~input_o\,
	datac => \clr~input_o\,
	datad => \inst2|inst21|inst|inst1~1_combout\,
	combout => \inst2|inst21|inst|inst3~1_combout\);

-- Location: LCCOMB_X32_Y25_N14
\inst2|inst21|inst|inst11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst21|inst|inst11~1_combout\ = (!\set~input_o\ & (!\inst2|inst21|inst|inst1~1_combout\ & ((\inst2|inst21|inst|inst11~1_combout\) # (!\inst2|inst21|inst|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst21|inst|inst3~1_combout\,
	datab => \inst2|inst21|inst|inst11~1_combout\,
	datac => \set~input_o\,
	datad => \inst2|inst21|inst|inst1~1_combout\,
	combout => \inst2|inst21|inst|inst11~1_combout\);

-- Location: LCCOMB_X32_Y24_N26
\inst2|inst27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst27~0_combout\ = (\inst2|inst21|inst|inst11~1_combout\ & (\inst2|inst|inst|inst11~1_combout\ & ((\OUT~input_o\) # (!\inst27~0_combout\)))) # (!\inst2|inst21|inst|inst11~1_combout\ & (\inst27~0_combout\ & (!\inst2|inst|inst|inst11~1_combout\ & 
-- !\OUT~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~0_combout\,
	datab => \inst2|inst21|inst|inst11~1_combout\,
	datac => \inst2|inst|inst|inst11~1_combout\,
	datad => \OUT~input_o\,
	combout => \inst2|inst27~0_combout\);

-- Location: LCCOMB_X31_Y25_N6
\inst2|inst22|inst|inst3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst22|inst|inst3~combout\ = (\inst2|inst22|inst|inst3~1_combout\ & (\inst2|inst22|inst|inst11~1_combout\ $ (((!\inst2|inst27~0_combout\) # (!\inst29~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst2|inst22|inst|inst3~1_combout\,
	datac => \inst2|inst27~0_combout\,
	datad => \inst2|inst22|inst|inst11~1_combout\,
	combout => \inst2|inst22|inst|inst3~combout\);

-- Location: LCCOMB_X32_Y25_N0
\inst2|inst22|inst|inst1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst22|inst|inst1~1_combout\ = (\inst2|inst28|inst|inst1~1_combout\ & ((\inst2|inst22|inst|inst1~1_combout\) # ((\inst2|inst22|inst|inst3~combout\) # (\set~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst28|inst|inst1~1_combout\,
	datab => \inst2|inst22|inst|inst1~1_combout\,
	datac => \inst2|inst22|inst|inst3~combout\,
	datad => \set~input_o\,
	combout => \inst2|inst22|inst|inst1~1_combout\);

-- Location: LCCOMB_X32_Y25_N18
\inst2|inst22|inst|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst22|inst|inst3~1_combout\ = (\clr~input_o\ & (((\inst2|inst22|inst|inst3~combout\) # (\inst2|inst22|inst|inst1~1_combout\)) # (!\clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datab => \clr~input_o\,
	datac => \inst2|inst22|inst|inst3~combout\,
	datad => \inst2|inst22|inst|inst1~1_combout\,
	combout => \inst2|inst22|inst|inst3~1_combout\);

-- Location: LCCOMB_X32_Y25_N10
\inst2|inst22|inst|inst11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst22|inst|inst11~1_combout\ = (!\set~input_o\ & (!\inst2|inst22|inst|inst1~1_combout\ & ((\inst2|inst22|inst|inst11~1_combout\) # (!\inst2|inst22|inst|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst22|inst|inst11~1_combout\,
	datab => \inst2|inst22|inst|inst3~1_combout\,
	datac => \set~input_o\,
	datad => \inst2|inst22|inst|inst1~1_combout\,
	combout => \inst2|inst22|inst|inst11~1_combout\);

-- Location: LCCOMB_X32_Y24_N24
\inst2|inst34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst34~combout\ = (((!\inst2|inst21|inst|inst11~1_combout\) # (!\inst2|inst22|inst|inst11~1_combout\)) # (!\inst2|inst|inst|inst11~1_combout\)) # (!\inst2|inst28|inst|inst11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst28|inst|inst11~1_combout\,
	datab => \inst2|inst|inst|inst11~1_combout\,
	datac => \inst2|inst22|inst|inst11~1_combout\,
	datad => \inst2|inst21|inst|inst11~1_combout\,
	combout => \inst2|inst34~combout\);

-- Location: LCCOMB_X32_Y24_N2
inst29 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst29~combout\ = (\OUT~input_o\ & (((\inst2|inst34~combout\ & !\IN~input_o\)))) # (!\OUT~input_o\ & (\inst27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~0_combout\,
	datab => \inst2|inst34~combout\,
	datac => \IN~input_o\,
	datad => \OUT~input_o\,
	combout => \inst29~combout\);

-- Location: LCCOMB_X32_Y25_N20
\inst2|inst33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst33~0_combout\ = (\inst2|inst22|inst|inst11~1_combout\ & (\inst2|inst|inst|inst11~1_combout\ & (\inst2|inst21|inst|inst11~1_combout\ & !\inst27~combout\))) # (!\inst2|inst22|inst|inst11~1_combout\ & (!\inst2|inst|inst|inst11~1_combout\ & 
-- (!\inst2|inst21|inst|inst11~1_combout\ & \inst27~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst22|inst|inst11~1_combout\,
	datab => \inst2|inst|inst|inst11~1_combout\,
	datac => \inst2|inst21|inst|inst11~1_combout\,
	datad => \inst27~combout\,
	combout => \inst2|inst33~0_combout\);

-- Location: LCCOMB_X32_Y25_N24
\inst2|inst28|inst|inst3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst28|inst|inst3~combout\ = (\inst2|inst28|inst|inst3~1_combout\ & (\inst2|inst28|inst|inst11~1_combout\ $ (((!\inst2|inst33~0_combout\) # (!\inst29~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst29~combout\,
	datab => \inst2|inst33~0_combout\,
	datac => \inst2|inst28|inst|inst3~1_combout\,
	datad => \inst2|inst28|inst|inst11~1_combout\,
	combout => \inst2|inst28|inst|inst3~combout\);

-- Location: LCCOMB_X32_Y25_N22
\inst2|inst28|inst|inst1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst28|inst|inst1~2_combout\ = (\inst2|inst28|inst|inst1~1_combout\ & ((\inst2|inst28|inst|inst1~2_combout\) # ((\set~input_o\) # (\inst2|inst28|inst|inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst28|inst|inst1~1_combout\,
	datab => \inst2|inst28|inst|inst1~2_combout\,
	datac => \set~input_o\,
	datad => \inst2|inst28|inst|inst3~combout\,
	combout => \inst2|inst28|inst|inst1~2_combout\);

-- Location: LCCOMB_X32_Y25_N26
\inst2|inst28|inst|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst28|inst|inst3~1_combout\ = (\clr~input_o\ & ((\inst2|inst28|inst|inst3~combout\) # ((\inst2|inst28|inst|inst1~2_combout\) # (!\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst28|inst|inst3~combout\,
	datab => \clk~input_o\,
	datac => \inst2|inst28|inst|inst1~2_combout\,
	datad => \clr~input_o\,
	combout => \inst2|inst28|inst|inst3~1_combout\);

-- Location: LCCOMB_X32_Y25_N2
\inst2|inst28|inst|inst11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst28|inst|inst11~1_combout\ = (!\inst2|inst28|inst|inst1~2_combout\ & (!\set~input_o\ & ((\inst2|inst28|inst|inst11~1_combout\) # (!\inst2|inst28|inst|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst28|inst|inst3~1_combout\,
	datab => \inst2|inst28|inst|inst11~1_combout\,
	datac => \inst2|inst28|inst|inst1~2_combout\,
	datad => \set~input_o\,
	combout => \inst2|inst28|inst|inst11~1_combout\);

-- Location: LCCOMB_X32_Y24_N4
\inst2|inst36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst36~combout\ = (!\inst2|inst28|inst|inst11~1_combout\ & (!\inst2|inst|inst|inst11~1_combout\ & (!\inst2|inst22|inst|inst11~1_combout\ & !\inst2|inst21|inst|inst11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst28|inst|inst11~1_combout\,
	datab => \inst2|inst|inst|inst11~1_combout\,
	datac => \inst2|inst22|inst|inst11~1_combout\,
	datad => \inst2|inst21|inst|inst11~1_combout\,
	combout => \inst2|inst36~combout\);

-- Location: IOIBUF_X33_Y24_N1
\Ent~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ent,
	o => \Ent~input_o\);

-- Location: LCCOMB_X32_Y24_N18
\inst27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst27~0_combout\ = (\T~input_o\ & (\IN~input_o\ & (!\inst2|inst36~combout\ & \Ent~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T~input_o\,
	datab => \IN~input_o\,
	datac => \inst2|inst36~combout\,
	datad => \Ent~input_o\,
	combout => \inst27~0_combout\);

\ww_Open\ <= \Open~output_o\;

ww_Close <= \Close~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;
END structure;


