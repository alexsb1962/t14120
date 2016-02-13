// megafunction wizard: %ALTFP_LOG%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTFP_LOG 

// ============================================================
// File Name: flog.v
// Megafunction Name(s):
// 			ALTFP_LOG
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 11.0 Build 208 07/03/2011 SP 1 SJ Full Version
// ************************************************************

//Copyright (C) 1991-2011 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.

module flog (
	clk_en,
	clock,
	data,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  clk_en;
	input	  clock;
	input	[31:0]  data;
	output	[31:0]  result;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altfp_log"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "21"
// Retrieval info: CONSTANT: WIDTH_EXP NUMERIC "8"
// Retrieval info: CONSTANT: WIDTH_MAN NUMERIC "23"
// Retrieval info: USED_PORT: clk_en 0 0 0 0 INPUT NODEFVAL "clk_en"
// Retrieval info: CONNECT: @clk_en 0 0 0 0 clk_en 0 0 0 0
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: USED_PORT: data 0 0 32 0 INPUT NODEFVAL "data[31..0]"
// Retrieval info: CONNECT: @data 0 0 32 0 data 0 0 32 0
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: GEN_FILE: TYPE_NORMAL flog.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL flog.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL flog.bsf TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL flog_inst.v TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL flog_bb.v TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL flog.inc TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL flog.cmp TRUE TRUE
// Retrieval info: LIB_FILE: lpm