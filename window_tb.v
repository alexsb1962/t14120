`timescale 1ns / 1ps
module window_tb;

parameter HALF_ADC = 1000.0/120 /2;
parameter HALF_FFT  = 1000.0/40  /2;
parameter HALF_NIOS  = 1000.0/100  /2;

reg adc_clk,fft_clk,nios_clk,reset;

wire[31:0] sn;
wire[31:0] cs;
wire sop,eop,valid;

wire[15:0] fftpts_out;
wire[1:0] source_error;
wire source_ready,source_sop,source_eop,source_valid,sink_ready;
wire[31:0] fft_real,fft_image;
wire[23:0] sin_data,cos_data;

integer Fre,Flog,Fsncs,Fsin;

reg was_sop,was_source_sop;
wire[23:0] signal_re;
wire[19:0] sg_cos;

wire[31:0] data;
reg nios_ready,was_nios_sop;
wire nios_valid,nios_sop,nios_eop;
wire[1:0] nios_empty; 

reg[2:0] st, st_fft, st_win;

initial
begin
  #0 reset=1;
  #0 adc_clk=1;
  #0 fft_clk=1;
  #0 nios_clk=1;
  #163 reset=0;
//  fres=$fopen("win_res.txt","w");
  Fre=$fopen("win_re.hex","w");
  Flog=$fopen("win_log.hex","w");
  Fsncs=$fopen("win_sncs.hex","w");
  Fsin=$fopen("win_sin.hex","w");
end


always begin   #HALF_ADC  adc_clk=1;   #HALF_ADC  adc_clk=0;end
always begin   #HALF_FFT  fft_clk=1;   #HALF_FFT  fft_clk=0;end
always begin   #HALF_NIOS  nios_clk=1;   #HALF_NIOS  nios_clk=0;end

assign source_ready = 1'b1;


always @(posedge nios_clk)
begin
   if( reset ) begin
	   nios_ready<=1;  st<=0;
	end
	else begin
	   case (st)
		   0: begin
			      if(nios_valid)
					begin
					   if(nios_sop) begin
					      st<=1;
                     $fwrite(Flog,"%x  \n",data);
						end
					end
			   end
		   1: begin
			      if(nios_valid) begin
                   $fwrite(Flog,"%x  \n",data);
						 if(nios_eop) begin
						    $fclose(Flog);
							 st<=2;
						 end 
					end
			   end
		   2: begin
			      st<=2;
			   end
		endcase
	end
end


always @(posedge fft_clk)
begin
   if( reset ) begin
	   st_fft<=0;
	end
	else begin
	   case (st_fft)
		   0: begin
			      if(source_valid)
					begin
					   if(source_sop) begin
					      st_fft<=1;
                     $fwrite(Fre,"%x  %x\n",fft_real,fft_image);
                     $fwrite(Fsin,"%d\n",cos_data);
						end
					end
			   end
		   1: begin
			      if(source_valid) begin
                   $fwrite(Fre,"%x  %x\n",fft_real,fft_image);
                   $fwrite(Fsin,"%d\n",cos_data);
						 if(source_eop) begin
						    $fclose(Fre);
						    $fclose(Fsin);
							 st_fft<=2;
						 end 
					end
			   end
		   2: begin
			      st_fft<=2;
			   end
		endcase
	end
end

always @(posedge fft_clk)
begin
   if( reset ) begin
	   st_win<=0;
	end
	else begin
	   case (st_win)
		   0: begin
			      if(valid)
					begin
					   if(sop) begin
					      st_win<=1;
                     $fwrite(Fsncs,"%x  %x\n",sn,cs);
						end
					end
			   end
		   1: begin
			      if(valid) begin
                   $fwrite(Fsncs,"%x  %x\n",sn,cs);
						 if(eop) begin
						    $fclose(Fsncs);
							 st_win<=2;
						 end 
					end
			   end
		   2: begin
			      st_win<=2;
			   end
		endcase
	end
end

  sg sg_sig(
      .out_valid(sg_valid),
 //   .fsin_o(),
    .fcos_o(sg_cos),
//    .phi_inc_i(  20'd183501 ),  
    .phi_inc_i(  20'd218450 ),  
    .reset_n( !reset ),
    .clken( 1'b1 ),
    .clk( adc_clk )
  );
  
  assign signal_re= (sg_cos[19]) ?  {4'b1111,sg_cos[19:0]} :  {4'b0000,sg_cos[19:0]};
  
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
//	 .cos_data(  24'h7fffff  ),
    .cos_data(  cos_data  ),
	 .source_ready(sink_ready),
	 .source_sop(sop),
	 .source_eop(eop),
	 .source_valid(valid),
	 .sn(sn),
	 .cs(cs)

);

   fft8k dut(
		      .clk(fft_clk),
		      .reset_n(!reset),
		      .inverse(1'b0),
		      .fftpts_in(14'b10000000000000),
		      .fftpts_out(fftpts_out),
		      .sink_real(sn),
		      .sink_imag(cs),
		      .sink_sop(sop),
		      .sink_eop(eop),
		      .sink_valid(valid),
                      .sink_error(2'b00),
                      .source_error(source_error),
		      .source_ready(source_ready),
		      .sink_ready(sink_ready),
		      .source_real(fft_real),
		      .source_imag(fft_image),
		      .source_valid(source_valid),
		      .source_sop(source_sop),
		      .source_eop(source_eop)
		      );

sqrlog  sqr_inst(
		.data(data), 
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
      .fft_re(fft_real),
      .fft_im(fft_image),
		.fft_valid(source_valid),
		.fft_sop(source_sop),
		.fft_eop(source_eop),
		.fft_ready(source_ready )
	);



endmodule
