// megafunction wizard: %FFT v11.0%
// GENERATION: XML

// ============================================================
// Megafunction Name(s):
// 			apn_fftfp_top_fft_110
// ============================================================
// Generated by FFT 11.0 [Altera, IP Toolbench 1.3.0 Build 208]
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
// ************************************************************
// Copyright (C) 1991-2012 Altera Corporation
// Any megafunction design, and related net list (encrypted or decrypted),
// support information, device programming or simulation file, and any other
// associated documentation or information provided by Altera or a partner
// under Altera's Megafunction Partnership Program may be used only to
// program PLD devices (but not masked PLD devices) from Altera.  Any other
// use of such megafunction design, net list, support information, device
// programming or simulation file, or any other related documentation or
// information is prohibited for any other purpose, including, but not
// limited to modification, reverse engineering, de-compiling, or use with
// any other silicon devices, unless such use is explicitly licensed under
// a separate agreement with Altera or a megafunction partner.  Title to
// the intellectual property, including patents, copyrights, trademarks,
// trade secrets, or maskworks, embodied in any such megafunction design,
// net list, support information, device programming or simulation file, or
// any other related documentation or information provided by Altera or a
// megafunction partner, remains with Altera, the megafunction partner, or
// their respective licensors.  No other licenses, including any licenses
// needed under any third party's intellectual property, are provided herein.


module fft (
	clk,
	reset_n,
	fftpts_in,
	inverse,
	sink_valid,
	sink_sop,
	sink_eop,
	sink_real,
	sink_imag,
	sink_error,
	source_ready,
	fftpts_out,
	sink_ready,
	source_error,
	source_sop,
	source_eop,
	source_valid,
	source_real,
	source_imag);


	input		clk;
	input		reset_n;
	input	[14:0]	fftpts_in;
	input		inverse;
	input		sink_valid;
	input		sink_sop;
	input		sink_eop;
	input	[31:0]	sink_real;
	input	[31:0]	sink_imag;
	input	[1:0]	sink_error;
	input		source_ready;
	output	[14:0]	fftpts_out;
	output		sink_ready;
	output	[1:0]	source_error;
	output		source_sop;
	output		source_eop;
	output		source_valid;
	output	[31:0]	source_real;
	output	[31:0]	source_imag;


	apn_fftfp_top_fft_110	apn_fftfp_top_fft_110_inst(
		.clk(clk),
		.reset_n(reset_n),
		.fftpts_in(fftpts_in),
		.inverse(inverse),
		.sink_valid(sink_valid),
		.sink_sop(sink_sop),
		.sink_eop(sink_eop),
		.sink_real(sink_real),
		.sink_imag(sink_imag),
		.sink_error(sink_error),
		.source_ready(source_ready),
		.fftpts_out(fftpts_out),
		.sink_ready(sink_ready),
		.source_error(source_error),
		.source_sop(source_sop),
		.source_eop(source_eop),
		.source_valid(source_valid),
		.source_real(source_real),
		.source_imag(source_imag));

	defparam
		apn_fftfp_top_fft_110_inst.MAX_FFTPTS_g = 16384,
		apn_fftfp_top_fft_110_inst.NUM_STAGES_g = 7,
		apn_fftfp_top_fft_110_inst.DATAWIDTH_g = 32,
		apn_fftfp_top_fft_110_inst.TWIDWIDTH_g = 32,
		apn_fftfp_top_fft_110_inst.MAX_GROW_g = 0,
		apn_fftfp_top_fft_110_inst.TWIDROM_BASE_g = "fft_",
		apn_fftfp_top_fft_110_inst.DSP_ROUNDING_g = 0,
		apn_fftfp_top_fft_110_inst.INPUT_FORMAT_g = "NATURAL_ORDER",
		apn_fftfp_top_fft_110_inst.OUTPUT_FORMAT_g = "BIT_REVERSED",
		apn_fftfp_top_fft_110_inst.REPRESENTATION_g = "FLOATPT",
		apn_fftfp_top_fft_110_inst.DSP_ARCH_g = 0,
		apn_fftfp_top_fft_110_inst.PRUNE_g = "0,0,0,0,0,0,0";
endmodule

// =========================================================
// FFT Wizard Data
// ===============================
// DO NOT EDIT FOLLOWING DATA
// @Altera, IP Toolbench@
// Warning: If you modify this section, FFT Wizard may not be able to reproduce your chosen configuration.
// 
// Retrieval info: <?xml version="1.0"?>
// Retrieval info: <MEGACORE title="FFT MegaCore Function"  version="11.0"  build="208"  iptb_version="1.3.0 Build 208"  format_version="120" >
// Retrieval info:  <NETLIST_SECTION class="altera.ipbu.flowbase.netlist.model.FFTModelClass"  active_core="apn_fftfp_top_fft_110" >
// Retrieval info:   <STATIC_SECTION>
// Retrieval info:    <PRIVATES>
// Retrieval info:     <NAMESPACE name = "parameterization">
// Retrieval info:      <PRIVATE name = "use_mem" value="1"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "mem_type" value="M512"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "DEVICE" value="Cyclone IV E"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "NPS" value="16384"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "MPR" value="32"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "TWR" value="32"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "ARCH" value="3"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUME" value="2"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "ENGINE_THROUGHPUT" value="4"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "BFP" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "MULT_TYPE" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "MULT_IMP" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "MEGA" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "M512" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "LOGIC_IN_RAM" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_LE" value="32200"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_M4K" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_MEGA" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_M512" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_DSP" value="192"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_CALC_CYCLES" value="16384"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_BLK_THROUGHPUT_CYCLES" value="16384"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "rfs1" value="romfile_1024.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "rfs2" value="romfile_1024.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "rfs3" value="romfile_1024.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "rfc1" value="romfile_1024.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "rfc2" value="romfile_1024.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "rfc3" value="romfile_1024.hex"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "ENA" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "NUM_MEMBITS" value="1178784"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "INPUT_ORDER" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "OUTPUT_ORDER" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "REPRESENTATION" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "ENGINE_ONLY" value="1"  type="INTEGER"  enable="1" />
// Retrieval info:      <PRIVATE name = "DSP_ARCH" value="0"  type="INTEGER"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen_enable">
// Retrieval info:      <PRIVATE name = "language" value="Verilog HDL"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "gb_enabled" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:      <PRIVATE name = "enabled" value="0"  type="BOOLEAN"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "simgen">
// Retrieval info:      <PRIVATE name = "filename" value="fft.vo"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "greybox">
// Retrieval info:      <PRIVATE name = "filename" value="fft_syn.v"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "quartus_settings">
// Retrieval info:      <PRIVATE name = "DEVICE" value="EP4CE115F29C7"  type="STRING"  enable="1" />
// Retrieval info:      <PRIVATE name = "FAMILY" value="Cyclone IV E"  type="STRING"  enable="1" />
// Retrieval info:     </NAMESPACE>
// Retrieval info:     <NAMESPACE name = "serializer"/>
// Retrieval info:    </PRIVATES>
// Retrieval info:    <FILES/>
// Retrieval info:    <PORTS/>
// Retrieval info:    <LIBRARIES/>
// Retrieval info:   </STATIC_SECTION>
// Retrieval info:  </NETLIST_SECTION>
// Retrieval info: </MEGACORE>
// =========================================================