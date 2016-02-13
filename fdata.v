// просто вытащим наружу сигналы sgdma и clock
`timescale 1 ps / 1 ps
module fdata (
		output wire [31:0] data,      // StSource.data
		input  wire        ready,     //         .ready
		output wire        valid,     //         .valid
		output wire        sop,       //         .startofpacket
		output wire        eop,       //         .endofpacket
		output wire [1:0]  empty,     //         .empty
		input  wire        clk,       //    clock.clk
		input  wire        reset,     //    reset.reset
		input  wire [31:0] exp_data,  //      exp.export
		input  wire        exp_valid, //         .export
		input  wire [1:0]  exp_empty, //         .export
		output wire        exp_ready, //         .export
		input  wire        exp_sop,   //         .export
		input  wire        exp_eop    //         .export
	   
	);

	// TODO: Auto-generated HDL template

	assign eop = exp_eop;
	assign valid = exp_valid;
	assign sop = exp_sop;
	assign empty = 2'b00;
	assign data = exp_data;
	assign exp_ready = ready;

endmodule
