// Generated by FIR Compiler
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
// ************************************************************
// Copyright (C) 1991-2005 Altera Corporation
// Any megafunction design, and related net list (encrypted or decrypted),
// support information, device programming or simulation file, and any other
// associated documentation or information provided by Altera or a partner
// under Altera's Megafunction Partnership Program may be used only to
// program PLD devices (but not masked PLD devices) from Altera.  Any other
// use of such megafunction design, net list, support information, device
// programming or simulation file, or any other related documentation or
// information is prohibited for any other purpose, including, but not
// limited to modification, reverse engineering, de-compiling, or use with
// any other silicon devices, unless such use is explicitly licensed under
// a separate agreement with Altera or a megafunction partner.  Title to
// the intellectual property, including patents, copyrights, trademarks,
// trade secrets, or maskworks, embodied in any such megafunction design,
// net list, support information, device programming or simulation file, or
// any other related documentation or information provided by Altera or a
// megafunction partner, remains with Altera, the megafunction partner, or
// their respective licensors.  No other licenses, including any licenses
// needed under any third party's intellectual property, are provided herein.
  
  
module fir32tap_old_st_wr(clk, rst, clk_en, rdy_to_ld, done, data_in, fir_result);
parameter OUT_WIDTH = 40;
parameter IN_WIDTH = 24;
parameter FACTOR = 3;
parameter ACCUM_WIDTH = 40;
parameter MSB_RM = 0;
parameter LSB_RM = 16;
parameter WIDTH_SAT = ACCUM_WIDTH-LSB_RM;
parameter COEF_SET_WIDTH = 2;
                                                                     
input  clk, rst;                                                     
input  clk_en;                                                     
input  [IN_WIDTH - 1:0] data_in;                                     
output rdy_to_ld, done;                                           
output [OUT_WIDTH-MSB_RM-LSB_RM- 1:0] fir_result;                               
                                                                     
wire rdy_to_ld;                                                      
wire done;                                                           
wire done_int;                                                           
wire out_samp;                                                       
wire accum_load;                                                     
                                                                     
wire [OUT_WIDTH -1 :0] accum_out;									
wire [OUT_WIDTH -1 :0] accum_in;										
wire [OUT_WIDTH -1 :0] fir_result_poly;										
wire [OUT_WIDTH -1 :0] fir_int_res;										
wire [OUT_WIDTH-MSB_RM-LSB_RM- 1:0] fir_result;                               
wire [COEF_SET_WIDTH -1 :0] coef_set_cnt;                            
                                                                     
                                                                     
fir32tap_old_st u0(.clk(clk),                                        
	    .rst(rst),                                                      
	    .clk_en(clk_en),                                                      
	    .data_in(data_in),                                              
	    .coef_set(coef_set_cnt),                                        
	    .done(done_int),                                                    
	    .rdy_to_ld(rdy_to_ld),                                          
	    .fir_result(fir_result_poly)                                         
	    );                                                              
                                                                     
mr_dnc_wr u1(.clk(clk),             
		.rst(rst),                           
		.cen(rdy_to_ld & clk_en),                     
		.cnt_out(coef_set_cnt)               
		);                                   
defparam u1.SIZE = FACTOR;        
defparam u1.OUT_WIDTH = COEF_SET_WIDTH;
											
mr_acc_ctrl_cen_wr	u2(.clk(clk),          
   	     .rst(rst),							
   	     .clk_en(clk_en),							
   	     .done(done_int),						
   	     .out_samp(out_samp),				
   	     .accum_load(accum_load),			
   	     .rdy_out(done)					
   	     );									
defparam u2.CNT_SIZE = FACTOR;				
defparam u2.CNT_WIDTH = 2;
defparam u2.STRUCT = 3;
												
assign accum_in = fir_result_poly;   	   			
												
mr_accum_wr u3(.clk(clk),                    
               .rst(rst),				
               .clk_en(clk_en),				
               .accum_load(accum_load),  
               .cen(done_int),           
               .ain(accum_in),       
               .accum_out(accum_out) 
                       );                    
defparam u3.WIDTH_A = OUT_WIDTH;          
defparam u3.STRUCT = 3;
                                             
mr_lcstore_wr u4(.clk(clk),                 
                 .rst(rst),                 
                 .ce(out_samp & clk_en),             
                 .data_in(accum_out),       
                 .q(fir_int_res));             
                                             
defparam u4.WIDTH = OUT_WIDTH;				
                                              
wire [39:0]fir_int_res_fill;
assign fir_int_res_fill =  fir_int_res[39 :0];
parameter TOT_WIDTH = ACCUM_WIDTH;
wire [TOT_WIDTH-LSB_RM-1:0] fir_res_rnd;
rnd_dat Urnd(.data_in(fir_int_res_fill), .data_out(fir_res_rnd));
defparam Urnd.IN_WIDTH = TOT_WIDTH;
defparam Urnd.LOSE_BITS = LSB_RM;
assign fir_result = fir_res_rnd;
                                              
endmodule	                                 
////////////////////////////////////////////////////////////////////////////////////////
