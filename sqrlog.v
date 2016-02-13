// 
module sqrlog (
		output  [31:0] data,  
		input  wire       nios_ready, 
		output         nios_valid, 
		output         nios_sop,
		output         nios_eop, 
		output [1:0]  nios_empty, 
		input  wire        nios_clk,   
		input  wire        fft_clk,    
		input  wire        reset,  
        input wire [31:0] fft_re,
        input wire [31:0] fft_im,
		  input wire fft_valid,
		  input wire fft_sop,
		  input wire fft_eop,
		  output  wire fft_ready
	);

	parameter LEN = 8192; 
	
	 wire fifo_empty, fifo_full, delay_valid, delay_eop,delay_sop,wrreq, rdreq;
	 reg was_sop, was_eop ;
	 wire[31:0] log;
	 wire[31:0] fifo_q; 
	 reg[15:0] cnt;
	 reg[2:0] nios_st;
	 
	 assign nios_valid= ! fifo_empty;
	 assign fft_ready= ! fifo_full;
	 assign nios_empty[1:0] = 0; 
    assign rdreq = !fifo_empty & nios_ready;
    assign wrreq = was_sop & delay_valid & !was_eop;
	 assign nios_sop = (cnt == LEN-1);
	 assign nios_eop = (cnt == 0 );
    assign data = ( fifo_q[29:24] == 6'b111111 ) ? 32'h00000000 : fifo_q[31:0];
//    assign data =  fifo_q[31:0];

	
	// wrreq - запись в fifo --> был sop, есть valid после арифметики, не было eop, не заполнено?
	always @( posedge reset or posedge delay_sop or posedge delay_eop)
	begin
	    if(reset) begin
		     was_sop<=0; was_eop<=0;
		 end
		 else begin
		    if(delay_sop) begin was_sop<=1; was_eop<=0; end
		    if(delay_eop) begin was_eop<=1; was_sop<=0; end
		 end
	end
	

	// eop,sop для ниос просто по счетчику
	always @( posedge nios_clk )
	begin
	   if( reset ) begin
		   nios_st<=0;  cnt<=LEN-1;
		end
		else begin
		   case(nios_st)
			   0:begin
				     if( nios_valid) begin
					     cnt<=cnt-1;
						  nios_st<=1;
					  end
					  else nios_st<=0;
				  end
			   1:begin
				    if( nios_valid )
					 begin
					     cnt<=cnt-1;
				        if( cnt == 0 ) begin
						     nios_st<=0;
							  cnt<=LEN-1;
					     end
				    end
				  end
			endcase
		end
	end

	
	
	// 2 сигнала через линию задержки длиной в латнтность
	delay delay_valid_inst(   .clk(fft_clk), .reset(reset), .bit(fft_valid), .delay_bit( delay_valid ) );
	delay delay_sop_inst(   .clk(fft_clk), .reset(reset), .bit(fft_sop), .delay_bit( delay_sop ) );
		
//   calc calc_inst( .clk(fft_clk), .fft_re(32'h40000000), .fft_im(32'h40000000), .result(log), .clk_en(  1 )   	);
   calc calc_inst( .clk(fft_clk), .fft_re(fft_re), .fft_im(fft_im), .result(log), .clk_en(  1 )   	);
	
	fifo_res fifo_res_inst(	.aclr(reset),	.data( log ),
                           .rdclk(nios_clk),	.rdreq( rdreq  ),	.rdempty(fifo_empty),
                           .wrclk(fft_clk),	.wrreq( wrreq),	.q( fifo_q [31:0]),	.wrfull( fifo_full) 
								 );
endmodule

module delay
#( parameter LEN=42 )
(
    input clk,reset,
	 input bit,
	 output delay_bit
	 );
	 
	 reg[LEN-1:0] d;
	 always @( posedge clk)
	 begin
	    if(reset) 
		 begin
		    d<=0;
		 end
		 else begin
		    d[LEN-2:0]<=d[LEN-1:1];
			 d[LEN-1]<=bit;
		 end
	 end
	 assign delay_bit=d[0];
endmodule	 

// на входе комплексный поток с выхода FFT
// на выходе логарифм от модуля
module calc( 
   input clk,
	input[31:0] fft_re,
	input[31:0] fft_im,
	output reg[31:0] result,
	input clk_en
	);
	
	    wire[31:0] fft_re2,fft_im2,fft_abs, log;	
	 // латентность = 11 + 14 + 21 +1

	 always @(posedge clk)
	 begin
	    if(clk_en)
	        result<=log;
	 end
	 
		// натуральный логарифм от суммы квадратов
	fmult fmult_re_inst(	 .clock ( clk ), .dataa ( fft_re ),.datab ( fft_re ),.result ( fft_re2 )	    );  //5
	fmult fmult_im_inst(	 .clock ( clk ), .dataa ( fft_im ),.datab ( fft_im ),.result ( fft_im2 )	    ); //5
	fadd  fadd2_inst   (	 .clock ( clk ),.clk_en ( clk_en ), .dataa ( fft_im2 ),.datab ( fft_re2 ),.result ( fft_abs )	    );  //14
	flog  flog_inst    (	 .clock ( clk ),.clk_en ( clk_en ), .data ( fft_abs ),.result ( log )	    );  //21

endmodule
