-- Copyright (C) 1991-2012 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 178 05/31/2012 SJ Web Edition"

-- DATE "02/06/2013 15:20:59"

-- 
-- Device: Altera EP3C16U484C6 Package UFBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FDD_Lab7 IS
    PORT (
	Hex0 : OUT std_logic_vector(6 DOWNTO 0);
	Clk : IN std_logic;
	Reset : IN std_logic;
	Button2 : IN std_logic;
	Button1 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	Hex1 : OUT std_logic_vector(6 DOWNTO 0);
	Hex2 : OUT std_logic_vector(6 DOWNTO 0);
	Hex3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END FDD_Lab7;

-- Design Ports Information
-- Hex0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Button2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Button1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FDD_Lab7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Button2 : std_logic;
SIGNAL ww_Button1 : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst4|cntDiv[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|cntDiv[1]~25_combout\ : std_logic;
SIGNAL \inst4|cntDiv[1]~26\ : std_logic;
SIGNAL \inst4|cntDiv[2]~27_combout\ : std_logic;
SIGNAL \inst4|cntDiv[2]~28\ : std_logic;
SIGNAL \inst4|cntDiv[3]~29_combout\ : std_logic;
SIGNAL \inst4|cntDiv[3]~30\ : std_logic;
SIGNAL \inst4|cntDiv[4]~31_combout\ : std_logic;
SIGNAL \inst4|cntDiv[4]~32\ : std_logic;
SIGNAL \inst4|cntDiv[5]~33_combout\ : std_logic;
SIGNAL \inst4|cntDiv[5]~34\ : std_logic;
SIGNAL \inst4|cntDiv[6]~35_combout\ : std_logic;
SIGNAL \inst4|cntDiv[6]~36\ : std_logic;
SIGNAL \inst4|cntDiv[7]~37_combout\ : std_logic;
SIGNAL \inst4|cntDiv[7]~38\ : std_logic;
SIGNAL \inst4|cntDiv[8]~39_combout\ : std_logic;
SIGNAL \inst4|cntDiv[8]~40\ : std_logic;
SIGNAL \inst4|cntDiv[9]~41_combout\ : std_logic;
SIGNAL \inst4|cntDiv[9]~42\ : std_logic;
SIGNAL \inst4|cntDiv[10]~43_combout\ : std_logic;
SIGNAL \inst4|cntDiv[10]~44\ : std_logic;
SIGNAL \inst4|cntDiv[11]~45_combout\ : std_logic;
SIGNAL \inst4|cntDiv[11]~46\ : std_logic;
SIGNAL \inst4|cntDiv[12]~47_combout\ : std_logic;
SIGNAL \inst4|cntDiv[12]~48\ : std_logic;
SIGNAL \inst4|cntDiv[13]~49_combout\ : std_logic;
SIGNAL \inst4|cntDiv[13]~50\ : std_logic;
SIGNAL \inst4|cntDiv[14]~51_combout\ : std_logic;
SIGNAL \inst4|cntDiv[14]~52\ : std_logic;
SIGNAL \inst4|cntDiv[15]~53_combout\ : std_logic;
SIGNAL \inst4|cntDiv[15]~54\ : std_logic;
SIGNAL \inst4|cntDiv[16]~55_combout\ : std_logic;
SIGNAL \inst4|cntDiv[16]~56\ : std_logic;
SIGNAL \inst4|cntDiv[17]~57_combout\ : std_logic;
SIGNAL \inst4|cntDiv[17]~58\ : std_logic;
SIGNAL \inst4|cntDiv[18]~59_combout\ : std_logic;
SIGNAL \inst4|cntDiv[18]~60\ : std_logic;
SIGNAL \inst4|cntDiv[19]~61_combout\ : std_logic;
SIGNAL \inst4|cntDiv[19]~62\ : std_logic;
SIGNAL \inst4|cntDiv[20]~63_combout\ : std_logic;
SIGNAL \inst4|cntDiv[20]~64\ : std_logic;
SIGNAL \inst4|cntDiv[21]~65_combout\ : std_logic;
SIGNAL \inst4|cntDiv[21]~66\ : std_logic;
SIGNAL \inst4|cntDiv[22]~67_combout\ : std_logic;
SIGNAL \inst4|cntDiv[22]~68\ : std_logic;
SIGNAL \inst4|cntDiv[23]~69_combout\ : std_logic;
SIGNAL \inst4|cntDiv[23]~70\ : std_logic;
SIGNAL \inst4|cntDiv[24]~71_combout\ : std_logic;
SIGNAL \inst4|cntDiv[24]~72\ : std_logic;
SIGNAL \inst4|cntDiv[25]~73_combout\ : std_logic;
SIGNAL \inst4|cntDiv[0]~75_combout\ : std_logic;
SIGNAL \Button1~input_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \inst4|cntDiv[25]~clkctrl_outclk\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Hex0[6]~output_o\ : std_logic;
SIGNAL \Hex0[5]~output_o\ : std_logic;
SIGNAL \Hex0[4]~output_o\ : std_logic;
SIGNAL \Hex0[3]~output_o\ : std_logic;
SIGNAL \Hex0[2]~output_o\ : std_logic;
SIGNAL \Hex0[1]~output_o\ : std_logic;
SIGNAL \Hex0[0]~output_o\ : std_logic;
SIGNAL \Hex1[6]~output_o\ : std_logic;
SIGNAL \Hex1[5]~output_o\ : std_logic;
SIGNAL \Hex1[4]~output_o\ : std_logic;
SIGNAL \Hex1[3]~output_o\ : std_logic;
SIGNAL \Hex1[2]~output_o\ : std_logic;
SIGNAL \Hex1[1]~output_o\ : std_logic;
SIGNAL \Hex1[0]~output_o\ : std_logic;
SIGNAL \Hex2[6]~output_o\ : std_logic;
SIGNAL \Hex2[5]~output_o\ : std_logic;
SIGNAL \Hex2[4]~output_o\ : std_logic;
SIGNAL \Hex2[3]~output_o\ : std_logic;
SIGNAL \Hex2[2]~output_o\ : std_logic;
SIGNAL \Hex2[1]~output_o\ : std_logic;
SIGNAL \Hex2[0]~output_o\ : std_logic;
SIGNAL \Hex3[6]~output_o\ : std_logic;
SIGNAL \Hex3[5]~output_o\ : std_logic;
SIGNAL \Hex3[4]~output_o\ : std_logic;
SIGNAL \Hex3[3]~output_o\ : std_logic;
SIGNAL \Hex3[2]~output_o\ : std_logic;
SIGNAL \Hex3[1]~output_o\ : std_logic;
SIGNAL \Hex3[0]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Button2~input_o\ : std_logic;
SIGNAL \inst7|inst7~combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \inst7|inst3~q\ : std_logic;
SIGNAL \inst7|inst2~0_combout\ : std_logic;
SIGNAL \inst7|inst2~q\ : std_logic;
SIGNAL \inst5|Y[1]~1_combout\ : std_logic;
SIGNAL \inst8|inst2~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst5|Y[2]~2_combout\ : std_logic;
SIGNAL \inst8|inst1~q\ : std_logic;
SIGNAL \inst7|inst~feeder_combout\ : std_logic;
SIGNAL \inst7|inst~q\ : std_logic;
SIGNAL \inst5|Y[3]~3_combout\ : std_logic;
SIGNAL \inst8|inst~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst5|Y[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst3~q\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst4|cntDiv\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

Hex0 <= ww_Hex0;
ww_Clk <= Clk;
ww_Reset <= Reset;
ww_Button2 <= Button2;
ww_Button1 <= Button1;
ww_SW <= SW;
Hex1 <= ww_Hex1;
Hex2 <= ww_Hex2;
Hex3 <= ww_Hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst4|cntDiv[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|cntDiv\(25));

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\inst|ALT_INV_Mux4~0_combout\ <= NOT \inst|Mux4~0_combout\;
\inst|ALT_INV_Mux2~0_combout\ <= NOT \inst|Mux2~0_combout\;
\inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst1|Mux0~0_combout\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;

-- Location: FF_X22_Y1_N25
\inst4|cntDiv[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[25]~73_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(25));

-- Location: FF_X22_Y1_N23
\inst4|cntDiv[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[24]~71_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(24));

-- Location: FF_X22_Y1_N21
\inst4|cntDiv[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[23]~69_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(23));

-- Location: FF_X22_Y1_N19
\inst4|cntDiv[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[22]~67_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(22));

-- Location: FF_X22_Y1_N17
\inst4|cntDiv[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[21]~65_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(21));

-- Location: FF_X22_Y1_N15
\inst4|cntDiv[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[20]~63_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(20));

-- Location: FF_X22_Y1_N13
\inst4|cntDiv[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[19]~61_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(19));

-- Location: FF_X22_Y1_N11
\inst4|cntDiv[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[18]~59_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(18));

-- Location: FF_X22_Y1_N9
\inst4|cntDiv[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[17]~57_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(17));

-- Location: FF_X22_Y1_N7
\inst4|cntDiv[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[16]~55_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(16));

-- Location: FF_X22_Y1_N5
\inst4|cntDiv[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[15]~53_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(15));

-- Location: FF_X22_Y1_N3
\inst4|cntDiv[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[14]~51_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(14));

-- Location: FF_X22_Y1_N1
\inst4|cntDiv[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[13]~49_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(13));

-- Location: FF_X22_Y2_N31
\inst4|cntDiv[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[12]~47_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(12));

-- Location: FF_X22_Y2_N29
\inst4|cntDiv[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[11]~45_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(11));

-- Location: FF_X22_Y2_N27
\inst4|cntDiv[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[10]~43_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(10));

-- Location: FF_X22_Y2_N25
\inst4|cntDiv[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[9]~41_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(9));

-- Location: FF_X22_Y2_N23
\inst4|cntDiv[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[8]~39_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(8));

-- Location: FF_X22_Y2_N21
\inst4|cntDiv[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[7]~37_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(7));

-- Location: FF_X22_Y2_N19
\inst4|cntDiv[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[6]~35_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(6));

-- Location: FF_X22_Y2_N17
\inst4|cntDiv[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[5]~33_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(5));

-- Location: FF_X22_Y2_N15
\inst4|cntDiv[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[4]~31_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(4));

-- Location: FF_X22_Y2_N13
\inst4|cntDiv[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[3]~29_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(3));

-- Location: FF_X22_Y2_N11
\inst4|cntDiv[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[2]~27_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(2));

-- Location: FF_X22_Y2_N9
\inst4|cntDiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[1]~25_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(1));

-- Location: LCCOMB_X22_Y2_N8
\inst4|cntDiv[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[1]~25_combout\ = (\inst4|cntDiv\(1) & (\inst4|cntDiv\(0) $ (VCC))) # (!\inst4|cntDiv\(1) & (\inst4|cntDiv\(0) & VCC))
-- \inst4|cntDiv[1]~26\ = CARRY((\inst4|cntDiv\(1) & \inst4|cntDiv\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(1),
	datab => \inst4|cntDiv\(0),
	datad => VCC,
	combout => \inst4|cntDiv[1]~25_combout\,
	cout => \inst4|cntDiv[1]~26\);

-- Location: LCCOMB_X22_Y2_N10
\inst4|cntDiv[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[2]~27_combout\ = (\inst4|cntDiv\(2) & (!\inst4|cntDiv[1]~26\)) # (!\inst4|cntDiv\(2) & ((\inst4|cntDiv[1]~26\) # (GND)))
-- \inst4|cntDiv[2]~28\ = CARRY((!\inst4|cntDiv[1]~26\) # (!\inst4|cntDiv\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(2),
	datad => VCC,
	cin => \inst4|cntDiv[1]~26\,
	combout => \inst4|cntDiv[2]~27_combout\,
	cout => \inst4|cntDiv[2]~28\);

-- Location: LCCOMB_X22_Y2_N12
\inst4|cntDiv[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[3]~29_combout\ = (\inst4|cntDiv\(3) & (\inst4|cntDiv[2]~28\ $ (GND))) # (!\inst4|cntDiv\(3) & (!\inst4|cntDiv[2]~28\ & VCC))
-- \inst4|cntDiv[3]~30\ = CARRY((\inst4|cntDiv\(3) & !\inst4|cntDiv[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(3),
	datad => VCC,
	cin => \inst4|cntDiv[2]~28\,
	combout => \inst4|cntDiv[3]~29_combout\,
	cout => \inst4|cntDiv[3]~30\);

-- Location: LCCOMB_X22_Y2_N14
\inst4|cntDiv[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[4]~31_combout\ = (\inst4|cntDiv\(4) & (!\inst4|cntDiv[3]~30\)) # (!\inst4|cntDiv\(4) & ((\inst4|cntDiv[3]~30\) # (GND)))
-- \inst4|cntDiv[4]~32\ = CARRY((!\inst4|cntDiv[3]~30\) # (!\inst4|cntDiv\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(4),
	datad => VCC,
	cin => \inst4|cntDiv[3]~30\,
	combout => \inst4|cntDiv[4]~31_combout\,
	cout => \inst4|cntDiv[4]~32\);

-- Location: LCCOMB_X22_Y2_N16
\inst4|cntDiv[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[5]~33_combout\ = (\inst4|cntDiv\(5) & (\inst4|cntDiv[4]~32\ $ (GND))) # (!\inst4|cntDiv\(5) & (!\inst4|cntDiv[4]~32\ & VCC))
-- \inst4|cntDiv[5]~34\ = CARRY((\inst4|cntDiv\(5) & !\inst4|cntDiv[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(5),
	datad => VCC,
	cin => \inst4|cntDiv[4]~32\,
	combout => \inst4|cntDiv[5]~33_combout\,
	cout => \inst4|cntDiv[5]~34\);

-- Location: LCCOMB_X22_Y2_N18
\inst4|cntDiv[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[6]~35_combout\ = (\inst4|cntDiv\(6) & (!\inst4|cntDiv[5]~34\)) # (!\inst4|cntDiv\(6) & ((\inst4|cntDiv[5]~34\) # (GND)))
-- \inst4|cntDiv[6]~36\ = CARRY((!\inst4|cntDiv[5]~34\) # (!\inst4|cntDiv\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(6),
	datad => VCC,
	cin => \inst4|cntDiv[5]~34\,
	combout => \inst4|cntDiv[6]~35_combout\,
	cout => \inst4|cntDiv[6]~36\);

-- Location: LCCOMB_X22_Y2_N20
\inst4|cntDiv[7]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[7]~37_combout\ = (\inst4|cntDiv\(7) & (\inst4|cntDiv[6]~36\ $ (GND))) # (!\inst4|cntDiv\(7) & (!\inst4|cntDiv[6]~36\ & VCC))
-- \inst4|cntDiv[7]~38\ = CARRY((\inst4|cntDiv\(7) & !\inst4|cntDiv[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(7),
	datad => VCC,
	cin => \inst4|cntDiv[6]~36\,
	combout => \inst4|cntDiv[7]~37_combout\,
	cout => \inst4|cntDiv[7]~38\);

-- Location: LCCOMB_X22_Y2_N22
\inst4|cntDiv[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[8]~39_combout\ = (\inst4|cntDiv\(8) & (!\inst4|cntDiv[7]~38\)) # (!\inst4|cntDiv\(8) & ((\inst4|cntDiv[7]~38\) # (GND)))
-- \inst4|cntDiv[8]~40\ = CARRY((!\inst4|cntDiv[7]~38\) # (!\inst4|cntDiv\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(8),
	datad => VCC,
	cin => \inst4|cntDiv[7]~38\,
	combout => \inst4|cntDiv[8]~39_combout\,
	cout => \inst4|cntDiv[8]~40\);

-- Location: LCCOMB_X22_Y2_N24
\inst4|cntDiv[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[9]~41_combout\ = (\inst4|cntDiv\(9) & (\inst4|cntDiv[8]~40\ $ (GND))) # (!\inst4|cntDiv\(9) & (!\inst4|cntDiv[8]~40\ & VCC))
-- \inst4|cntDiv[9]~42\ = CARRY((\inst4|cntDiv\(9) & !\inst4|cntDiv[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(9),
	datad => VCC,
	cin => \inst4|cntDiv[8]~40\,
	combout => \inst4|cntDiv[9]~41_combout\,
	cout => \inst4|cntDiv[9]~42\);

-- Location: LCCOMB_X22_Y2_N26
\inst4|cntDiv[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[10]~43_combout\ = (\inst4|cntDiv\(10) & (!\inst4|cntDiv[9]~42\)) # (!\inst4|cntDiv\(10) & ((\inst4|cntDiv[9]~42\) # (GND)))
-- \inst4|cntDiv[10]~44\ = CARRY((!\inst4|cntDiv[9]~42\) # (!\inst4|cntDiv\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(10),
	datad => VCC,
	cin => \inst4|cntDiv[9]~42\,
	combout => \inst4|cntDiv[10]~43_combout\,
	cout => \inst4|cntDiv[10]~44\);

-- Location: LCCOMB_X22_Y2_N28
\inst4|cntDiv[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[11]~45_combout\ = (\inst4|cntDiv\(11) & (\inst4|cntDiv[10]~44\ $ (GND))) # (!\inst4|cntDiv\(11) & (!\inst4|cntDiv[10]~44\ & VCC))
-- \inst4|cntDiv[11]~46\ = CARRY((\inst4|cntDiv\(11) & !\inst4|cntDiv[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(11),
	datad => VCC,
	cin => \inst4|cntDiv[10]~44\,
	combout => \inst4|cntDiv[11]~45_combout\,
	cout => \inst4|cntDiv[11]~46\);

-- Location: LCCOMB_X22_Y2_N30
\inst4|cntDiv[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[12]~47_combout\ = (\inst4|cntDiv\(12) & (!\inst4|cntDiv[11]~46\)) # (!\inst4|cntDiv\(12) & ((\inst4|cntDiv[11]~46\) # (GND)))
-- \inst4|cntDiv[12]~48\ = CARRY((!\inst4|cntDiv[11]~46\) # (!\inst4|cntDiv\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(12),
	datad => VCC,
	cin => \inst4|cntDiv[11]~46\,
	combout => \inst4|cntDiv[12]~47_combout\,
	cout => \inst4|cntDiv[12]~48\);

-- Location: LCCOMB_X22_Y1_N0
\inst4|cntDiv[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[13]~49_combout\ = (\inst4|cntDiv\(13) & (\inst4|cntDiv[12]~48\ $ (GND))) # (!\inst4|cntDiv\(13) & (!\inst4|cntDiv[12]~48\ & VCC))
-- \inst4|cntDiv[13]~50\ = CARRY((\inst4|cntDiv\(13) & !\inst4|cntDiv[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(13),
	datad => VCC,
	cin => \inst4|cntDiv[12]~48\,
	combout => \inst4|cntDiv[13]~49_combout\,
	cout => \inst4|cntDiv[13]~50\);

-- Location: LCCOMB_X22_Y1_N2
\inst4|cntDiv[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[14]~51_combout\ = (\inst4|cntDiv\(14) & (!\inst4|cntDiv[13]~50\)) # (!\inst4|cntDiv\(14) & ((\inst4|cntDiv[13]~50\) # (GND)))
-- \inst4|cntDiv[14]~52\ = CARRY((!\inst4|cntDiv[13]~50\) # (!\inst4|cntDiv\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(14),
	datad => VCC,
	cin => \inst4|cntDiv[13]~50\,
	combout => \inst4|cntDiv[14]~51_combout\,
	cout => \inst4|cntDiv[14]~52\);

-- Location: LCCOMB_X22_Y1_N4
\inst4|cntDiv[15]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[15]~53_combout\ = (\inst4|cntDiv\(15) & (\inst4|cntDiv[14]~52\ $ (GND))) # (!\inst4|cntDiv\(15) & (!\inst4|cntDiv[14]~52\ & VCC))
-- \inst4|cntDiv[15]~54\ = CARRY((\inst4|cntDiv\(15) & !\inst4|cntDiv[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(15),
	datad => VCC,
	cin => \inst4|cntDiv[14]~52\,
	combout => \inst4|cntDiv[15]~53_combout\,
	cout => \inst4|cntDiv[15]~54\);

-- Location: LCCOMB_X22_Y1_N6
\inst4|cntDiv[16]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[16]~55_combout\ = (\inst4|cntDiv\(16) & (!\inst4|cntDiv[15]~54\)) # (!\inst4|cntDiv\(16) & ((\inst4|cntDiv[15]~54\) # (GND)))
-- \inst4|cntDiv[16]~56\ = CARRY((!\inst4|cntDiv[15]~54\) # (!\inst4|cntDiv\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(16),
	datad => VCC,
	cin => \inst4|cntDiv[15]~54\,
	combout => \inst4|cntDiv[16]~55_combout\,
	cout => \inst4|cntDiv[16]~56\);

-- Location: LCCOMB_X22_Y1_N8
\inst4|cntDiv[17]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[17]~57_combout\ = (\inst4|cntDiv\(17) & (\inst4|cntDiv[16]~56\ $ (GND))) # (!\inst4|cntDiv\(17) & (!\inst4|cntDiv[16]~56\ & VCC))
-- \inst4|cntDiv[17]~58\ = CARRY((\inst4|cntDiv\(17) & !\inst4|cntDiv[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(17),
	datad => VCC,
	cin => \inst4|cntDiv[16]~56\,
	combout => \inst4|cntDiv[17]~57_combout\,
	cout => \inst4|cntDiv[17]~58\);

-- Location: LCCOMB_X22_Y1_N10
\inst4|cntDiv[18]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[18]~59_combout\ = (\inst4|cntDiv\(18) & (!\inst4|cntDiv[17]~58\)) # (!\inst4|cntDiv\(18) & ((\inst4|cntDiv[17]~58\) # (GND)))
-- \inst4|cntDiv[18]~60\ = CARRY((!\inst4|cntDiv[17]~58\) # (!\inst4|cntDiv\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(18),
	datad => VCC,
	cin => \inst4|cntDiv[17]~58\,
	combout => \inst4|cntDiv[18]~59_combout\,
	cout => \inst4|cntDiv[18]~60\);

-- Location: LCCOMB_X22_Y1_N12
\inst4|cntDiv[19]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[19]~61_combout\ = (\inst4|cntDiv\(19) & (\inst4|cntDiv[18]~60\ $ (GND))) # (!\inst4|cntDiv\(19) & (!\inst4|cntDiv[18]~60\ & VCC))
-- \inst4|cntDiv[19]~62\ = CARRY((\inst4|cntDiv\(19) & !\inst4|cntDiv[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(19),
	datad => VCC,
	cin => \inst4|cntDiv[18]~60\,
	combout => \inst4|cntDiv[19]~61_combout\,
	cout => \inst4|cntDiv[19]~62\);

-- Location: LCCOMB_X22_Y1_N14
\inst4|cntDiv[20]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[20]~63_combout\ = (\inst4|cntDiv\(20) & (!\inst4|cntDiv[19]~62\)) # (!\inst4|cntDiv\(20) & ((\inst4|cntDiv[19]~62\) # (GND)))
-- \inst4|cntDiv[20]~64\ = CARRY((!\inst4|cntDiv[19]~62\) # (!\inst4|cntDiv\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(20),
	datad => VCC,
	cin => \inst4|cntDiv[19]~62\,
	combout => \inst4|cntDiv[20]~63_combout\,
	cout => \inst4|cntDiv[20]~64\);

-- Location: LCCOMB_X22_Y1_N16
\inst4|cntDiv[21]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[21]~65_combout\ = (\inst4|cntDiv\(21) & (\inst4|cntDiv[20]~64\ $ (GND))) # (!\inst4|cntDiv\(21) & (!\inst4|cntDiv[20]~64\ & VCC))
-- \inst4|cntDiv[21]~66\ = CARRY((\inst4|cntDiv\(21) & !\inst4|cntDiv[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(21),
	datad => VCC,
	cin => \inst4|cntDiv[20]~64\,
	combout => \inst4|cntDiv[21]~65_combout\,
	cout => \inst4|cntDiv[21]~66\);

-- Location: LCCOMB_X22_Y1_N18
\inst4|cntDiv[22]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[22]~67_combout\ = (\inst4|cntDiv\(22) & (!\inst4|cntDiv[21]~66\)) # (!\inst4|cntDiv\(22) & ((\inst4|cntDiv[21]~66\) # (GND)))
-- \inst4|cntDiv[22]~68\ = CARRY((!\inst4|cntDiv[21]~66\) # (!\inst4|cntDiv\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(22),
	datad => VCC,
	cin => \inst4|cntDiv[21]~66\,
	combout => \inst4|cntDiv[22]~67_combout\,
	cout => \inst4|cntDiv[22]~68\);

-- Location: LCCOMB_X22_Y1_N20
\inst4|cntDiv[23]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[23]~69_combout\ = (\inst4|cntDiv\(23) & (\inst4|cntDiv[22]~68\ $ (GND))) # (!\inst4|cntDiv\(23) & (!\inst4|cntDiv[22]~68\ & VCC))
-- \inst4|cntDiv[23]~70\ = CARRY((\inst4|cntDiv\(23) & !\inst4|cntDiv[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cntDiv\(23),
	datad => VCC,
	cin => \inst4|cntDiv[22]~68\,
	combout => \inst4|cntDiv[23]~69_combout\,
	cout => \inst4|cntDiv[23]~70\);

-- Location: LCCOMB_X22_Y1_N22
\inst4|cntDiv[24]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[24]~71_combout\ = (\inst4|cntDiv\(24) & (!\inst4|cntDiv[23]~70\)) # (!\inst4|cntDiv\(24) & ((\inst4|cntDiv[23]~70\) # (GND)))
-- \inst4|cntDiv[24]~72\ = CARRY((!\inst4|cntDiv[23]~70\) # (!\inst4|cntDiv\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(24),
	datad => VCC,
	cin => \inst4|cntDiv[23]~70\,
	combout => \inst4|cntDiv[24]~71_combout\,
	cout => \inst4|cntDiv[24]~72\);

-- Location: LCCOMB_X22_Y1_N24
\inst4|cntDiv[25]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[25]~73_combout\ = \inst4|cntDiv\(25) $ (!\inst4|cntDiv[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cntDiv\(25),
	cin => \inst4|cntDiv[24]~72\,
	combout => \inst4|cntDiv[25]~73_combout\);

-- Location: FF_X22_Y2_N5
\inst4|cntDiv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst4|cntDiv[0]~75_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cntDiv\(0));

-- Location: LCCOMB_X22_Y2_N4
\inst4|cntDiv[0]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cntDiv[0]~75_combout\ = !\inst4|cntDiv\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|cntDiv\(0),
	combout => \inst4|cntDiv[0]~75_combout\);

-- Location: IOIBUF_X0_Y23_N15
\Button1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button1,
	o => \Button1~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\Clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G18
\inst4|cntDiv[25]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|cntDiv[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|cntDiv[25]~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\Clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X26_Y29_N16
\Hex0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\Hex0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\Hex0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\Hex0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\Hex0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\Hex0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\Hex0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Hex0[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\Hex1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\Hex1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\Hex1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\Hex1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\Hex1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\Hex1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\Hex1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\Hex2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\Hex2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\Hex2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\Hex2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\Hex2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\Hex2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\Hex2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\Hex3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\Hex3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\Hex3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\Hex3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\Hex3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Hex3[2]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\Hex3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hex3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\Hex3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \Hex3[0]~output_o\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\Button2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button2,
	o => \Button2~input_o\);

-- Location: LCCOMB_X24_Y28_N18
\inst7|inst7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst7~combout\ = \Button1~input_o\ $ (\inst7|inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button1~input_o\,
	datad => \inst7|inst2~q\,
	combout => \inst7|inst7~combout\);

-- Location: IOIBUF_X0_Y21_N8
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X24_Y28_N19
\inst7|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|cntDiv[25]~clkctrl_outclk\,
	d => \inst7|inst7~combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3~q\);

-- Location: LCCOMB_X24_Y28_N16
\inst7|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst2~0_combout\ = !\inst7|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst3~q\,
	combout => \inst7|inst2~0_combout\);

-- Location: FF_X24_Y28_N17
\inst7|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|cntDiv[25]~clkctrl_outclk\,
	d => \inst7|inst2~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2~q\);

-- Location: LCCOMB_X24_Y28_N2
\inst5|Y[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Y[1]~1_combout\ = (\Button2~input_o\ & (\SW[1]~input_o\)) # (!\Button2~input_o\ & ((\inst7|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \Button2~input_o\,
	datad => \inst7|inst2~q\,
	combout => \inst5|Y[1]~1_combout\);

-- Location: FF_X24_Y28_N3
\inst8|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|cntDiv[25]~clkctrl_outclk\,
	d => \inst5|Y[1]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2~q\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X24_Y28_N26
\inst5|Y[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Y[2]~2_combout\ = (\SW[2]~input_o\ & \Button2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \Button2~input_o\,
	combout => \inst5|Y[2]~2_combout\);

-- Location: FF_X24_Y28_N1
\inst8|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|cntDiv[25]~clkctrl_outclk\,
	asdata => \inst5|Y[2]~2_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst1~q\);

-- Location: LCCOMB_X24_Y28_N12
\inst7|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|inst~feeder_combout\ = \inst7|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|inst3~q\,
	combout => \inst7|inst~feeder_combout\);

-- Location: FF_X24_Y28_N13
\inst7|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|cntDiv[25]~clkctrl_outclk\,
	d => \inst7|inst~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst~q\);

-- Location: LCCOMB_X24_Y28_N30
\inst5|Y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Y[3]~3_combout\ = (\Button2~input_o\ & (\SW[3]~input_o\)) # (!\Button2~input_o\ & ((\inst7|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \Button2~input_o\,
	datad => \inst7|inst~q\,
	combout => \inst5|Y[3]~3_combout\);

-- Location: FF_X24_Y28_N31
\inst8|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|cntDiv[25]~clkctrl_outclk\,
	d => \inst5|Y[3]~3_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst~q\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X24_Y28_N28
\inst5|Y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Y[0]~0_combout\ = (\Button2~input_o\ & (\SW[0]~input_o\)) # (!\Button2~input_o\ & ((\inst7|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Button2~input_o\,
	datab => \SW[0]~input_o\,
	datad => \inst7|inst3~q\,
	combout => \inst5|Y[0]~0_combout\);

-- Location: FF_X24_Y28_N29
\inst8|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|cntDiv[25]~clkctrl_outclk\,
	d => \inst5|Y[0]~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst3~q\);

-- Location: LCCOMB_X27_Y28_N4
\inst3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst8|inst~q\) # ((\inst8|inst2~q\ & ((!\inst8|inst3~q\) # (!\inst8|inst1~q\))) # (!\inst8|inst2~q\ & (\inst8|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2~q\,
	datab => \inst8|inst1~q\,
	datac => \inst8|inst~q\,
	datad => \inst8|inst3~q\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\inst3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst8|inst1~q\ & ((\inst8|inst~q\) # ((\inst8|inst2~q\ & \inst8|inst3~q\)))) # (!\inst8|inst1~q\ & ((\inst8|inst2~q\) # ((!\inst8|inst~q\ & \inst8|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2~q\,
	datab => \inst8|inst1~q\,
	datac => \inst8|inst~q\,
	datad => \inst8|inst3~q\,
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\inst3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (\inst8|inst2~q\ & (((!\inst8|inst~q\ & \inst8|inst3~q\)))) # (!\inst8|inst2~q\ & ((\inst8|inst1~q\ & (!\inst8|inst~q\)) # (!\inst8|inst1~q\ & ((\inst8|inst3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2~q\,
	datab => \inst8|inst1~q\,
	datac => \inst8|inst~q\,
	datad => \inst8|inst3~q\,
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y28_N10
\inst3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (\inst8|inst1~q\ & ((\inst8|inst~q\) # (\inst8|inst2~q\ $ (!\inst8|inst3~q\)))) # (!\inst8|inst1~q\ & ((\inst8|inst2~q\ & (\inst8|inst~q\)) # (!\inst8|inst2~q\ & ((\inst8|inst3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2~q\,
	datab => \inst8|inst1~q\,
	datac => \inst8|inst~q\,
	datad => \inst8|inst3~q\,
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\inst3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst8|inst1~q\ & (((\inst8|inst~q\)))) # (!\inst8|inst1~q\ & (\inst8|inst2~q\ & ((\inst8|inst~q\) # (!\inst8|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2~q\,
	datab => \inst8|inst1~q\,
	datac => \inst8|inst~q\,
	datad => \inst8|inst3~q\,
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y28_N20
\inst3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst8|inst1~q\ & (!\inst8|inst~q\ & (\inst8|inst2~q\ $ (\inst8|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2~q\,
	datab => \inst8|inst1~q\,
	datac => \inst8|inst~q\,
	datad => \inst8|inst3~q\,
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\inst3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (!\inst8|inst2~q\ & (!\inst8|inst~q\ & (\inst8|inst1~q\ $ (\inst8|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2~q\,
	datab => \inst8|inst1~q\,
	datac => \inst8|inst~q\,
	datad => \inst8|inst3~q\,
	combout => \inst3|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\inst2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst5|Y[3]~3_combout\) # ((\inst5|Y[2]~2_combout\ & ((!\inst5|Y[0]~0_combout\) # (!\inst5|Y[1]~1_combout\))) # (!\inst5|Y[2]~2_combout\ & (\inst5|Y[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Y[2]~2_combout\,
	datab => \inst5|Y[1]~1_combout\,
	datac => \inst5|Y[3]~3_combout\,
	datad => \inst5|Y[0]~0_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y28_N24
\inst2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst5|Y[2]~2_combout\ & ((\inst5|Y[3]~3_combout\) # ((\inst5|Y[1]~1_combout\ & \inst5|Y[0]~0_combout\)))) # (!\inst5|Y[2]~2_combout\ & ((\inst5|Y[1]~1_combout\) # ((!\inst5|Y[3]~3_combout\ & \inst5|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Y[2]~2_combout\,
	datab => \inst5|Y[1]~1_combout\,
	datac => \inst5|Y[3]~3_combout\,
	datad => \inst5|Y[0]~0_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y28_N14
\inst2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst5|Y[1]~1_combout\ & (((!\inst5|Y[3]~3_combout\ & \inst5|Y[0]~0_combout\)))) # (!\inst5|Y[1]~1_combout\ & ((\inst5|Y[2]~2_combout\ & (!\inst5|Y[3]~3_combout\)) # (!\inst5|Y[2]~2_combout\ & ((\inst5|Y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Y[2]~2_combout\,
	datab => \inst5|Y[1]~1_combout\,
	datac => \inst5|Y[3]~3_combout\,
	datad => \inst5|Y[0]~0_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y28_N8
\inst2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst5|Y[2]~2_combout\ & ((\inst5|Y[3]~3_combout\) # (\inst5|Y[1]~1_combout\ $ (!\inst5|Y[0]~0_combout\)))) # (!\inst5|Y[2]~2_combout\ & ((\inst5|Y[1]~1_combout\ & (\inst5|Y[3]~3_combout\)) # (!\inst5|Y[1]~1_combout\ & 
-- ((\inst5|Y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Y[2]~2_combout\,
	datab => \inst5|Y[1]~1_combout\,
	datac => \inst5|Y[3]~3_combout\,
	datad => \inst5|Y[0]~0_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y28_N22
\inst2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst5|Y[2]~2_combout\ & (((\inst5|Y[3]~3_combout\)))) # (!\inst5|Y[2]~2_combout\ & (\inst5|Y[1]~1_combout\ & ((\inst5|Y[3]~3_combout\) # (!\inst5|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Y[2]~2_combout\,
	datab => \inst5|Y[1]~1_combout\,
	datac => \inst5|Y[3]~3_combout\,
	datad => \inst5|Y[0]~0_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y28_N4
\inst2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst5|Y[2]~2_combout\ & (!\inst5|Y[3]~3_combout\ & (\inst5|Y[1]~1_combout\ $ (\inst5|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Y[2]~2_combout\,
	datab => \inst5|Y[1]~1_combout\,
	datac => \inst5|Y[3]~3_combout\,
	datad => \inst5|Y[0]~0_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y28_N10
\inst2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (!\inst5|Y[1]~1_combout\ & (!\inst5|Y[3]~3_combout\ & (\inst5|Y[2]~2_combout\ $ (\inst5|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Y[2]~2_combout\,
	datab => \inst5|Y[1]~1_combout\,
	datac => \inst5|Y[3]~3_combout\,
	datad => \inst5|Y[0]~0_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X29_Y28_N12
\inst1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\ & ((!\SW[1]~input_o\) # (!\SW[0]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y28_N2
\inst1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\SW[3]~input_o\ $ (!\SW[2]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y28_N4
\inst1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & (!\SW[3]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((!\SW[3]~input_o\))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y28_N22
\inst1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\SW[0]~input_o\ & ((\SW[3]~input_o\) # (\SW[2]~input_o\ $ (!\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\SW[3]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y28_N0
\inst1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & ((\SW[3]~input_o\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y28_N10
\inst1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (\SW[0]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y28_N28
\inst1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y28_N28
\inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (!\inst7|inst2~q\ & !\inst7|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2~q\,
	datad => \inst7|inst~q\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y28_N26
\inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst7|inst2~q\) # ((\inst7|inst3~q\ & !\inst7|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2~q\,
	datac => \inst7|inst3~q\,
	datad => \inst7|inst~q\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y28_N0
\inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = ((\inst7|inst2~q\ & \inst7|inst~q\)) # (!\inst7|inst3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2~q\,
	datac => \inst7|inst3~q\,
	datad => \inst7|inst~q\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y28_N2
\inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst7|inst2~q\ & ((\inst7|inst~q\))) # (!\inst7|inst2~q\ & (\inst7|inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2~q\,
	datac => \inst7|inst3~q\,
	datad => \inst7|inst~q\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y28_N12
\inst|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = ((\inst7|inst3~q\ & !\inst7|inst~q\)) # (!\inst7|inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2~q\,
	datac => \inst7|inst3~q\,
	datad => \inst7|inst~q\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y28_N22
\inst|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (!\inst7|inst2~q\ & (\inst7|inst3~q\ & !\inst7|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2~q\,
	datac => \inst7|inst3~q\,
	datad => \inst7|inst~q\,
	combout => \inst|Mux6~1_combout\);

ww_Hex0(6) <= \Hex0[6]~output_o\;

ww_Hex0(5) <= \Hex0[5]~output_o\;

ww_Hex0(4) <= \Hex0[4]~output_o\;

ww_Hex0(3) <= \Hex0[3]~output_o\;

ww_Hex0(2) <= \Hex0[2]~output_o\;

ww_Hex0(1) <= \Hex0[1]~output_o\;

ww_Hex0(0) <= \Hex0[0]~output_o\;

ww_Hex1(6) <= \Hex1[6]~output_o\;

ww_Hex1(5) <= \Hex1[5]~output_o\;

ww_Hex1(4) <= \Hex1[4]~output_o\;

ww_Hex1(3) <= \Hex1[3]~output_o\;

ww_Hex1(2) <= \Hex1[2]~output_o\;

ww_Hex1(1) <= \Hex1[1]~output_o\;

ww_Hex1(0) <= \Hex1[0]~output_o\;

ww_Hex2(6) <= \Hex2[6]~output_o\;

ww_Hex2(5) <= \Hex2[5]~output_o\;

ww_Hex2(4) <= \Hex2[4]~output_o\;

ww_Hex2(3) <= \Hex2[3]~output_o\;

ww_Hex2(2) <= \Hex2[2]~output_o\;

ww_Hex2(1) <= \Hex2[1]~output_o\;

ww_Hex2(0) <= \Hex2[0]~output_o\;

ww_Hex3(6) <= \Hex3[6]~output_o\;

ww_Hex3(5) <= \Hex3[5]~output_o\;

ww_Hex3(4) <= \Hex3[4]~output_o\;

ww_Hex3(3) <= \Hex3[3]~output_o\;

ww_Hex3(2) <= \Hex3[2]~output_o\;

ww_Hex3(1) <= \Hex3[1]~output_o\;

ww_Hex3(0) <= \Hex3[0]~output_o\;
END structure;


