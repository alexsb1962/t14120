`timescale 1ps / 1ps

module stest (	);

	parameter HALF_NIOS_CYCLE = 5000;
	parameter HALF_FFT_CYCLE  = 12500;

		reg         nios_clk, fft_clk; 
      reg reset;		
initial
  begin
    
//    $dumpvars;
    #0 nios_clk = 1'b0;
    #0 fft_clk = 1'b0;
    #0 reset = 1'b1;
    #(5*HALF_FFT_CYCLE) reset = 1'b0;
    
  end

	// тактовые
always  begin
    #HALF_NIOS_CYCLE    nios_clk = 1;
    #HALF_NIOS_CYCLE    nios_clk = 0;
end
always  begin
    #HALF_FFT_CYCLE fft_clk = 1;
    #HALF_FFT_CYCLE fft_clk = 0;
end
endmodule
