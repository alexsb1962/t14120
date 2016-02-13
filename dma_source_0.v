// dma_source_0.v

// This file was auto-generated as part of a SOPC Builder generate operation.
// If you edit it your changes will probably be lost.

`timescale 1 ps / 1 ps
module dma_source_0 (
		input  wire        data_adr,             //    data_slave.address
		input  wire        data_read,            //              .read
		output wire [31:0] data_readdata,        //              .readdata
		input  wire        data_write,           //              .write
		input  wire [31:0] data_writedata,       //              .writedata
		output wire        data_readdatavalid,   //              .readdatavalid
		output wire        data_waitrequest,     //              .waitrequest
		input  wire        clk,                  //         clock.clk
		input  wire        reset,                //         reset.reset
		input  wire        control_adr,          // control_slave.address
		input  wire        control_write,        //              .write
		input  wire [31:0] control_data,         //              .writedata
		output wire        control_wait_request  //              .waitrequest
	);

	dma_source dma_source_0 (
		.data_adr             (data_adr),             //    data_slave.address
		.data_read            (data_read),            //              .read
		.data_readdata        (data_readdata),        //              .readdata
		.data_write           (data_write),           //              .write
		.data_writedata       (data_writedata),       //              .writedata
		.data_readdatavalid   (data_readdatavalid),   //              .readdatavalid
		.data_waitrequest     (data_waitrequest),     //              .waitrequest
		.clk                  (clk),                  //         clock.clk
		.reset                (reset),                //         reset.reset
		.control_adr          (control_adr),          // control_slave.address
		.control_write        (control_write),        //              .write
		.control_data         (control_data),         //              .writedata
		.control_wait_request (control_wait_request)  //              .waitrequest
	);

endmodule
