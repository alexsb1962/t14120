// �� ����� ����������� ����� � ������ FFT
// �� ������ �������� �� ������
// 
`timescale 1ns / 1ps

module sqrlog_tb (	);

	parameter HALF_NIOS_CYCLE = 5;
	parameter HALF_FFT_CYCLE  = 12.500;
	parameter LEN  = 64;

		wire  [31:0] data;
		reg       nios_ready;
		wire     nios_valid, nios_sop, nios_eop;
		wire   [1:0]  nios_empty;
		reg         nios_clk, fft_clk;   
		reg         reset,reset_all;
		  reg  fft_go;
		  
		  reg[2:0] nios_stage;
		  reg[15:0] count1;
		  reg[2:0] fft_stage;
		  reg[15:0] count2;
		  
		  // ������� �� fft � sqrlog
		  wire fft_source_sop,fft_source_eop,fft_source_valid,fft_source_ready;
        wire   [31:0] fft_re;
		  wire   [31:0] fft_im;
		  
		  wire [5:0] fftpts_in;  //����� fft ����������
		  wire [5:0] fftpts_out;  //����� fft ����������
		  wire [1:0] fft_source_error;
		  
		  // ������� �� ���� fft
		  reg fft_sink_valid;
		  wire fft_sink_ready,fft_sink_sop,fft_sink_eop;
		  reg[31:0] fft_sink_real;
		  reg[31:0] fft_sink_image;
		  reg fft_reset_n;
		  
       integer data_re,data_im;           
       integer rc_x;
initial
  begin
    
//    $dumpvars;
    #0 nios_clk = 1'b0;
    #0 fft_clk = 1'b0;
    #0 reset_all = 1'b1;
    #(7*HALF_FFT_CYCLE) reset_all = 1'b0;
	 
	  data_re = $fopen("fft_re.txt","r");
     data_im = $fopen("fft_im.txt","r");

    
  end

	// ��������
always  begin
    #HALF_NIOS_CYCLE    nios_clk = 1;
    #HALF_NIOS_CYCLE    nios_clk = 0;
end
always  begin
    #HALF_FFT_CYCLE fft_clk = 1;
    #HALF_FFT_CYCLE fft_clk = 0;
end

assign fftpts_in =6'b100000;  // ���������� ������ ������������ �����

// ���������� �����
   always @(posedge fft_clk)
	begin
	   reset<=reset_all;
		fft_reset_n<=!reset_all;
	end
	
	// fft
	always @(posedge fft_clk)
	begin
	   if( reset ) begin
		    fft_sink_valid<=0; fft_sink_real<=0; fft_sink_image<=0;
			 fft_go<=0; fft_stage<=0;
			 count2<=7;
		end else begin
			 case (fft_stage)
			    0: begin     // ���� ���������� fft
					    fft_sink_valid<=1;
				       if(fft_sink_ready) 
                        fft_stage<=1;
						 else fft_stage<=0;
				    end
			    1: begin
				       // ���� ���������� ������ ��� fft
						 if( 1 )
						 begin
						     fft_stage<=2;
       				       // ������ ���� - ����� � ������ ������
						      fft_sink_valid<=1;
						      count2<=LEN-1;  // ����� �������
								$fread(fft_sink_real,data_re);
								$fread(fft_sink_image,data_im);
								fft_stage<=2;
						 end else begin
						     fft_stage<=1;
						 end
				    end
				 2: begin
								$fread(fft_sink_real,data_re);
								$fread(fft_sink_image,data_im);
						 count2<=count2-1;
						 if(count2 > 0) begin
						    fft_stage<=2;
						 end
						 else begin
						    fft_stage<=0;
						 end
						 
				    end
			 endcase
		end //if
	end // always
	
	assign fft_sink_eop= ( count2 == 0) ? 1:0;
	assign fft_sink_sop= ( count2 == (LEN-1)) ? 1:0;
	
	// nios   ---------------------------------------------------------------------------
	always @(posedge nios_clk )
	begin
	end
	
	
	always @(posedge nios_clk)
	begin
	   if( reset ) begin
		   nios_ready<=0; // nios_sop<=0; nios_eop<=0;
			nios_stage=0;
		end else begin
		   case (nios_stage) 
			   0:  begin
							 nios_stage<=1;
				    end
				 1: begin
                      nios_ready<=1;
						    nios_stage<=1;
						end
			endcase
		end
	end
	
	
 sqrlog sqrlog_inst (
		.data(data),  //  out0.data
		.nios_ready(nios_ready), 
		.nios_valid(nios_valid), 
	    .nios_sop(nios_sop),
		.nios_empty(nios_empty),
		.nios_eop(nios_eop),
		.nios_clk(nios_clk),   
		.fft_clk(fft_clk),    
		.reset(reset),  
        .fft_re(fft_re),
        .fft_im(fft_im),
		 .fft_valid(fft_source_valid),
		 .fft_sop(fft_source_sop),
		 .fft_eop(fft_source_eop),
		 .fft_ready(fft_source_ready)
	);

	
 fft64 fft64_inst(
	.clk(fft_clk),
	.reset_n(!fft_reset_n),
	.fftpts_in(fftpts_in),
	.inverse(0),
	.sink_valid(fft_sink_valid),
	.sink_sop(fft_sink_sop),
	.sink_eop(fft_sink_eop),
	.sink_real(fft_sink_real),
	.sink_imag(fft_sink_image),
	.sink_error(0),
	.source_ready(fft_source_ready),
	.fftpts_out(fftpts_out),
	.sink_ready(fft_sink_ready),
	.source_error(fft_source_error),
	.source_sop(fft_source_sop),
	.source_eop(fft_source_eop),
	.source_valid(fft_source_valid),
	.source_real(fft_re),
	.source_imag(fft_im)
	);



	
endmodule
