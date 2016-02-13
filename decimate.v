// на входе сигнал ацп, на выходе два квадратурных сигнала
module decimate(
   input reset,
   input adc_clk,
	input fft_clk,
	input [13:0] adc_data,
	input[19:0] sg_tune,
	output reg [23:0] sin_data,
	output reg [23:0] cos_data
);

wire[23:0]  sin_x_adc;
wire[23:0]  cos_x_adc;
wire[19:0]  sg_sin;
wire[19:0]  sg_cos;
wire[23:0] fir_sin;
wire[23:0] fir_cos;

   reg[23:0]  rsin_x_adc;
   reg[23:0]  rcos_x_adc;
	reg[19:0] rsg_sin;
	reg[19:0] rsg_cos;
   reg[23:0]  rfir_sin;
   reg[23:0]  rfir_cos;
	
	
	reg[1:0] cnt;

always @( posedge adc_clk)  rsin_x_adc<=sin_x_adc;
always @( posedge adc_clk)  rcos_x_adc<=cos_x_adc;
always @( posedge adc_clk)  rsg_sin<=sg_sin;
always @( posedge adc_clk)  rsg_cos<=sg_cos;

always @(posedge adc_clk)
begin
  if(reset) begin
     cnt<=2;
  end
  else begin
     if(cnt==0) begin
        rfir_sin<=fir_sin;
        rfir_cos<=fir_cos;
	     cnt<=2;
     end
     else begin
        cnt<=cnt-1;
     end
  end
end
always @( posedge fft_clk)
begin
    sin_data<=rfir_sin;
	 cos_data<=rfir_cos;
end

mult14x20r24	mult14x20r24_sin (	.dataa ( adc_data ),	.datab ( rsg_sin ),	.result (sin_x_adc )	);
mult14x20r24	mult14x20r24_cos (	.dataa ( adc_data ),	.datab ( rsg_cos ),	.result ( cos_x_adc )	);


sg sg_inst (
    .out_valid( ),
    .fsin_o(sg_sin[19:0]),
    .fcos_o(sg_cos[19:0]),
    .phi_inc_i(sg_tune[19:0]),
    .reset_n(!reset),
    .clken( 1 ),
    .clk(adc_clk)
    );

fir32tap_old fir_sin_inst(
   .clk(adc_clk),
	.reset_n(!reset),
	.ast_sink_data(rsin_x_adc[23:0]),
	.ast_source_data(fir_sin),
	.ast_sink_valid(1),
//	.ast_sink_ready(),
//	.ast_source_valid(),
	.ast_source_ready(1),
	.ast_sink_error(0)
//	.ast_source_error()
);	 
fir32tap_old fir_cos_inst(
   .clk(adc_clk),
	.reset_n(!reset),
	.ast_sink_data(rcos_x_adc[23:0]),
	.ast_source_data(fir_cos),
	.ast_sink_valid(1),
//	.ast_sink_ready(),
//	.ast_source_valid(),
	.ast_source_ready(1),
	.ast_sink_error(0)
//	.ast_source_error()
);	 
	 
	 
endmodule

