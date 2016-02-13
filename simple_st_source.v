// simple_st_source.v

// This file was auto-generated as a prototype implementation of a module
// created in component editor.  It ties off all outputs to ground and
// ignores all inputs.  It needs to be edited to make it do something
// useful.
// 
// This file will not be automatically regenerated.  You should check it in
// to your version control system if you want to keep it.

`timescale 1 ps / 1 ps
module simple_st_source (
		output wire [31:0] aso_out0_data,  //  out0.data
		input  wire        aso_out0_ready, //      .ready
		output wire        aso_out0_valid, //      .valid
		output wire        aso_out0_sop,   //      .startofpacket
		output wire        aso_out0_eop,   //      .endofpacket
		output wire [1:0]  aso_out0_empty, //      .empty
		input  wire        clk,            // clock.clk
		input  wire        reset           // reset.reset
	);

	// TODO: Auto-generated HDL template

	assign aso_out0_eop = 1'b0;

	assign aso_out0_valid = 1'b0;

	assign aso_out0_sop = 1'b0;

	assign aso_out0_empty = 2'b00;

	assign aso_out0_data = 32'b00000000000000000000000000000000;

endmodule
