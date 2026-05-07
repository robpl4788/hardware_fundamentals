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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Thu May 07 16:14:12 2026"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY \8_to_1_MUX\ IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		E :  IN  STD_LOGIC;
		F :  IN  STD_LOGIC;
		G :  IN  STD_LOGIC;
		H :  IN  STD_LOGIC;
		S :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		O :  OUT  STD_LOGIC
	);
END \8_to_1_MUX\;

ARCHITECTURE bdf_type OF \8_to_1_MUX\ IS 

SIGNAL	SN :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= SN(0) AND SN(1) AND SN(2) AND A;


SYNTHESIZED_WIRE_2 <= S(0) AND SN(1) AND SN(2) AND B;


SYNTHESIZED_WIRE_7 <= S(0) AND S(1) AND S(2) AND H;


O <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_1 <= SN(0) AND S(1) AND SN(2) AND C;


SYNTHESIZED_WIRE_3 <= S(0) AND S(1) AND SN(2) AND D;


SYNTHESIZED_WIRE_4 <= S(0) AND SN(1) AND S(2) AND F;


SYNTHESIZED_WIRE_5 <= SN(0) AND SN(1) AND S(2) AND E;


SYNTHESIZED_WIRE_6 <= SN(0) AND S(1) AND S(2) AND G;


SN(0) <= NOT(S(0));



SN(1) <= NOT(S(1));



SN(2) <= NOT(S(2));



END bdf_type;