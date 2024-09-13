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

-- DATE "07/07/2024 14:46:46"

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

ENTITY 	divideable3 IS
    PORT (
	ans : OUT std_logic;
	in1 : IN std_logic_vector(3 DOWNTO 0);
	in3 : IN std_logic_vector(3 DOWNTO 0);
	in0 : IN std_logic_vector(3 DOWNTO 0);
	in2 : IN std_logic_vector(3 DOWNTO 0)
	);
END divideable3;

-- Design Ports Information
-- ans	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in0[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in3[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF divideable3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ans : std_logic;
SIGNAL ww_in1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_in3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_in0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_in2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ans~output_o\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \in2[3]~input_o\ : std_logic;
SIGNAL \in2[2]~input_o\ : std_logic;
SIGNAL \inst3|inst7~0_combout\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \in1[3]~input_o\ : std_logic;
SIGNAL \in1[2]~input_o\ : std_logic;
SIGNAL \inst|inst7~0_combout\ : std_logic;
SIGNAL \in0[3]~input_o\ : std_logic;
SIGNAL \in0[2]~input_o\ : std_logic;
SIGNAL \in0[0]~input_o\ : std_logic;
SIGNAL \in0[1]~input_o\ : std_logic;
SIGNAL \inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst3|inst~0_combout\ : std_logic;
SIGNAL \in3[3]~input_o\ : std_logic;
SIGNAL \in3[0]~input_o\ : std_logic;
SIGNAL \in3[1]~input_o\ : std_logic;
SIGNAL \in3[2]~input_o\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst~0_combout\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst10~2_combout\ : std_logic;
SIGNAL \inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst10~3_combout\ : std_logic;
SIGNAL \inst10~4_combout\ : std_logic;
SIGNAL \inst10~5_combout\ : std_logic;
SIGNAL \inst7|inst1|inst1|inst2~0_combout\ : std_logic;
SIGNAL \inst7|inst1|inst1|inst2~1_combout\ : std_logic;
SIGNAL \inst10~7_combout\ : std_logic;
SIGNAL \inst10~9_combout\ : std_logic;
SIGNAL \inst10~6_combout\ : std_logic;
SIGNAL \inst10~8_combout\ : std_logic;
SIGNAL \inst10~10_combout\ : std_logic;
SIGNAL \inst10~11_combout\ : std_logic;
SIGNAL \ALT_INV_inst10~11_combout\ : std_logic;

BEGIN

ans <= ww_ans;
ww_in1 <= in1;
ww_in3 <= in3;
ww_in0 <= in0;
ww_in2 <= in2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst10~11_combout\ <= NOT \inst10~11_combout\;

-- Location: IOOBUF_X20_Y31_N2
\ans~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst10~11_combout\,
	devoe => ww_devoe,
	o => \ans~output_o\);

-- Location: IOIBUF_X20_Y31_N8
\in2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\in2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\in2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(3),
	o => \in2[3]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\in2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(2),
	o => \in2[2]~input_o\);

-- Location: LCCOMB_X22_Y12_N16
\inst3|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst7~0_combout\ = (\in2[1]~input_o\ & (!\in2[0]~input_o\ & (!\in2[3]~input_o\ & !\in2[2]~input_o\))) # (!\in2[1]~input_o\ & ((\in2[0]~input_o\ & ((\in2[2]~input_o\))) # (!\in2[0]~input_o\ & (\in2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[1]~input_o\,
	datab => \in2[0]~input_o\,
	datac => \in2[3]~input_o\,
	datad => \in2[2]~input_o\,
	combout => \inst3|inst7~0_combout\);

-- Location: IOIBUF_X22_Y31_N8
\in1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\in1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\in1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(3),
	o => \in1[3]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\in1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(2),
	o => \in1[2]~input_o\);

-- Location: LCCOMB_X25_Y28_N24
\inst|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst7~0_combout\ = (\in1[0]~input_o\ & (!\in1[1]~input_o\ & ((\in1[2]~input_o\)))) # (!\in1[0]~input_o\ & ((\in1[1]~input_o\ & (!\in1[3]~input_o\ & !\in1[2]~input_o\)) # (!\in1[1]~input_o\ & (\in1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in1[3]~input_o\,
	datad => \in1[2]~input_o\,
	combout => \inst|inst7~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\in0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(3),
	o => \in0[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\in0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(2),
	o => \in0[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\in0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(0),
	o => \in0[0]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\in0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(1),
	o => \in0[1]~input_o\);

-- Location: LCCOMB_X22_Y16_N16
\inst2|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst7~0_combout\ = (\in0[2]~input_o\ & (!\in0[1]~input_o\ & ((\in0[3]~input_o\) # (\in0[0]~input_o\)))) # (!\in0[2]~input_o\ & (!\in0[0]~input_o\ & (\in0[3]~input_o\ $ (\in0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[3]~input_o\,
	datab => \in0[2]~input_o\,
	datac => \in0[0]~input_o\,
	datad => \in0[1]~input_o\,
	combout => \inst2|inst7~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\inst10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\inst3|inst7~0_combout\ & ((\inst|inst7~0_combout\) # (\inst2|inst7~0_combout\))) # (!\inst3|inst7~0_combout\ & (\inst|inst7~0_combout\ & \inst2|inst7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst7~0_combout\,
	datac => \inst|inst7~0_combout\,
	datad => \inst2|inst7~0_combout\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X25_Y28_N10
\inst|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\in1[0]~input_o\ & (\in1[1]~input_o\ $ (((!\in1[3]~input_o\ & !\in1[2]~input_o\))))) # (!\in1[0]~input_o\ & ((\in1[1]~input_o\ & (\in1[3]~input_o\)) # (!\in1[1]~input_o\ & ((\in1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[0]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in1[3]~input_o\,
	datad => \in1[2]~input_o\,
	combout => \inst|inst~0_combout\);

-- Location: LCCOMB_X22_Y12_N18
\inst3|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst3|inst~0_combout\ = (\in2[0]~input_o\ & (\in2[1]~input_o\ $ (((!\in2[3]~input_o\ & !\in2[2]~input_o\))))) # (!\in2[0]~input_o\ & ((\in2[1]~input_o\ & (\in2[3]~input_o\)) # (!\in2[1]~input_o\ & ((\in2[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[1]~input_o\,
	datab => \in2[0]~input_o\,
	datac => \in2[3]~input_o\,
	datad => \in2[2]~input_o\,
	combout => \inst3|inst~0_combout\);

-- Location: IOIBUF_X14_Y0_N8
\in3[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(3),
	o => \in3[3]~input_o\);

-- Location: IOIBUF_X16_Y31_N1
\in3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(0),
	o => \in3[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\in3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(1),
	o => \in3[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\in3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in3(2),
	o => \in3[2]~input_o\);

-- Location: LCCOMB_X21_Y11_N0
\inst1|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = (\in3[0]~input_o\ & (\in3[1]~input_o\ $ (((!\in3[3]~input_o\ & !\in3[2]~input_o\))))) # (!\in3[0]~input_o\ & ((\in3[1]~input_o\ & (\in3[3]~input_o\)) # (!\in3[1]~input_o\ & ((\in3[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[3]~input_o\,
	datab => \in3[0]~input_o\,
	datac => \in3[1]~input_o\,
	datad => \in3[2]~input_o\,
	combout => \inst1|inst~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\inst2|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst~0_combout\ = (\in0[0]~input_o\ & (\in0[1]~input_o\ $ (((!\in0[3]~input_o\ & !\in0[2]~input_o\))))) # (!\in0[0]~input_o\ & ((\in0[1]~input_o\ & (\in0[3]~input_o\)) # (!\in0[1]~input_o\ & ((\in0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[3]~input_o\,
	datab => \in0[2]~input_o\,
	datac => \in0[0]~input_o\,
	datad => \in0[1]~input_o\,
	combout => \inst2|inst~0_combout\);

-- Location: LCCOMB_X22_Y16_N30
\inst10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\inst|inst~0_combout\ & ((\inst3|inst~0_combout\ & ((\inst1|inst~0_combout\) # (\inst2|inst~0_combout\))) # (!\inst3|inst~0_combout\ & (\inst1|inst~0_combout\ $ (!\inst2|inst~0_combout\))))) # (!\inst|inst~0_combout\ & 
-- (\inst3|inst~0_combout\ $ (\inst1|inst~0_combout\ $ (\inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~0_combout\,
	datab => \inst3|inst~0_combout\,
	datac => \inst1|inst~0_combout\,
	datad => \inst2|inst~0_combout\,
	combout => \inst10~1_combout\);

-- Location: LCCOMB_X22_Y16_N24
\inst10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~2_combout\ = \inst3|inst7~0_combout\ $ (\inst|inst7~0_combout\ $ (\inst2|inst7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst7~0_combout\,
	datac => \inst|inst7~0_combout\,
	datad => \inst2|inst7~0_combout\,
	combout => \inst10~2_combout\);

-- Location: LCCOMB_X21_Y11_N2
\inst1|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst7~0_combout\ = (\in3[0]~input_o\ & (((!\in3[1]~input_o\ & \in3[2]~input_o\)))) # (!\in3[0]~input_o\ & ((\in3[3]~input_o\ & (!\in3[1]~input_o\)) # (!\in3[3]~input_o\ & (\in3[1]~input_o\ & !\in3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3[3]~input_o\,
	datab => \in3[0]~input_o\,
	datac => \in3[1]~input_o\,
	datad => \in3[2]~input_o\,
	combout => \inst1|inst7~0_combout\);

-- Location: LCCOMB_X22_Y16_N2
\inst10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~3_combout\ = (\inst|inst~0_combout\ & ((\inst3|inst~0_combout\ & ((!\inst2|inst~0_combout\) # (!\inst1|inst~0_combout\))) # (!\inst3|inst~0_combout\ & ((\inst1|inst~0_combout\) # (\inst2|inst~0_combout\))))) # (!\inst|inst~0_combout\ & 
-- ((\inst3|inst~0_combout\ & ((\inst1|inst~0_combout\) # (\inst2|inst~0_combout\))) # (!\inst3|inst~0_combout\ & (\inst1|inst~0_combout\ & \inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~0_combout\,
	datab => \inst3|inst~0_combout\,
	datac => \inst1|inst~0_combout\,
	datad => \inst2|inst~0_combout\,
	combout => \inst10~3_combout\);

-- Location: LCCOMB_X22_Y16_N12
\inst10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~4_combout\ = (\inst10~2_combout\ & ((\inst1|inst7~0_combout\) # (\inst10~3_combout\))) # (!\inst10~2_combout\ & (\inst1|inst7~0_combout\ & \inst10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10~2_combout\,
	datac => \inst1|inst7~0_combout\,
	datad => \inst10~3_combout\,
	combout => \inst10~4_combout\);

-- Location: LCCOMB_X22_Y16_N6
\inst10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~5_combout\ = (\inst10~0_combout\ & ((\inst10~1_combout\) # (\inst10~4_combout\))) # (!\inst10~0_combout\ & (\inst10~1_combout\ $ (!\inst10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~0_combout\,
	datac => \inst10~1_combout\,
	datad => \inst10~4_combout\,
	combout => \inst10~5_combout\);

-- Location: LCCOMB_X22_Y16_N18
\inst7|inst1|inst1|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst1|inst2~0_combout\ = (\inst|inst~0_combout\ & ((\inst3|inst~0_combout\ & ((!\inst2|inst~0_combout\) # (!\inst1|inst~0_combout\))) # (!\inst3|inst~0_combout\ & ((\inst1|inst~0_combout\) # (\inst2|inst~0_combout\))))) # 
-- (!\inst|inst~0_combout\ & ((\inst3|inst~0_combout\ & ((\inst1|inst~0_combout\) # (\inst2|inst~0_combout\))) # (!\inst3|inst~0_combout\ & (\inst1|inst~0_combout\ & \inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~0_combout\,
	datab => \inst3|inst~0_combout\,
	datac => \inst1|inst~0_combout\,
	datad => \inst2|inst~0_combout\,
	combout => \inst7|inst1|inst1|inst2~0_combout\);

-- Location: LCCOMB_X22_Y16_N20
\inst7|inst1|inst1|inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst1|inst2~1_combout\ = \inst10~2_combout\ $ (\inst1|inst7~0_combout\ $ (\inst7|inst1|inst1|inst2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10~2_combout\,
	datac => \inst1|inst7~0_combout\,
	datad => \inst7|inst1|inst1|inst2~0_combout\,
	combout => \inst7|inst1|inst1|inst2~1_combout\);

-- Location: LCCOMB_X22_Y16_N26
\inst10~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~7_combout\ = (\inst2|inst~0_combout\ & ((\inst1|inst~0_combout\) # (\inst|inst~0_combout\))) # (!\inst2|inst~0_combout\ & (\inst1|inst~0_combout\ & \inst|inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst~0_combout\,
	datac => \inst1|inst~0_combout\,
	datad => \inst|inst~0_combout\,
	combout => \inst10~7_combout\);

-- Location: LCCOMB_X22_Y16_N22
\inst10~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~9_combout\ = (\inst10~0_combout\) # ((\inst1|inst7~0_combout\ & ((\inst10~7_combout\) # (\inst10~2_combout\))) # (!\inst1|inst7~0_combout\ & (\inst10~7_combout\ & \inst10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~0_combout\,
	datab => \inst1|inst7~0_combout\,
	datac => \inst10~7_combout\,
	datad => \inst10~2_combout\,
	combout => \inst10~9_combout\);

-- Location: LCCOMB_X22_Y16_N8
\inst10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~6_combout\ = \inst2|inst~0_combout\ $ (\inst1|inst~0_combout\ $ (\inst|inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst~0_combout\,
	datac => \inst1|inst~0_combout\,
	datad => \inst|inst~0_combout\,
	combout => \inst10~6_combout\);

-- Location: LCCOMB_X22_Y16_N4
\inst10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~8_combout\ = (\inst1|inst7~0_combout\ & (\inst10~0_combout\ $ (((!\inst10~7_combout\ & !\inst10~2_combout\))))) # (!\inst1|inst7~0_combout\ & ((\inst10~0_combout\ & (\inst10~7_combout\ & \inst10~2_combout\)) # (!\inst10~0_combout\ & 
-- (\inst10~7_combout\ $ (\inst10~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~0_combout\,
	datab => \inst1|inst7~0_combout\,
	datac => \inst10~7_combout\,
	datad => \inst10~2_combout\,
	combout => \inst10~8_combout\);

-- Location: LCCOMB_X22_Y16_N0
\inst10~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~10_combout\ = (\inst10~9_combout\ & ((\inst10~6_combout\ $ (!\inst3|inst~0_combout\)) # (!\inst10~8_combout\))) # (!\inst10~9_combout\ & ((\inst10~6_combout\ & ((\inst10~8_combout\) # (!\inst3|inst~0_combout\))) # (!\inst10~6_combout\ & 
-- ((\inst3|inst~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~9_combout\,
	datab => \inst10~6_combout\,
	datac => \inst10~8_combout\,
	datad => \inst3|inst~0_combout\,
	combout => \inst10~10_combout\);

-- Location: LCCOMB_X22_Y16_N14
\inst10~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10~11_combout\ = (\inst7|inst1|inst1|inst2~1_combout\ & (\inst10~5_combout\)) # (!\inst7|inst1|inst1|inst2~1_combout\ & ((\inst10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~5_combout\,
	datab => \inst7|inst1|inst1|inst2~1_combout\,
	datad => \inst10~10_combout\,
	combout => \inst10~11_combout\);

ww_ans <= \ans~output_o\;
END structure;


