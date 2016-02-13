`timescale 1ps / 1ps

module m_tb();
	parameter HALF_NIOS_CYCLE = 5000;

    reg clk;
    wire[31:0] fft_re2,fra,frb;
	 reg[31:0] ra,rb,count;
	 wire nan_sig, overflow_sig, result_sig, underflow_sig,  zero_sig; 
	
	initial
	begin
	  ra=0;rb=0;count=0;
	end
	
always  begin
    #HALF_NIOS_CYCLE    clk = 1;
    #HALF_NIOS_CYCLE    clk = 0;
end

	 
	 always @(posedge clk)
	 begin
	    ra<=ra+1;
	    rb<=rb+1;
	 end
	 
	   int2float	int2float_inst (
	         .clock ( clk ),
	         .dataa ( ra ),
	         .result ( fra )
	   );
	   int2float	int2float_inst1 (
	         .clock ( clk ),
	         .dataa ( rb ),
	         .result ( frb )
	   );


   	fmult fmult_re_inst(	 .clock ( clk ), .aclr ( 0 ),.clk_en ( 1 ),
		                      .dataa (fra),.datab ( frb ),
									 	.nan ( nan_sig ),
                            	.overflow ( overflow_sig ),
	                           .underflow ( underflow_sig ),
	                           .zero ( zero_sig ),

									 .result ( fft_re2 )	    );  //11


endmodule