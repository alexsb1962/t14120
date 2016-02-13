// fdata_0.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module fdata_0 (
		output wire [31:0] data,      // StSource.data
		input  wire        ready,     //         .ready
		output wire        valid,     //         .valid
		output wire        sop,       //         .startofpacket
		output wire        eop,       //         .endofpacket
		output wire [1:0]  empty,     //         .empty
		input  wire        clk,       //    clock.clk
		input  wire        reset,     //    reset.reset
		input  wire [31:0] exp_data,  //      exp.export
		output wire        exp_valid, //         .export
		output wire        exp_eop,   //         .export
		output wire [1:0]  exp_empty, //         .export
		output wire        exp_ready, //         .export
		output wire        exp_sop    //         .export
	);

	fdata fdata_0 (
		.data      (data),      // StSource.data
		.ready     (ready),     //         .ready
		.valid     (valid),     //         .valid
		.sop       (sop),       //         .startofpacket
		.eop       (eop),       //         .endofpacket
		.empty     (empty),     //         .empty
		.clk       (clk),       //    clock.clk
		.reset     (reset),     //    reset.reset
		.exp_data  (exp_data),  //      exp.export
		.exp_valid (exp_valid), //         .export
		.exp_eop   (exp_eop),   //         .export
		.exp_empty (exp_empty), //         .export
		.exp_ready (exp_ready), //         .export
		.exp_sop   (exp_sop)    //         .export
	);

endmodule
