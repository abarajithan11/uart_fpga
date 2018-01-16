-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "10/18/2017 16:08:19"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart_implementation IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	key1 : IN std_logic;
	key2 : IN std_logic;
	r_Tx_Serial : OUT std_logic;
	r_Rx_Serial : IN std_logic
	);
END uart_implementation;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key2	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_Tx_Serial	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_Rx_Serial	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_implementation IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_r_Tx_Serial : std_logic;
SIGNAL ww_r_Rx_Serial : std_logic;
SIGNAL \_~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \r_Tx_Serial~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \_~1_combout\ : std_logic;
SIGNAL \_~1clkctrl_outclk\ : std_logic;
SIGNAL \r_Rx_Serial~input_o\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Data_R~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Data_R~q\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Data~q\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[0]~8_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[4]~17\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[5]~18_combout\ : std_logic;
SIGNAL \UART_RX_INST|Equal0~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector13~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|Equal0~1_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector13~1_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_SM_Main.s_RX_START_BIT~q\ : std_logic;
SIGNAL \UART_RX_INST|Selector14~3_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[0]~26_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[5]~19\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[6]~20_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[6]~21\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[7]~22_combout\ : std_logic;
SIGNAL \UART_RX_INST|LessThan1~2_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector14~1_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector14~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector14~2_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\ : std_logic;
SIGNAL \UART_RX_INST|Selector9~1_combout\ : std_logic;
SIGNAL \UART_RX_INST|Decoder0~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector9~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector9~2_combout\ : std_logic;
SIGNAL \UART_RX_INST|Decoder0~8_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~2_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~q\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[0]~24_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[0]~25_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[0]~9\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[1]~10_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[1]~11\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[2]~12_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[2]~13\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[3]~14_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[3]~15\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count[4]~16_combout\ : std_logic;
SIGNAL \UART_RX_INST|LessThan1~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|LessThan1~1_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_SM_Main~9_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_SM_Main.s_CLEANUP~q\ : std_logic;
SIGNAL \UART_RX_INST|Selector12~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_SM_Main.000~q\ : std_logic;
SIGNAL \UART_RX_INST|Selector11~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector11~1_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector10~2_combout\ : std_logic;
SIGNAL \UART_RX_INST|Selector10~3_combout\ : std_logic;
SIGNAL \UART_RX_INST|Decoder0~1_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Byte[0]~0_combout\ : std_logic;
SIGNAL \UART_RX_INST|Decoder0~2_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Byte[1]~1_combout\ : std_logic;
SIGNAL \UART_RX_INST|Decoder0~3_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Byte[2]~2_combout\ : std_logic;
SIGNAL \UART_RX_INST|Decoder0~4_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Byte[3]~3_combout\ : std_logic;
SIGNAL \UART_RX_INST|Decoder0~5_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Byte[4]~4_combout\ : std_logic;
SIGNAL \UART_RX_INST|Decoder0~6_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Byte[5]~5_combout\ : std_logic;
SIGNAL \UART_RX_INST|Decoder0~7_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Byte[6]~6_combout\ : std_logic;
SIGNAL \UART_RX_INST|r_Rx_Byte[7]~7_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[0]~8_combout\ : std_logic;
SIGNAL \UART_TX_INST|LessThan1~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[6]~22\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[7]~23_combout\ : std_logic;
SIGNAL \UART_TX_INST|LessThan1~3_combout\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \UART_TX_INST|Selector14~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_SM_Main.000~q\ : std_logic;
SIGNAL \UART_TX_INST|Selector12~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector12~1_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector11~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector11~1_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~1_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~q\ : std_logic;
SIGNAL \UART_TX_INST|r_SM_Main~9_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_SM_Main.s_CLEANUP~q\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[7]~12_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[0]~9\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[1]~10_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[1]~11\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[2]~13_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[2]~14\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[3]~15_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[3]~16\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[4]~17_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[4]~18\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[5]~19_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[5]~20\ : std_logic;
SIGNAL \UART_TX_INST|r_Clock_Count[6]~21_combout\ : std_logic;
SIGNAL \UART_TX_INST|LessThan1~1_combout\ : std_logic;
SIGNAL \UART_TX_INST|LessThan1~2_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector15~1_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_SM_Main.s_TX_START_BIT~q\ : std_logic;
SIGNAL \UART_TX_INST|Selector16~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\ : std_logic;
SIGNAL \UART_TX_INST|Selector10~1_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector10~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector10~2_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector15~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|Mux0~2_combout\ : std_logic;
SIGNAL \UART_TX_INST|Mux0~3_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector0~1_combout\ : std_logic;
SIGNAL \UART_TX_INST|Mux0~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|r_Tx_Data[6]~feeder_combout\ : std_logic;
SIGNAL \UART_TX_INST|Mux0~1_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector0~0_combout\ : std_logic;
SIGNAL \UART_TX_INST|Selector0~2_combout\ : std_logic;
SIGNAL \UART_TX_INST|o_Tx_Serial~q\ : std_logic;
SIGNAL \UART_RX_INST|r_Clock_Count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_TX_INST|r_Clock_Count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_TX_INST|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_RX_INST|r_Rx_Byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_RX_INST|r_Bit_Index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_TX_INST|r_Tx_Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_SW <= SW;
LEDG <= ww_LEDG;
ww_key1 <= key1;
ww_key2 <= key2;
r_Tx_Serial <= ww_r_Tx_Serial;
ww_r_Rx_Serial <= r_Rx_Serial;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\_~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \_~1_combout\);
\UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\ <= NOT \UART_TX_INST|r_SM_Main.s_CLEANUP~q\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_RX_INST|r_Rx_Byte\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_RX_INST|r_Rx_Byte\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_RX_INST|r_Rx_Byte\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_RX_INST|r_Rx_Byte\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_RX_INST|r_Rx_Byte\(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_RX_INST|r_Rx_Byte\(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_RX_INST|r_Rx_Byte\(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_RX_INST|r_Rx_Byte\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\r_Tx_Serial~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UART_TX_INST|o_Tx_Serial~q\,
	devoe => ww_devoe,
	o => \r_Tx_Serial~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X114_Y37_N8
\_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \_~1_combout\ = !\_~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \_~1_combout\,
	combout => \_~1_combout\);

-- Location: CLKCTRL_G6
\_~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \_~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \_~1clkctrl_outclk\);

-- Location: IOIBUF_X60_Y0_N22
\r_Rx_Serial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_Rx_Serial,
	o => \r_Rx_Serial~input_o\);

-- Location: LCCOMB_X61_Y72_N8
\UART_RX_INST|r_Rx_Data_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Rx_Data_R~0_combout\ = !\r_Rx_Serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_Rx_Serial~input_o\,
	combout => \UART_RX_INST|r_Rx_Data_R~0_combout\);

-- Location: FF_X61_Y72_N9
\UART_RX_INST|r_Rx_Data_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Rx_Data_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Data_R~q\);

-- Location: FF_X81_Y72_N1
\UART_RX_INST|r_Rx_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	asdata => \UART_RX_INST|r_Rx_Data_R~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Data~q\);

-- Location: LCCOMB_X83_Y72_N4
\UART_RX_INST|r_Clock_Count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[0]~8_combout\ = \UART_RX_INST|r_Clock_Count\(0) $ (VCC)
-- \UART_RX_INST|r_Clock_Count[0]~9\ = CARRY(\UART_RX_INST|r_Clock_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_Clock_Count\(0),
	datad => VCC,
	combout => \UART_RX_INST|r_Clock_Count[0]~8_combout\,
	cout => \UART_RX_INST|r_Clock_Count[0]~9\);

-- Location: LCCOMB_X83_Y72_N12
\UART_RX_INST|r_Clock_Count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[4]~16_combout\ = (\UART_RX_INST|r_Clock_Count\(4) & (\UART_RX_INST|r_Clock_Count[3]~15\ $ (GND))) # (!\UART_RX_INST|r_Clock_Count\(4) & (!\UART_RX_INST|r_Clock_Count[3]~15\ & VCC))
-- \UART_RX_INST|r_Clock_Count[4]~17\ = CARRY((\UART_RX_INST|r_Clock_Count\(4) & !\UART_RX_INST|r_Clock_Count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Clock_Count\(4),
	datad => VCC,
	cin => \UART_RX_INST|r_Clock_Count[3]~15\,
	combout => \UART_RX_INST|r_Clock_Count[4]~16_combout\,
	cout => \UART_RX_INST|r_Clock_Count[4]~17\);

-- Location: LCCOMB_X83_Y72_N14
\UART_RX_INST|r_Clock_Count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[5]~18_combout\ = (\UART_RX_INST|r_Clock_Count\(5) & (!\UART_RX_INST|r_Clock_Count[4]~17\)) # (!\UART_RX_INST|r_Clock_Count\(5) & ((\UART_RX_INST|r_Clock_Count[4]~17\) # (GND)))
-- \UART_RX_INST|r_Clock_Count[5]~19\ = CARRY((!\UART_RX_INST|r_Clock_Count[4]~17\) # (!\UART_RX_INST|r_Clock_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_Clock_Count\(5),
	datad => VCC,
	cin => \UART_RX_INST|r_Clock_Count[4]~17\,
	combout => \UART_RX_INST|r_Clock_Count[5]~18_combout\,
	cout => \UART_RX_INST|r_Clock_Count[5]~19\);

-- Location: LCCOMB_X83_Y72_N28
\UART_RX_INST|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Equal0~0_combout\ = (\UART_RX_INST|r_Clock_Count\(1) & (!\UART_RX_INST|r_Clock_Count\(4) & (!\UART_RX_INST|r_Clock_Count\(2) & \UART_RX_INST|r_Clock_Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Clock_Count\(1),
	datab => \UART_RX_INST|r_Clock_Count\(4),
	datac => \UART_RX_INST|r_Clock_Count\(2),
	datad => \UART_RX_INST|r_Clock_Count\(3),
	combout => \UART_RX_INST|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y72_N0
\UART_RX_INST|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector13~0_combout\ = (\UART_RX_INST|r_Rx_Data~q\ & !\UART_RX_INST|r_SM_Main.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_RX_INST|r_Rx_Data~q\,
	datad => \UART_RX_INST|r_SM_Main.000~q\,
	combout => \UART_RX_INST|Selector13~0_combout\);

-- Location: LCCOMB_X83_Y72_N22
\UART_RX_INST|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Equal0~1_combout\ = (\UART_RX_INST|r_Clock_Count\(0) & (!\UART_RX_INST|r_Clock_Count\(6) & (\UART_RX_INST|r_Clock_Count\(5) & !\UART_RX_INST|r_Clock_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Clock_Count\(0),
	datab => \UART_RX_INST|r_Clock_Count\(6),
	datac => \UART_RX_INST|r_Clock_Count\(5),
	datad => \UART_RX_INST|r_Clock_Count\(7),
	combout => \UART_RX_INST|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y72_N0
\UART_RX_INST|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector13~1_combout\ = (\UART_RX_INST|Selector13~0_combout\) # ((\UART_RX_INST|r_SM_Main.s_RX_START_BIT~q\ & ((!\UART_RX_INST|Equal0~1_combout\) # (!\UART_RX_INST|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|Selector13~0_combout\,
	datab => \UART_RX_INST|Equal0~0_combout\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_START_BIT~q\,
	datad => \UART_RX_INST|Equal0~1_combout\,
	combout => \UART_RX_INST|Selector13~1_combout\);

-- Location: FF_X82_Y72_N1
\UART_RX_INST|r_SM_Main.s_RX_START_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_SM_Main.s_RX_START_BIT~q\);

-- Location: LCCOMB_X82_Y72_N8
\UART_RX_INST|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector14~3_combout\ = (\UART_RX_INST|Equal0~0_combout\ & (\UART_RX_INST|r_SM_Main.s_RX_START_BIT~q\ & \UART_RX_INST|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|Equal0~0_combout\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_START_BIT~q\,
	datad => \UART_RX_INST|Equal0~1_combout\,
	combout => \UART_RX_INST|Selector14~3_combout\);

-- Location: LCCOMB_X82_Y72_N6
\UART_RX_INST|r_Clock_Count[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[0]~26_combout\ = (!\UART_RX_INST|r_SM_Main.s_CLEANUP~q\ & ((\UART_RX_INST|r_Rx_Data~q\) # (!\UART_RX_INST|Selector14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Rx_Data~q\,
	datab => \UART_RX_INST|Selector14~3_combout\,
	datac => \UART_RX_INST|r_SM_Main.s_CLEANUP~q\,
	combout => \UART_RX_INST|r_Clock_Count[0]~26_combout\);

-- Location: FF_X83_Y72_N15
\UART_RX_INST|r_Clock_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Clock_Count[5]~18_combout\,
	sclr => \UART_RX_INST|r_Clock_Count[0]~25_combout\,
	ena => \UART_RX_INST|r_Clock_Count[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Clock_Count\(5));

-- Location: LCCOMB_X83_Y72_N16
\UART_RX_INST|r_Clock_Count[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[6]~20_combout\ = (\UART_RX_INST|r_Clock_Count\(6) & (\UART_RX_INST|r_Clock_Count[5]~19\ $ (GND))) # (!\UART_RX_INST|r_Clock_Count\(6) & (!\UART_RX_INST|r_Clock_Count[5]~19\ & VCC))
-- \UART_RX_INST|r_Clock_Count[6]~21\ = CARRY((\UART_RX_INST|r_Clock_Count\(6) & !\UART_RX_INST|r_Clock_Count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_Clock_Count\(6),
	datad => VCC,
	cin => \UART_RX_INST|r_Clock_Count[5]~19\,
	combout => \UART_RX_INST|r_Clock_Count[6]~20_combout\,
	cout => \UART_RX_INST|r_Clock_Count[6]~21\);

-- Location: FF_X83_Y72_N17
\UART_RX_INST|r_Clock_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Clock_Count[6]~20_combout\,
	sclr => \UART_RX_INST|r_Clock_Count[0]~25_combout\,
	ena => \UART_RX_INST|r_Clock_Count[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Clock_Count\(6));

-- Location: LCCOMB_X83_Y72_N18
\UART_RX_INST|r_Clock_Count[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[7]~22_combout\ = \UART_RX_INST|r_Clock_Count[6]~21\ $ (\UART_RX_INST|r_Clock_Count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX_INST|r_Clock_Count\(7),
	cin => \UART_RX_INST|r_Clock_Count[6]~21\,
	combout => \UART_RX_INST|r_Clock_Count[7]~22_combout\);

-- Location: FF_X83_Y72_N19
\UART_RX_INST|r_Clock_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Clock_Count[7]~22_combout\,
	sclr => \UART_RX_INST|r_Clock_Count[0]~25_combout\,
	ena => \UART_RX_INST|r_Clock_Count[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Clock_Count\(7));

-- Location: LCCOMB_X82_Y72_N14
\UART_RX_INST|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|LessThan1~2_combout\ = (\UART_RX_INST|r_Clock_Count\(7)) # (!\UART_RX_INST|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|LessThan1~1_combout\,
	datad => \UART_RX_INST|r_Clock_Count\(7),
	combout => \UART_RX_INST|LessThan1~2_combout\);

-- Location: LCCOMB_X81_Y72_N12
\UART_RX_INST|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector14~1_combout\ = (\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\ & (((!\UART_RX_INST|r_Bit_Index\(0)) # (!\UART_RX_INST|r_Bit_Index\(2))) # (!\UART_RX_INST|r_Bit_Index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\,
	combout => \UART_RX_INST|Selector14~1_combout\);

-- Location: LCCOMB_X82_Y72_N10
\UART_RX_INST|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector14~0_combout\ = (\UART_RX_INST|r_Rx_Data~q\ & (\UART_RX_INST|Equal0~0_combout\ & (\UART_RX_INST|r_SM_Main.s_RX_START_BIT~q\ & \UART_RX_INST|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Rx_Data~q\,
	datab => \UART_RX_INST|Equal0~0_combout\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_START_BIT~q\,
	datad => \UART_RX_INST|Equal0~1_combout\,
	combout => \UART_RX_INST|Selector14~0_combout\);

-- Location: LCCOMB_X82_Y72_N22
\UART_RX_INST|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector14~2_combout\ = (\UART_RX_INST|Selector14~1_combout\) # ((\UART_RX_INST|Selector14~0_combout\) # ((!\UART_RX_INST|LessThan1~2_combout\ & \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|Selector14~1_combout\,
	datab => \UART_RX_INST|LessThan1~2_combout\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\,
	datad => \UART_RX_INST|Selector14~0_combout\,
	combout => \UART_RX_INST|Selector14~2_combout\);

-- Location: FF_X82_Y72_N23
\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\);

-- Location: LCCOMB_X81_Y72_N6
\UART_RX_INST|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector9~1_combout\ = (\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\ & (((!\UART_RX_INST|LessThan1~2_combout\) # (!\UART_RX_INST|r_Bit_Index\(0))))) # (!\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\ & (\UART_RX_INST|r_SM_Main.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_SM_Main.000~q\,
	datab => \UART_RX_INST|r_Bit_Index\(0),
	datac => \UART_RX_INST|LessThan1~2_combout\,
	datad => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\,
	combout => \UART_RX_INST|Selector9~1_combout\);

-- Location: LCCOMB_X82_Y72_N24
\UART_RX_INST|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Decoder0~0_combout\ = (\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\ & ((\UART_RX_INST|r_Clock_Count\(7)) # (!\UART_RX_INST|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|LessThan1~1_combout\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\,
	datad => \UART_RX_INST|r_Clock_Count\(7),
	combout => \UART_RX_INST|Decoder0~0_combout\);

-- Location: LCCOMB_X81_Y72_N10
\UART_RX_INST|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector9~0_combout\ = (\UART_RX_INST|r_Bit_Index\(0) & (\UART_RX_INST|Decoder0~0_combout\ & (\UART_RX_INST|r_Bit_Index\(1) $ (\UART_RX_INST|r_Bit_Index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|Decoder0~0_combout\,
	combout => \UART_RX_INST|Selector9~0_combout\);

-- Location: LCCOMB_X81_Y72_N20
\UART_RX_INST|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector9~2_combout\ = (\UART_RX_INST|Selector9~0_combout\) # ((\UART_RX_INST|Selector9~1_combout\ & \UART_RX_INST|r_Bit_Index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|Selector9~1_combout\,
	datac => \UART_RX_INST|r_Bit_Index\(2),
	datad => \UART_RX_INST|Selector9~0_combout\,
	combout => \UART_RX_INST|Selector9~2_combout\);

-- Location: FF_X81_Y72_N21
\UART_RX_INST|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Bit_Index\(2));

-- Location: LCCOMB_X81_Y72_N14
\UART_RX_INST|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Decoder0~8_combout\ = (\UART_RX_INST|r_Bit_Index\(1) & (\UART_RX_INST|r_Bit_Index\(2) & (\UART_RX_INST|r_Bit_Index\(0) & \UART_RX_INST|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|Decoder0~0_combout\,
	combout => \UART_RX_INST|Decoder0~8_combout\);

-- Location: LCCOMB_X82_Y72_N20
\UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~2_combout\ = (\UART_RX_INST|Decoder0~8_combout\) # ((\UART_RX_INST|LessThan1~1_combout\ & (\UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~q\ & !\UART_RX_INST|r_Clock_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|Decoder0~8_combout\,
	datab => \UART_RX_INST|LessThan1~1_combout\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~q\,
	datad => \UART_RX_INST|r_Clock_Count\(7),
	combout => \UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~2_combout\);

-- Location: FF_X82_Y72_N21
\UART_RX_INST|r_SM_Main.s_RX_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~q\);

-- Location: LCCOMB_X82_Y72_N30
\UART_RX_INST|r_Clock_Count[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[0]~24_combout\ = (\UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~q\) # (\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~q\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\,
	combout => \UART_RX_INST|r_Clock_Count[0]~24_combout\);

-- Location: LCCOMB_X82_Y72_N2
\UART_RX_INST|r_Clock_Count[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[0]~25_combout\ = \UART_RX_INST|Selector14~3_combout\ $ (\UART_RX_INST|r_SM_Main.000~q\ $ (((!\UART_RX_INST|LessThan1~2_combout\) # (!\UART_RX_INST|r_Clock_Count[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Clock_Count[0]~24_combout\,
	datab => \UART_RX_INST|Selector14~3_combout\,
	datac => \UART_RX_INST|LessThan1~2_combout\,
	datad => \UART_RX_INST|r_SM_Main.000~q\,
	combout => \UART_RX_INST|r_Clock_Count[0]~25_combout\);

-- Location: FF_X83_Y72_N5
\UART_RX_INST|r_Clock_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Clock_Count[0]~8_combout\,
	sclr => \UART_RX_INST|r_Clock_Count[0]~25_combout\,
	ena => \UART_RX_INST|r_Clock_Count[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Clock_Count\(0));

-- Location: LCCOMB_X83_Y72_N6
\UART_RX_INST|r_Clock_Count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[1]~10_combout\ = (\UART_RX_INST|r_Clock_Count\(1) & (!\UART_RX_INST|r_Clock_Count[0]~9\)) # (!\UART_RX_INST|r_Clock_Count\(1) & ((\UART_RX_INST|r_Clock_Count[0]~9\) # (GND)))
-- \UART_RX_INST|r_Clock_Count[1]~11\ = CARRY((!\UART_RX_INST|r_Clock_Count[0]~9\) # (!\UART_RX_INST|r_Clock_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Clock_Count\(1),
	datad => VCC,
	cin => \UART_RX_INST|r_Clock_Count[0]~9\,
	combout => \UART_RX_INST|r_Clock_Count[1]~10_combout\,
	cout => \UART_RX_INST|r_Clock_Count[1]~11\);

-- Location: FF_X83_Y72_N7
\UART_RX_INST|r_Clock_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Clock_Count[1]~10_combout\,
	sclr => \UART_RX_INST|r_Clock_Count[0]~25_combout\,
	ena => \UART_RX_INST|r_Clock_Count[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Clock_Count\(1));

-- Location: LCCOMB_X83_Y72_N8
\UART_RX_INST|r_Clock_Count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[2]~12_combout\ = (\UART_RX_INST|r_Clock_Count\(2) & (\UART_RX_INST|r_Clock_Count[1]~11\ $ (GND))) # (!\UART_RX_INST|r_Clock_Count\(2) & (!\UART_RX_INST|r_Clock_Count[1]~11\ & VCC))
-- \UART_RX_INST|r_Clock_Count[2]~13\ = CARRY((\UART_RX_INST|r_Clock_Count\(2) & !\UART_RX_INST|r_Clock_Count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_Clock_Count\(2),
	datad => VCC,
	cin => \UART_RX_INST|r_Clock_Count[1]~11\,
	combout => \UART_RX_INST|r_Clock_Count[2]~12_combout\,
	cout => \UART_RX_INST|r_Clock_Count[2]~13\);

-- Location: FF_X83_Y72_N9
\UART_RX_INST|r_Clock_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Clock_Count[2]~12_combout\,
	sclr => \UART_RX_INST|r_Clock_Count[0]~25_combout\,
	ena => \UART_RX_INST|r_Clock_Count[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Clock_Count\(2));

-- Location: LCCOMB_X83_Y72_N10
\UART_RX_INST|r_Clock_Count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Clock_Count[3]~14_combout\ = (\UART_RX_INST|r_Clock_Count\(3) & (!\UART_RX_INST|r_Clock_Count[2]~13\)) # (!\UART_RX_INST|r_Clock_Count\(3) & ((\UART_RX_INST|r_Clock_Count[2]~13\) # (GND)))
-- \UART_RX_INST|r_Clock_Count[3]~15\ = CARRY((!\UART_RX_INST|r_Clock_Count[2]~13\) # (!\UART_RX_INST|r_Clock_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Clock_Count\(3),
	datad => VCC,
	cin => \UART_RX_INST|r_Clock_Count[2]~13\,
	combout => \UART_RX_INST|r_Clock_Count[3]~14_combout\,
	cout => \UART_RX_INST|r_Clock_Count[3]~15\);

-- Location: FF_X83_Y72_N11
\UART_RX_INST|r_Clock_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Clock_Count[3]~14_combout\,
	sclr => \UART_RX_INST|r_Clock_Count[0]~25_combout\,
	ena => \UART_RX_INST|r_Clock_Count[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Clock_Count\(3));

-- Location: FF_X83_Y72_N13
\UART_RX_INST|r_Clock_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Clock_Count[4]~16_combout\,
	sclr => \UART_RX_INST|r_Clock_Count[0]~25_combout\,
	ena => \UART_RX_INST|r_Clock_Count[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Clock_Count\(4));

-- Location: LCCOMB_X83_Y72_N24
\UART_RX_INST|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|LessThan1~0_combout\ = (!\UART_RX_INST|r_Clock_Count\(5) & (!\UART_RX_INST|r_Clock_Count\(3) & ((!\UART_RX_INST|r_Clock_Count\(2)) # (!\UART_RX_INST|r_Clock_Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Clock_Count\(1),
	datab => \UART_RX_INST|r_Clock_Count\(5),
	datac => \UART_RX_INST|r_Clock_Count\(2),
	datad => \UART_RX_INST|r_Clock_Count\(3),
	combout => \UART_RX_INST|LessThan1~0_combout\);

-- Location: LCCOMB_X83_Y72_N26
\UART_RX_INST|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|LessThan1~1_combout\ = ((\UART_RX_INST|LessThan1~0_combout\) # ((!\UART_RX_INST|r_Clock_Count\(4) & !\UART_RX_INST|r_Clock_Count\(5)))) # (!\UART_RX_INST|r_Clock_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Clock_Count\(4),
	datab => \UART_RX_INST|r_Clock_Count\(6),
	datac => \UART_RX_INST|r_Clock_Count\(5),
	datad => \UART_RX_INST|LessThan1~0_combout\,
	combout => \UART_RX_INST|LessThan1~1_combout\);

-- Location: LCCOMB_X82_Y72_N4
\UART_RX_INST|r_SM_Main~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_SM_Main~9_combout\ = (\UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~q\ & ((\UART_RX_INST|r_Clock_Count\(7)) # (!\UART_RX_INST|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|LessThan1~1_combout\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_STOP_BIT~q\,
	datad => \UART_RX_INST|r_Clock_Count\(7),
	combout => \UART_RX_INST|r_SM_Main~9_combout\);

-- Location: FF_X82_Y72_N5
\UART_RX_INST|r_SM_Main.s_CLEANUP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_SM_Main~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_SM_Main.s_CLEANUP~q\);

-- Location: LCCOMB_X82_Y72_N18
\UART_RX_INST|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector12~0_combout\ = (!\UART_RX_INST|r_SM_Main.s_CLEANUP~q\ & ((\UART_RX_INST|r_Rx_Data~q\) # ((\UART_RX_INST|r_SM_Main.000~q\ & !\UART_RX_INST|Selector14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Rx_Data~q\,
	datab => \UART_RX_INST|r_SM_Main.s_CLEANUP~q\,
	datac => \UART_RX_INST|r_SM_Main.000~q\,
	datad => \UART_RX_INST|Selector14~3_combout\,
	combout => \UART_RX_INST|Selector12~0_combout\);

-- Location: FF_X82_Y72_N19
\UART_RX_INST|r_SM_Main.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_SM_Main.000~q\);

-- Location: LCCOMB_X82_Y72_N28
\UART_RX_INST|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector11~0_combout\ = (\UART_RX_INST|r_Bit_Index\(0) & ((\UART_RX_INST|r_SM_Main.000~q\) # (\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(0),
	datab => \UART_RX_INST|r_SM_Main.000~q\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\,
	combout => \UART_RX_INST|Selector11~0_combout\);

-- Location: LCCOMB_X82_Y72_N12
\UART_RX_INST|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector11~1_combout\ = \UART_RX_INST|Selector11~0_combout\ $ (((\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\ & ((\UART_RX_INST|r_Clock_Count\(7)) # (!\UART_RX_INST|LessThan1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|Selector11~0_combout\,
	datab => \UART_RX_INST|LessThan1~1_combout\,
	datac => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\,
	datad => \UART_RX_INST|r_Clock_Count\(7),
	combout => \UART_RX_INST|Selector11~1_combout\);

-- Location: FF_X82_Y72_N13
\UART_RX_INST|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Bit_Index\(0));

-- Location: LCCOMB_X81_Y72_N16
\UART_RX_INST|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector10~2_combout\ = (\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\ & (\UART_RX_INST|r_Bit_Index\(1) $ (((\UART_RX_INST|r_Bit_Index\(0) & \UART_RX_INST|LessThan1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(0),
	datac => \UART_RX_INST|LessThan1~2_combout\,
	datad => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\,
	combout => \UART_RX_INST|Selector10~2_combout\);

-- Location: LCCOMB_X81_Y72_N26
\UART_RX_INST|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Selector10~3_combout\ = (\UART_RX_INST|Selector10~2_combout\) # ((\UART_RX_INST|r_SM_Main.000~q\ & (\UART_RX_INST|r_Bit_Index\(1) & !\UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|Selector10~2_combout\,
	datab => \UART_RX_INST|r_SM_Main.000~q\,
	datac => \UART_RX_INST|r_Bit_Index\(1),
	datad => \UART_RX_INST|r_SM_Main.s_RX_DATA_BITS~q\,
	combout => \UART_RX_INST|Selector10~3_combout\);

-- Location: FF_X81_Y72_N27
\UART_RX_INST|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|Selector10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Bit_Index\(1));

-- Location: LCCOMB_X81_Y72_N22
\UART_RX_INST|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Decoder0~1_combout\ = (!\UART_RX_INST|r_Bit_Index\(1) & (!\UART_RX_INST|r_Bit_Index\(2) & (!\UART_RX_INST|r_Bit_Index\(0) & \UART_RX_INST|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|Decoder0~0_combout\,
	combout => \UART_RX_INST|Decoder0~1_combout\);

-- Location: LCCOMB_X80_Y72_N24
\UART_RX_INST|r_Rx_Byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Rx_Byte[0]~0_combout\ = (\UART_RX_INST|Decoder0~1_combout\ & (!\UART_RX_INST|r_Rx_Data~q\)) # (!\UART_RX_INST|Decoder0~1_combout\ & ((\UART_RX_INST|r_Rx_Byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_Rx_Data~q\,
	datac => \UART_RX_INST|r_Rx_Byte\(0),
	datad => \UART_RX_INST|Decoder0~1_combout\,
	combout => \UART_RX_INST|r_Rx_Byte[0]~0_combout\);

-- Location: FF_X80_Y72_N25
\UART_RX_INST|r_Rx_Byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Rx_Byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Byte\(0));

-- Location: LCCOMB_X81_Y72_N2
\UART_RX_INST|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Decoder0~2_combout\ = (!\UART_RX_INST|r_Bit_Index\(1) & (!\UART_RX_INST|r_Bit_Index\(2) & (\UART_RX_INST|r_Bit_Index\(0) & \UART_RX_INST|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|Decoder0~0_combout\,
	combout => \UART_RX_INST|Decoder0~2_combout\);

-- Location: LCCOMB_X82_Y72_N16
\UART_RX_INST|r_Rx_Byte[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Rx_Byte[1]~1_combout\ = (\UART_RX_INST|Decoder0~2_combout\ & ((!\UART_RX_INST|r_Rx_Data~q\))) # (!\UART_RX_INST|Decoder0~2_combout\ & (\UART_RX_INST|r_Rx_Byte\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|Decoder0~2_combout\,
	datac => \UART_RX_INST|r_Rx_Byte\(1),
	datad => \UART_RX_INST|r_Rx_Data~q\,
	combout => \UART_RX_INST|r_Rx_Byte[1]~1_combout\);

-- Location: FF_X82_Y72_N17
\UART_RX_INST|r_Rx_Byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Rx_Byte[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Byte\(1));

-- Location: LCCOMB_X81_Y72_N4
\UART_RX_INST|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Decoder0~3_combout\ = (\UART_RX_INST|r_Bit_Index\(1) & (!\UART_RX_INST|r_Bit_Index\(2) & (!\UART_RX_INST|r_Bit_Index\(0) & \UART_RX_INST|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|Decoder0~0_combout\,
	combout => \UART_RX_INST|Decoder0~3_combout\);

-- Location: LCCOMB_X80_Y72_N2
\UART_RX_INST|r_Rx_Byte[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Rx_Byte[2]~2_combout\ = (\UART_RX_INST|Decoder0~3_combout\ & (!\UART_RX_INST|r_Rx_Data~q\)) # (!\UART_RX_INST|Decoder0~3_combout\ & ((\UART_RX_INST|r_Rx_Byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_Rx_Data~q\,
	datac => \UART_RX_INST|r_Rx_Byte\(2),
	datad => \UART_RX_INST|Decoder0~3_combout\,
	combout => \UART_RX_INST|r_Rx_Byte[2]~2_combout\);

-- Location: FF_X80_Y72_N3
\UART_RX_INST|r_Rx_Byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Rx_Byte[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Byte\(2));

-- Location: LCCOMB_X81_Y72_N30
\UART_RX_INST|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Decoder0~4_combout\ = (\UART_RX_INST|r_Bit_Index\(1) & (!\UART_RX_INST|r_Bit_Index\(2) & (\UART_RX_INST|r_Bit_Index\(0) & \UART_RX_INST|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|Decoder0~0_combout\,
	combout => \UART_RX_INST|Decoder0~4_combout\);

-- Location: LCCOMB_X82_Y72_N26
\UART_RX_INST|r_Rx_Byte[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Rx_Byte[3]~3_combout\ = (\UART_RX_INST|Decoder0~4_combout\ & (!\UART_RX_INST|r_Rx_Data~q\)) # (!\UART_RX_INST|Decoder0~4_combout\ & ((\UART_RX_INST|r_Rx_Byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Rx_Data~q\,
	datac => \UART_RX_INST|r_Rx_Byte\(3),
	datad => \UART_RX_INST|Decoder0~4_combout\,
	combout => \UART_RX_INST|r_Rx_Byte[3]~3_combout\);

-- Location: FF_X82_Y72_N27
\UART_RX_INST|r_Rx_Byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Rx_Byte[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Byte\(3));

-- Location: LCCOMB_X81_Y72_N24
\UART_RX_INST|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Decoder0~5_combout\ = (!\UART_RX_INST|r_Bit_Index\(1) & (\UART_RX_INST|r_Bit_Index\(2) & (!\UART_RX_INST|r_Bit_Index\(0) & \UART_RX_INST|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|Decoder0~0_combout\,
	combout => \UART_RX_INST|Decoder0~5_combout\);

-- Location: LCCOMB_X80_Y72_N20
\UART_RX_INST|r_Rx_Byte[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Rx_Byte[4]~4_combout\ = (\UART_RX_INST|Decoder0~5_combout\ & (!\UART_RX_INST|r_Rx_Data~q\)) # (!\UART_RX_INST|Decoder0~5_combout\ & ((\UART_RX_INST|r_Rx_Byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_Rx_Data~q\,
	datac => \UART_RX_INST|r_Rx_Byte\(4),
	datad => \UART_RX_INST|Decoder0~5_combout\,
	combout => \UART_RX_INST|r_Rx_Byte[4]~4_combout\);

-- Location: FF_X80_Y72_N21
\UART_RX_INST|r_Rx_Byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Rx_Byte[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Byte\(4));

-- Location: LCCOMB_X81_Y72_N18
\UART_RX_INST|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Decoder0~6_combout\ = (!\UART_RX_INST|r_Bit_Index\(1) & (\UART_RX_INST|r_Bit_Index\(2) & (\UART_RX_INST|r_Bit_Index\(0) & \UART_RX_INST|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|Decoder0~0_combout\,
	combout => \UART_RX_INST|Decoder0~6_combout\);

-- Location: LCCOMB_X80_Y72_N14
\UART_RX_INST|r_Rx_Byte[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Rx_Byte[5]~5_combout\ = (\UART_RX_INST|Decoder0~6_combout\ & (!\UART_RX_INST|r_Rx_Data~q\)) # (!\UART_RX_INST|Decoder0~6_combout\ & ((\UART_RX_INST|r_Rx_Byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_Rx_Data~q\,
	datac => \UART_RX_INST|r_Rx_Byte\(5),
	datad => \UART_RX_INST|Decoder0~6_combout\,
	combout => \UART_RX_INST|r_Rx_Byte[5]~5_combout\);

-- Location: FF_X80_Y72_N15
\UART_RX_INST|r_Rx_Byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Rx_Byte[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Byte\(5));

-- Location: LCCOMB_X81_Y72_N28
\UART_RX_INST|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|Decoder0~7_combout\ = (\UART_RX_INST|r_Bit_Index\(1) & (\UART_RX_INST|r_Bit_Index\(2) & (!\UART_RX_INST|r_Bit_Index\(0) & \UART_RX_INST|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX_INST|r_Bit_Index\(1),
	datab => \UART_RX_INST|r_Bit_Index\(2),
	datac => \UART_RX_INST|r_Bit_Index\(0),
	datad => \UART_RX_INST|Decoder0~0_combout\,
	combout => \UART_RX_INST|Decoder0~7_combout\);

-- Location: LCCOMB_X80_Y72_N16
\UART_RX_INST|r_Rx_Byte[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Rx_Byte[6]~6_combout\ = (\UART_RX_INST|Decoder0~7_combout\ & (!\UART_RX_INST|r_Rx_Data~q\)) # (!\UART_RX_INST|Decoder0~7_combout\ & ((\UART_RX_INST|r_Rx_Byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|r_Rx_Data~q\,
	datac => \UART_RX_INST|r_Rx_Byte\(6),
	datad => \UART_RX_INST|Decoder0~7_combout\,
	combout => \UART_RX_INST|r_Rx_Byte[6]~6_combout\);

-- Location: FF_X80_Y72_N17
\UART_RX_INST|r_Rx_Byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Rx_Byte[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Byte\(6));

-- Location: LCCOMB_X81_Y72_N8
\UART_RX_INST|r_Rx_Byte[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_RX_INST|r_Rx_Byte[7]~7_combout\ = (\UART_RX_INST|Decoder0~8_combout\ & ((!\UART_RX_INST|r_Rx_Data~q\))) # (!\UART_RX_INST|Decoder0~8_combout\ & (\UART_RX_INST|r_Rx_Byte\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX_INST|Decoder0~8_combout\,
	datac => \UART_RX_INST|r_Rx_Byte\(7),
	datad => \UART_RX_INST|r_Rx_Data~q\,
	combout => \UART_RX_INST|r_Rx_Byte[7]~7_combout\);

-- Location: FF_X81_Y72_N9
\UART_RX_INST|r_Rx_Byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_RX_INST|r_Rx_Byte[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_RX_INST|r_Rx_Byte\(7));

-- Location: LCCOMB_X105_Y40_N12
\UART_TX_INST|r_Clock_Count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Clock_Count[0]~8_combout\ = \UART_TX_INST|r_Clock_Count\(0) $ (VCC)
-- \UART_TX_INST|r_Clock_Count[0]~9\ = CARRY(\UART_TX_INST|r_Clock_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Clock_Count\(0),
	datad => VCC,
	combout => \UART_TX_INST|r_Clock_Count[0]~8_combout\,
	cout => \UART_TX_INST|r_Clock_Count[0]~9\);

-- Location: LCCOMB_X105_Y40_N10
\UART_TX_INST|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|LessThan1~0_combout\ = (!\UART_TX_INST|r_Clock_Count\(5) & (!\UART_TX_INST|r_Clock_Count\(3) & ((!\UART_TX_INST|r_Clock_Count\(2)) # (!\UART_TX_INST|r_Clock_Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Clock_Count\(5),
	datab => \UART_TX_INST|r_Clock_Count\(3),
	datac => \UART_TX_INST|r_Clock_Count\(1),
	datad => \UART_TX_INST|r_Clock_Count\(2),
	combout => \UART_TX_INST|LessThan1~0_combout\);

-- Location: LCCOMB_X105_Y40_N24
\UART_TX_INST|r_Clock_Count[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Clock_Count[6]~21_combout\ = (\UART_TX_INST|r_Clock_Count\(6) & (\UART_TX_INST|r_Clock_Count[5]~20\ $ (GND))) # (!\UART_TX_INST|r_Clock_Count\(6) & (!\UART_TX_INST|r_Clock_Count[5]~20\ & VCC))
-- \UART_TX_INST|r_Clock_Count[6]~22\ = CARRY((\UART_TX_INST|r_Clock_Count\(6) & !\UART_TX_INST|r_Clock_Count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_INST|r_Clock_Count\(6),
	datad => VCC,
	cin => \UART_TX_INST|r_Clock_Count[5]~20\,
	combout => \UART_TX_INST|r_Clock_Count[6]~21_combout\,
	cout => \UART_TX_INST|r_Clock_Count[6]~22\);

-- Location: LCCOMB_X105_Y40_N26
\UART_TX_INST|r_Clock_Count[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Clock_Count[7]~23_combout\ = \UART_TX_INST|r_Clock_Count\(7) $ (\UART_TX_INST|r_Clock_Count[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Clock_Count\(7),
	cin => \UART_TX_INST|r_Clock_Count[6]~22\,
	combout => \UART_TX_INST|r_Clock_Count[7]~23_combout\);

-- Location: LCCOMB_X105_Y40_N8
\UART_TX_INST|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|LessThan1~3_combout\ = (\UART_TX_INST|LessThan1~0_combout\) # (((!\UART_TX_INST|r_Clock_Count\(5) & !\UART_TX_INST|r_Clock_Count\(4))) # (!\UART_TX_INST|r_Clock_Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|LessThan1~0_combout\,
	datab => \UART_TX_INST|r_Clock_Count\(6),
	datac => \UART_TX_INST|r_Clock_Count\(5),
	datad => \UART_TX_INST|r_Clock_Count\(4),
	combout => \UART_TX_INST|LessThan1~3_combout\);

-- Location: IOIBUF_X115_Y40_N8
\key1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: LCCOMB_X105_Y40_N0
\UART_TX_INST|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector14~0_combout\ = (!\UART_TX_INST|r_SM_Main.s_CLEANUP~q\ & ((\key1~input_o\) # (\UART_TX_INST|r_SM_Main.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~input_o\,
	datac => \UART_TX_INST|r_SM_Main.000~q\,
	datad => \UART_TX_INST|r_SM_Main.s_CLEANUP~q\,
	combout => \UART_TX_INST|Selector14~0_combout\);

-- Location: FF_X105_Y40_N1
\UART_TX_INST|r_SM_Main.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_SM_Main.000~q\);

-- Location: LCCOMB_X103_Y40_N22
\UART_TX_INST|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector12~0_combout\ = (\UART_TX_INST|r_Bit_Index\(0) & ((\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\) # (\UART_TX_INST|r_SM_Main.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Bit_Index\(0),
	datab => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	datac => \UART_TX_INST|r_SM_Main.000~q\,
	combout => \UART_TX_INST|Selector12~0_combout\);

-- Location: LCCOMB_X103_Y40_N12
\UART_TX_INST|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector12~1_combout\ = \UART_TX_INST|Selector12~0_combout\ $ (((\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\ & ((\UART_TX_INST|r_Clock_Count\(7)) # (!\UART_TX_INST|LessThan1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|LessThan1~3_combout\,
	datab => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	datac => \UART_TX_INST|Selector12~0_combout\,
	datad => \UART_TX_INST|r_Clock_Count\(7),
	combout => \UART_TX_INST|Selector12~1_combout\);

-- Location: FF_X103_Y40_N13
\UART_TX_INST|r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Bit_Index\(0));

-- Location: LCCOMB_X103_Y40_N28
\UART_TX_INST|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector11~0_combout\ = (\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\ & (\UART_TX_INST|r_Bit_Index\(0))) # (!\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\ & ((\UART_TX_INST|r_SM_Main.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Bit_Index\(0),
	datab => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	datac => \UART_TX_INST|r_SM_Main.000~q\,
	combout => \UART_TX_INST|Selector11~0_combout\);

-- Location: LCCOMB_X103_Y40_N18
\UART_TX_INST|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector11~1_combout\ = (\UART_TX_INST|Selector11~0_combout\ & (\UART_TX_INST|r_Bit_Index\(1) $ (((!\UART_TX_INST|LessThan1~2_combout\ & \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\))))) # (!\UART_TX_INST|Selector11~0_combout\ & 
-- (((\UART_TX_INST|r_Bit_Index\(1) & \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|LessThan1~2_combout\,
	datab => \UART_TX_INST|Selector11~0_combout\,
	datac => \UART_TX_INST|r_Bit_Index\(1),
	datad => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	combout => \UART_TX_INST|Selector11~1_combout\);

-- Location: FF_X103_Y40_N19
\UART_TX_INST|r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Bit_Index\(1));

-- Location: LCCOMB_X103_Y40_N14
\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0_combout\ = (\UART_TX_INST|r_Bit_Index\(0) & (\UART_TX_INST|r_Bit_Index\(1) & (\UART_TX_INST|r_Bit_Index\(2) & !\UART_TX_INST|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Bit_Index\(0),
	datab => \UART_TX_INST|r_Bit_Index\(1),
	datac => \UART_TX_INST|r_Bit_Index\(2),
	datad => \UART_TX_INST|LessThan1~2_combout\,
	combout => \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0_combout\);

-- Location: LCCOMB_X103_Y40_N4
\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~1_combout\ = (\UART_TX_INST|LessThan1~2_combout\ & ((\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~q\) # ((\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0_combout\ & \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\)))) # 
-- (!\UART_TX_INST|LessThan1~2_combout\ & (\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0_combout\ & ((\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|LessThan1~2_combout\,
	datab => \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0_combout\,
	datac => \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~q\,
	datad => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	combout => \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~1_combout\);

-- Location: FF_X103_Y40_N5
\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~q\);

-- Location: LCCOMB_X103_Y40_N24
\UART_TX_INST|r_SM_Main~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_SM_Main~9_combout\ = (\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~q\ & ((\UART_TX_INST|r_Clock_Count\(7)) # ((!\UART_TX_INST|LessThan1~0_combout\ & !\UART_TX_INST|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|LessThan1~0_combout\,
	datab => \UART_TX_INST|LessThan1~1_combout\,
	datac => \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~q\,
	datad => \UART_TX_INST|r_Clock_Count\(7),
	combout => \UART_TX_INST|r_SM_Main~9_combout\);

-- Location: FF_X103_Y40_N25
\UART_TX_INST|r_SM_Main.s_CLEANUP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_SM_Main~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_SM_Main.s_CLEANUP~q\);

-- Location: FF_X105_Y40_N27
\UART_TX_INST|r_Clock_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_Clock_Count[7]~23_combout\,
	sclr => \UART_TX_INST|r_Clock_Count[7]~12_combout\,
	ena => \UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Clock_Count\(7));

-- Location: LCCOMB_X105_Y40_N2
\UART_TX_INST|r_Clock_Count[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Clock_Count[7]~12_combout\ = (\UART_TX_INST|r_Clock_Count\(7)) # (((!\UART_TX_INST|LessThan1~0_combout\ & !\UART_TX_INST|LessThan1~1_combout\)) # (!\UART_TX_INST|r_SM_Main.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|LessThan1~0_combout\,
	datab => \UART_TX_INST|LessThan1~1_combout\,
	datac => \UART_TX_INST|r_Clock_Count\(7),
	datad => \UART_TX_INST|r_SM_Main.000~q\,
	combout => \UART_TX_INST|r_Clock_Count[7]~12_combout\);

-- Location: FF_X105_Y40_N13
\UART_TX_INST|r_Clock_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_Clock_Count[0]~8_combout\,
	sclr => \UART_TX_INST|r_Clock_Count[7]~12_combout\,
	ena => \UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Clock_Count\(0));

-- Location: LCCOMB_X105_Y40_N14
\UART_TX_INST|r_Clock_Count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Clock_Count[1]~10_combout\ = (\UART_TX_INST|r_Clock_Count\(1) & (!\UART_TX_INST|r_Clock_Count[0]~9\)) # (!\UART_TX_INST|r_Clock_Count\(1) & ((\UART_TX_INST|r_Clock_Count[0]~9\) # (GND)))
-- \UART_TX_INST|r_Clock_Count[1]~11\ = CARRY((!\UART_TX_INST|r_Clock_Count[0]~9\) # (!\UART_TX_INST|r_Clock_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_INST|r_Clock_Count\(1),
	datad => VCC,
	cin => \UART_TX_INST|r_Clock_Count[0]~9\,
	combout => \UART_TX_INST|r_Clock_Count[1]~10_combout\,
	cout => \UART_TX_INST|r_Clock_Count[1]~11\);

-- Location: FF_X105_Y40_N15
\UART_TX_INST|r_Clock_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_Clock_Count[1]~10_combout\,
	sclr => \UART_TX_INST|r_Clock_Count[7]~12_combout\,
	ena => \UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Clock_Count\(1));

-- Location: LCCOMB_X105_Y40_N16
\UART_TX_INST|r_Clock_Count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Clock_Count[2]~13_combout\ = (\UART_TX_INST|r_Clock_Count\(2) & (\UART_TX_INST|r_Clock_Count[1]~11\ $ (GND))) # (!\UART_TX_INST|r_Clock_Count\(2) & (!\UART_TX_INST|r_Clock_Count[1]~11\ & VCC))
-- \UART_TX_INST|r_Clock_Count[2]~14\ = CARRY((\UART_TX_INST|r_Clock_Count\(2) & !\UART_TX_INST|r_Clock_Count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_INST|r_Clock_Count\(2),
	datad => VCC,
	cin => \UART_TX_INST|r_Clock_Count[1]~11\,
	combout => \UART_TX_INST|r_Clock_Count[2]~13_combout\,
	cout => \UART_TX_INST|r_Clock_Count[2]~14\);

-- Location: FF_X105_Y40_N17
\UART_TX_INST|r_Clock_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_Clock_Count[2]~13_combout\,
	sclr => \UART_TX_INST|r_Clock_Count[7]~12_combout\,
	ena => \UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Clock_Count\(2));

-- Location: LCCOMB_X105_Y40_N18
\UART_TX_INST|r_Clock_Count[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Clock_Count[3]~15_combout\ = (\UART_TX_INST|r_Clock_Count\(3) & (!\UART_TX_INST|r_Clock_Count[2]~14\)) # (!\UART_TX_INST|r_Clock_Count\(3) & ((\UART_TX_INST|r_Clock_Count[2]~14\) # (GND)))
-- \UART_TX_INST|r_Clock_Count[3]~16\ = CARRY((!\UART_TX_INST|r_Clock_Count[2]~14\) # (!\UART_TX_INST|r_Clock_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_INST|r_Clock_Count\(3),
	datad => VCC,
	cin => \UART_TX_INST|r_Clock_Count[2]~14\,
	combout => \UART_TX_INST|r_Clock_Count[3]~15_combout\,
	cout => \UART_TX_INST|r_Clock_Count[3]~16\);

-- Location: FF_X105_Y40_N19
\UART_TX_INST|r_Clock_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_Clock_Count[3]~15_combout\,
	sclr => \UART_TX_INST|r_Clock_Count[7]~12_combout\,
	ena => \UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Clock_Count\(3));

-- Location: LCCOMB_X105_Y40_N20
\UART_TX_INST|r_Clock_Count[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Clock_Count[4]~17_combout\ = (\UART_TX_INST|r_Clock_Count\(4) & (\UART_TX_INST|r_Clock_Count[3]~16\ $ (GND))) # (!\UART_TX_INST|r_Clock_Count\(4) & (!\UART_TX_INST|r_Clock_Count[3]~16\ & VCC))
-- \UART_TX_INST|r_Clock_Count[4]~18\ = CARRY((\UART_TX_INST|r_Clock_Count\(4) & !\UART_TX_INST|r_Clock_Count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_INST|r_Clock_Count\(4),
	datad => VCC,
	cin => \UART_TX_INST|r_Clock_Count[3]~16\,
	combout => \UART_TX_INST|r_Clock_Count[4]~17_combout\,
	cout => \UART_TX_INST|r_Clock_Count[4]~18\);

-- Location: FF_X105_Y40_N21
\UART_TX_INST|r_Clock_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_Clock_Count[4]~17_combout\,
	sclr => \UART_TX_INST|r_Clock_Count[7]~12_combout\,
	ena => \UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Clock_Count\(4));

-- Location: LCCOMB_X105_Y40_N22
\UART_TX_INST|r_Clock_Count[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Clock_Count[5]~19_combout\ = (\UART_TX_INST|r_Clock_Count\(5) & (!\UART_TX_INST|r_Clock_Count[4]~18\)) # (!\UART_TX_INST|r_Clock_Count\(5) & ((\UART_TX_INST|r_Clock_Count[4]~18\) # (GND)))
-- \UART_TX_INST|r_Clock_Count[5]~20\ = CARRY((!\UART_TX_INST|r_Clock_Count[4]~18\) # (!\UART_TX_INST|r_Clock_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Clock_Count\(5),
	datad => VCC,
	cin => \UART_TX_INST|r_Clock_Count[4]~18\,
	combout => \UART_TX_INST|r_Clock_Count[5]~19_combout\,
	cout => \UART_TX_INST|r_Clock_Count[5]~20\);

-- Location: FF_X105_Y40_N23
\UART_TX_INST|r_Clock_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_Clock_Count[5]~19_combout\,
	sclr => \UART_TX_INST|r_Clock_Count[7]~12_combout\,
	ena => \UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Clock_Count\(5));

-- Location: FF_X105_Y40_N25
\UART_TX_INST|r_Clock_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_Clock_Count[6]~21_combout\,
	sclr => \UART_TX_INST|r_Clock_Count[7]~12_combout\,
	ena => \UART_TX_INST|ALT_INV_r_SM_Main.s_CLEANUP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Clock_Count\(6));

-- Location: LCCOMB_X105_Y40_N4
\UART_TX_INST|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|LessThan1~1_combout\ = ((!\UART_TX_INST|r_Clock_Count\(5) & !\UART_TX_INST|r_Clock_Count\(4))) # (!\UART_TX_INST|r_Clock_Count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_INST|r_Clock_Count\(6),
	datac => \UART_TX_INST|r_Clock_Count\(5),
	datad => \UART_TX_INST|r_Clock_Count\(4),
	combout => \UART_TX_INST|LessThan1~1_combout\);

-- Location: LCCOMB_X105_Y40_N6
\UART_TX_INST|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|LessThan1~2_combout\ = (!\UART_TX_INST|r_Clock_Count\(7) & ((\UART_TX_INST|LessThan1~1_combout\) # (\UART_TX_INST|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_INST|LessThan1~1_combout\,
	datac => \UART_TX_INST|r_Clock_Count\(7),
	datad => \UART_TX_INST|LessThan1~0_combout\,
	combout => \UART_TX_INST|LessThan1~2_combout\);

-- Location: LCCOMB_X103_Y40_N20
\UART_TX_INST|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector15~1_combout\ = (\UART_TX_INST|LessThan1~2_combout\ & ((\UART_TX_INST|r_SM_Main.s_TX_START_BIT~q\) # ((!\UART_TX_INST|r_SM_Main.000~q\ & \key1~input_o\)))) # (!\UART_TX_INST|LessThan1~2_combout\ & (!\UART_TX_INST|r_SM_Main.000~q\ & 
-- ((\key1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|LessThan1~2_combout\,
	datab => \UART_TX_INST|r_SM_Main.000~q\,
	datac => \UART_TX_INST|r_SM_Main.s_TX_START_BIT~q\,
	datad => \key1~input_o\,
	combout => \UART_TX_INST|Selector15~1_combout\);

-- Location: FF_X103_Y40_N21
\UART_TX_INST|r_SM_Main.s_TX_START_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_SM_Main.s_TX_START_BIT~q\);

-- Location: LCCOMB_X103_Y40_N16
\UART_TX_INST|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector16~0_combout\ = (\UART_TX_INST|LessThan1~2_combout\ & (!\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0_combout\ & (\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\))) # (!\UART_TX_INST|LessThan1~2_combout\ & 
-- ((\UART_TX_INST|r_SM_Main.s_TX_START_BIT~q\) # ((!\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0_combout\ & \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|LessThan1~2_combout\,
	datab => \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~0_combout\,
	datac => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	datad => \UART_TX_INST|r_SM_Main.s_TX_START_BIT~q\,
	combout => \UART_TX_INST|Selector16~0_combout\);

-- Location: FF_X103_Y40_N17
\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\);

-- Location: LCCOMB_X103_Y40_N2
\UART_TX_INST|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector10~1_combout\ = (\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\ & ((\UART_TX_INST|r_Bit_Index\(1)))) # (!\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\ & (\UART_TX_INST|r_SM_Main.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	datac => \UART_TX_INST|r_SM_Main.000~q\,
	datad => \UART_TX_INST|r_Bit_Index\(1),
	combout => \UART_TX_INST|Selector10~1_combout\);

-- Location: LCCOMB_X103_Y40_N8
\UART_TX_INST|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector10~0_combout\ = (\UART_TX_INST|r_Bit_Index\(0) & ((\UART_TX_INST|r_Clock_Count\(7)) # ((!\UART_TX_INST|LessThan1~1_combout\ & !\UART_TX_INST|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Bit_Index\(0),
	datab => \UART_TX_INST|r_Clock_Count\(7),
	datac => \UART_TX_INST|LessThan1~1_combout\,
	datad => \UART_TX_INST|LessThan1~0_combout\,
	combout => \UART_TX_INST|Selector10~0_combout\);

-- Location: LCCOMB_X103_Y40_N30
\UART_TX_INST|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector10~2_combout\ = (\UART_TX_INST|Selector10~1_combout\ & (\UART_TX_INST|r_Bit_Index\(2) $ (((\UART_TX_INST|Selector10~0_combout\ & \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\))))) # (!\UART_TX_INST|Selector10~1_combout\ & 
-- (((\UART_TX_INST|r_Bit_Index\(2) & \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|Selector10~1_combout\,
	datab => \UART_TX_INST|Selector10~0_combout\,
	datac => \UART_TX_INST|r_Bit_Index\(2),
	datad => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	combout => \UART_TX_INST|Selector10~2_combout\);

-- Location: FF_X103_Y40_N31
\UART_TX_INST|r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Bit_Index\(2));

-- Location: LCCOMB_X103_Y40_N26
\UART_TX_INST|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector15~0_combout\ = (!\UART_TX_INST|r_SM_Main.000~q\ & \key1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_TX_INST|r_SM_Main.000~q\,
	datad => \key1~input_o\,
	combout => \UART_TX_INST|Selector15~0_combout\);

-- Location: FF_X102_Y40_N27
\UART_TX_INST|r_Tx_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \UART_TX_INST|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Tx_Data\(1));

-- Location: FF_X102_Y40_N13
\UART_TX_INST|r_Tx_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \UART_TX_INST|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Tx_Data\(0));

-- Location: LCCOMB_X102_Y40_N12
\UART_TX_INST|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Mux0~2_combout\ = (\UART_TX_INST|r_Bit_Index\(0) & ((\UART_TX_INST|r_Tx_Data\(1)) # ((\UART_TX_INST|r_Bit_Index\(1))))) # (!\UART_TX_INST|r_Bit_Index\(0) & (((\UART_TX_INST|r_Tx_Data\(0) & !\UART_TX_INST|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Tx_Data\(1),
	datab => \UART_TX_INST|r_Bit_Index\(0),
	datac => \UART_TX_INST|r_Tx_Data\(0),
	datad => \UART_TX_INST|r_Bit_Index\(1),
	combout => \UART_TX_INST|Mux0~2_combout\);

-- Location: FF_X102_Y40_N1
\UART_TX_INST|r_Tx_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \UART_TX_INST|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Tx_Data\(2));

-- Location: FF_X102_Y40_N23
\UART_TX_INST|r_Tx_Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \UART_TX_INST|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Tx_Data\(3));

-- Location: LCCOMB_X102_Y40_N22
\UART_TX_INST|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Mux0~3_combout\ = (\UART_TX_INST|Mux0~2_combout\ & (((\UART_TX_INST|r_Tx_Data\(3)) # (!\UART_TX_INST|r_Bit_Index\(1))))) # (!\UART_TX_INST|Mux0~2_combout\ & (\UART_TX_INST|r_Tx_Data\(2) & ((\UART_TX_INST|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|Mux0~2_combout\,
	datab => \UART_TX_INST|r_Tx_Data\(2),
	datac => \UART_TX_INST|r_Tx_Data\(3),
	datad => \UART_TX_INST|r_Bit_Index\(1),
	combout => \UART_TX_INST|Mux0~3_combout\);

-- Location: LCCOMB_X103_Y40_N6
\UART_TX_INST|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector0~1_combout\ = (\UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~q\) # ((!\UART_TX_INST|r_Bit_Index\(2) & (\UART_TX_INST|Mux0~3_combout\ & \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Bit_Index\(2),
	datab => \UART_TX_INST|Mux0~3_combout\,
	datac => \UART_TX_INST|r_SM_Main.s_TX_STOP_BIT~q\,
	datad => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	combout => \UART_TX_INST|Selector0~1_combout\);

-- Location: FF_X102_Y40_N11
\UART_TX_INST|r_Tx_Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \UART_TX_INST|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Tx_Data\(5));

-- Location: FF_X102_Y40_N21
\UART_TX_INST|r_Tx_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \UART_TX_INST|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Tx_Data\(4));

-- Location: LCCOMB_X102_Y40_N20
\UART_TX_INST|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Mux0~0_combout\ = (\UART_TX_INST|r_Bit_Index\(0) & ((\UART_TX_INST|r_Tx_Data\(5)) # ((\UART_TX_INST|r_Bit_Index\(1))))) # (!\UART_TX_INST|r_Bit_Index\(0) & (((\UART_TX_INST|r_Tx_Data\(4) & !\UART_TX_INST|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Tx_Data\(5),
	datab => \UART_TX_INST|r_Bit_Index\(0),
	datac => \UART_TX_INST|r_Tx_Data\(4),
	datad => \UART_TX_INST|r_Bit_Index\(1),
	combout => \UART_TX_INST|Mux0~0_combout\);

-- Location: LCCOMB_X102_Y40_N24
\UART_TX_INST|r_Tx_Data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|r_Tx_Data[6]~feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \UART_TX_INST|r_Tx_Data[6]~feeder_combout\);

-- Location: FF_X102_Y40_N25
\UART_TX_INST|r_Tx_Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|r_Tx_Data[6]~feeder_combout\,
	ena => \UART_TX_INST|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Tx_Data\(6));

-- Location: FF_X102_Y40_N15
\UART_TX_INST|r_Tx_Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \UART_TX_INST|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|r_Tx_Data\(7));

-- Location: LCCOMB_X102_Y40_N14
\UART_TX_INST|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Mux0~1_combout\ = (\UART_TX_INST|Mux0~0_combout\ & (((\UART_TX_INST|r_Tx_Data\(7)) # (!\UART_TX_INST|r_Bit_Index\(1))))) # (!\UART_TX_INST|Mux0~0_combout\ & (\UART_TX_INST|r_Tx_Data\(6) & ((\UART_TX_INST|r_Bit_Index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|Mux0~0_combout\,
	datab => \UART_TX_INST|r_Tx_Data\(6),
	datac => \UART_TX_INST|r_Tx_Data\(7),
	datad => \UART_TX_INST|r_Bit_Index\(1),
	combout => \UART_TX_INST|Mux0~1_combout\);

-- Location: LCCOMB_X103_Y40_N10
\UART_TX_INST|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector0~0_combout\ = ((\UART_TX_INST|r_Bit_Index\(2) & (\UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\ & \UART_TX_INST|Mux0~1_combout\))) # (!\UART_TX_INST|r_SM_Main.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|r_Bit_Index\(2),
	datab => \UART_TX_INST|r_SM_Main.s_TX_DATA_BITS~q\,
	datac => \UART_TX_INST|r_SM_Main.000~q\,
	datad => \UART_TX_INST|Mux0~1_combout\,
	combout => \UART_TX_INST|Selector0~0_combout\);

-- Location: LCCOMB_X103_Y40_N0
\UART_TX_INST|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \UART_TX_INST|Selector0~2_combout\ = (\UART_TX_INST|Selector0~1_combout\) # ((\UART_TX_INST|Selector0~0_combout\) # ((\UART_TX_INST|r_SM_Main.s_CLEANUP~q\ & \UART_TX_INST|o_Tx_Serial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX_INST|Selector0~1_combout\,
	datab => \UART_TX_INST|r_SM_Main.s_CLEANUP~q\,
	datac => \UART_TX_INST|o_Tx_Serial~q\,
	datad => \UART_TX_INST|Selector0~0_combout\,
	combout => \UART_TX_INST|Selector0~2_combout\);

-- Location: FF_X103_Y40_N1
\UART_TX_INST|o_Tx_Serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \_~1clkctrl_outclk\,
	d => \UART_TX_INST|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UART_TX_INST|o_Tx_Serial~q\);

-- Location: IOIBUF_X115_Y53_N15
\key2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_r_Tx_Serial <= \r_Tx_Serial~output_o\;
END structure;


