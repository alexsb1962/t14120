module get_data(
      input adc_clk,
      input fft_clk,
      input nios_clk,
		input[7:0] ctrl, 
		input[31:0] tune0, 
		input[31:0] tune1, 
		
		output[31:0] nios_data,
		input nios_ready,
		output nios_valid,
		output nios_sop,
		output nios_eop,
		output[1:0] nios_empty 
);

wire reset;

wire[31:0] fft_real;
wire[31:0] fft_image;
wire[31:0] sn;
wire[31:0] cs;
wire[23:0] sin_data;
wire[23:0] cos_data;

wire[19:0] sg_cos;

wire[1:0] fft_source_error;
wire fft_sink_ready, fft_source_sop, fft_source_eop, fft_source_valid;
wire fft_sink_sop, fft_sink_eop, fft_sink_valid, fft_source_ready;
wire[15:0] fftpts_out;

assign reset = ctrl[7];




  sg sg_sig(
      .out_valid(),
 //   .fsin_o(),
    .fcos_o(sg_cos),
//    .phi_inc_i(  20'd183501 ),  
    .phi_inc_i(  20'd218450 ),  
    .reset_n( !reset ),
    .clken( 1'b1 ),
    .clk( adc_clk )
  );


  
decimate d1(
    .reset( reset ),
    .adc_clk(adc_clk),
	 .fft_clk(fft_clk),
	 .adc_data( sg_cos[19:6] ),
    .sg_tune( 20'd174763),  // 20 => 2^20 * 20/120
	 .sin_data(sin_data),
	 .cos_data(cos_data)
);



window w_inst(

    .reset(reset),
	 .clk(fft_clk),
	 .sin_data( sin_data ),
    .cos_data( cos_data  ),
	 .source_ready(fft_sink_ready),
	 .source_sop(fft_sink_sop),
	 .source_eop(fft_sink_eop),
	 .source_valid(fft_sink_valid),
	 .sn(sn),
	 .cs(cs)
);
/*
   fft8k dut(
		      .clk(fft_clk),
		      .reset_n(!reset),
		      .inverse(1'b0),
		      .fftpts_in(14'b10000000000000),
		      .fftpts_out(fftpts_out),
		      .sink_real(sn),
		      .sink_imag(cs),
		      .sink_sop(fft_sink_sop),
		      .sink_eop(fft_sink_eop),
		      .sink_valid(fft_sink_valid),
                      .sink_error(2'b00),
                      .source_error(fft_source_error),
		      .source_ready(fft_source_ready),
		      .sink_ready(fft_sink_ready),
		      .source_real(fft_real),
		      .source_imag(fft_image),
		      .source_valid(fft_source_valid),
		      .source_sop(fft_source_sop),
		      .source_eop(fft_source_eop)
		      );

*/

sqrlog  sqr_inst(
		.data(nios_data), 
		.nios_ready(nios_ready),
		.nios_valid(nios_valid),
		.nios_sop(nios_sop),  
		.nios_empty(nios_empty), 
		.nios_eop(nios_eop),
		.nios_clk(nios_clk),   
		.fft_clk(fft_clk),    
		.reset(reset),  
//      .fft_re(32'h40000000),
//      .fft_im(32'h40000000),
//      .fft_re(fft_real),
//      .fft_im(fft_image),
      .fft_re(sn),
      .fft_im(cs),
		.fft_valid(fft_source_valid),
		.fft_sop(fft_source_sop),
		.fft_eop(fft_source_eop),
		.fft_ready(fft_source_ready )
	);




endmodule