`timescale 1ns / 1ps
module decimate_tb;

parameter HALF_ADC = 1000.0/120 /2;
parameter HALF_FFT  = 1000.0/40  /2;

reg adc_clk,fft_clk,reset;

wire[23:0] sin_data,cos_data;
wire [19:0] adc_data;
wire sg_valid;

initial
begin
  #0 reset=1;
  #0 adc_clk=1;
  #0 fft_clk=1;
  #21 reset=0;
end

always begin   #HALF_ADC  adc_clk=1;   #HALF_ADC  adc_clk=0;end
always begin   #HALF_FFT  fft_clk=1;   #HALF_FFT  fft_clk=0;end


decimate d1(
    .reset( reset ),
    .adc_clk(adc_clk),
	 .fft_clk(fft_clk),
	 .adc_data(adc_data[19:6]),
    .sg_tune( 20'h2aaaa),  // 20
	 .sin_data(sin_data),
	 .cos_data(cos_data)
);




sg sg_inst1 (
    .out_valid(sg_valid),
    .fsin_o(adc_data),
//    .fcos_o(sg_cos[19:0]),
    .phi_inc_i(  20'd8738 ),  //21
    .reset_n(!reset),
    .clken( 1 ),
    .clk(adc_clk)
    );







endmodule
