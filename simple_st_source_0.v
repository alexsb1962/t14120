// simple_st_source_0.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module simple_st_source_0 (
		output wire [31:0] aso_out0_data,  //  out0.data
		input  wire        aso_out0_ready, //      .ready
		output wire        aso_out0_valid, //      .valid
		output wire        aso_out0_sop,   //      .startofpacket
		output wire        aso_out0_eop,   //      .endofpacket
		output wire [1:0]  aso_out0_empty, //      .empty
		input  wire        clk,            // clock.clk
		input  wire        reset           // reset.reset
	);

	simple_st_source simple_st_source_0 (
		.aso_out0_data  (aso_out0_data),  //  out0.data
		.aso_out0_ready (aso_out0_ready), //      .ready
		.aso_out0_valid (aso_out0_valid), //      .valid
		.aso_out0_sop   (aso_out0_sop),   //      .startofpacket
		.aso_out0_eop   (aso_out0_eop),   //      .endofpacket
		.aso_out0_empty (aso_out0_empty), //      .empty
		.clk            (clk),            // clock.clk
		.reset          (reset)           // reset.reset
	);

endmodule
