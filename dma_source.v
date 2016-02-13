`timescale 1 ps / 1 ps
module dma_source (
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


	reg[31:0] datar;
	reg data_wait,data_valid,control_wait;
	
	assign data_waitrequest = data_wait;
	assign data_readdata = datar;
	assign data_readdatavalid = data_valid;
	assign control_wait_request = control_wait;

	
	always @(posedge clk)
	begin
	    if (reset) begin
		     datar<=0; data_readdatavalid<=0;
		 end
		 else begin
		    if(data_read)) begin
		        datar<=datar+1;
              data_wait<=0;
			     data_valid<=1;
			 end
			 data_wait<=1;
			 data_valid<=0;
		 end
	end
endmodule
