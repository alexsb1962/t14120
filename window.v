
//  умножение на окно, преобразование float, нормировка к 1,формирование пакета
module window(
   input reset,
   input clk,
   input [23:0] sin_data,
   input [23:0] cos_data,
   input   source_ready,  // от БПФ
   output reg source_sop,
   output reg source_eop,
   output reg source_valid,
   output reg [31:0] sn,cs
  );
  
parameter LEN=8192;   // длина БПФ
parameter DFI=20'd128; //20'hfffff / (LEN-1);
parameter LATENCY=11+5;

  
  reg[19:0] rwin;
  wire[19:0] cos;
  wire[19:0] sub_cos;
  reg[14:0] cnt;
  reg[2:0] st;
  
  reg resetn_sg;
  wire sg_valid;
  
  wire[31:0] fwin,fsin,fcos,fsn,fcs,fwin_l,fsin_l,fcos_l;
    
  always @( posedge clk)
  begin
     rwin<=sub_cos;
	  sn<=fsn;
	  cs<=fcs;
  end
  
  always @(posedge clk)
  begin
     if(reset)
     begin
        st<=0; source_sop<=0;source_eop<=0;source_valid<=0;cnt<=0;
		  resetn_sg<=0;
     end
     else begin
	     case (st)
		    0:begin
			     resetn_sg<=1;  // инверсный вход
		        if(sg_valid)
			     begin
			 	     st<=1;
					  cnt<=LATENCY;
				  end
			   end
		  1:begin
		       if(cnt==0)
				 begin
				    source_sop<=1;
					 source_valid<=1;
				    st<=2;
				 end
				 else cnt<=cnt-1;
		    end    
		  2:begin
		       source_sop<=0;
				 cnt<=LEN-3;  //  ???
             st=3;				 
		    end    
		  3:begin
		       source_sop<=0;
		       if(cnt==0)
				 begin
				    source_eop<=1;
				    st<=4;
				 end
				 else cnt<=cnt-1;
		    end    
		  4:begin
		       source_eop<=0;
				 source_valid<=0;
				 resetn_sg<=0;
				 st<=5;
	       end
		  5:begin
				 st<=0;
	       end
		  endcase
	  end 

  end // always

  
sub	sub_inst (	.dataa ( 20'h7ffff ),	.datab ( cos ),	.result ( sub_cos )	);
	
int2float	i2f1 (	.clock ( clk ),	.dataa ( {12'h000,rwin[19:0]} ),	.result ( fwin_l )	);

int2float	i2f2 (	.clock ( clk ),
	.dataa ( (sin_data[23]) ? {8'hff,sin_data[23:0]} : {8'h00,sin_data[23:0]} ),
	.result ( fsin_l )
	);
int2float	i2f3 (
	.clock ( clk ),
	.dataa ( (cos_data[23]) ? {8'hff,cos_data[23:0] } : {8'h00,cos_data[23:0] }  ),
	.result ( fcos_l )
	);

fmult	fm_c1 (	.clock ( clk ),	.dataa ( fwin_l ),	.datab ( 32'h35800008 ),	.result( fwin )	);
//fmult	fm_c1 (	.clock ( clk ),	.dataa ( fwin_l ),	.datab ( 32'h3F800000 ),	.result( fwin )	);     // 1
fmult	fm_c2 (	.clock ( clk ),	.dataa ( fsin_l ),	.datab ( 32'h33FFFFD7 ),	.result( fsin )	);
fmult	fm_c3 (	.clock ( clk ),	.dataa ( fcos_l ),	.datab ( 32'h33FFFFD7 ),	.result( fcos )	);
fmult	fm1   (	.clock ( clk ),	.dataa ( fsin ),	.datab ( fwin ),	.result ( fsn )	);
//fmult	fm2   (	.clock ( clk ),	.dataa ( 32'h3F800000 ),	.datab ( fwin ),	.result ( fcs )	);
fmult	fm2   (	.clock ( clk ),	.dataa ( fcos ),	.datab ( fwin ),	.result ( fcs )	);
  
  
  sg sg_win(
      .out_valid(sg_valid),
 //   .fsin_o(),
    .fcos_o(cos),
    .phi_inc_i(  DFI ),  //21
    .reset_n( resetn_sg ),
    .clken( 1'b1 ),
    .clk( clk )
  );
  
  endmodule