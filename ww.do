onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /window_tb/fft_clk
add wave -noupdate -format Logic /window_tb/reset
add wave -noupdate -format Literal -radix decimal /window_tb/sn
add wave -noupdate -format Literal -radix decimal /window_tb/cs
add wave -noupdate -format Logic /window_tb/sop
add wave -noupdate -format Logic /window_tb/eop
add wave -noupdate -format Logic /window_tb/valid
add wave -noupdate -format Logic /window_tb/sink_ready
add wave -noupdate -format Literal -radix hexadecimal /window_tb/sqr_inst/data
add wave -noupdate -format Logic /window_tb/sqr_inst/nios_ready
add wave -noupdate -format Literal /window_tb/sqr_inst/nios_empty
add wave -noupdate -format Logic /window_tb/sqr_inst/reset
add wave -noupdate -format Literal -radix hexadecimal /window_tb/sqr_inst/fft_re
add wave -noupdate -format Literal -radix hexadecimal /window_tb/sqr_inst/fft_im
add wave -noupdate -format Logic /window_tb/sqr_inst/fft_valid
add wave -noupdate -format Logic /window_tb/sqr_inst/fft_sop
add wave -noupdate -format Logic /window_tb/sqr_inst/fft_eop
add wave -noupdate -format Logic /window_tb/sqr_inst/fft_ready
add wave -noupdate -format Logic /window_tb/sqr_inst/nios_valid
add wave -noupdate -format Logic /window_tb/sqr_inst/nios_sop
add wave -noupdate -format Logic /window_tb/sqr_inst/nios_eop
add wave -noupdate -format Literal -radix hexadecimal /window_tb/sqr_inst/data
add wave -noupdate -format Logic /window_tb/sqr_inst/fifo_full
add wave -noupdate -format Logic /window_tb/sqr_inst/wrreq
add wave -noupdate -format Logic /window_tb/sqr_inst/rdreq
add wave -noupdate -format Logic /window_tb/nios_clk
add wave -noupdate -format Literal -radix hexadecimal /window_tb/sqr_inst/log
add wave -noupdate -format Literal -radix hexadecimal /window_tb/sqr_inst/fifo_q
add wave -noupdate -format Literal -radix decimal /window_tb/sqr_inst/cnt
add wave -noupdate -format Literal -radix hexadecimal /window_tb/sqr_inst/nios_st
add wave -noupdate -format Logic /window_tb/sop
add wave -noupdate -format Logic /window_tb/source_eop
add wave -noupdate -format Logic /window_tb/source_sop
add wave -noupdate -format Logic /window_tb/source_valid
add wave -noupdate -format Literal -radix decimal /window_tb/st_fft
add wave -noupdate -format Literal /window_tb/st
add wave -noupdate -format Logic /window_tb/nios_sop
add wave -noupdate -format Logic /window_tb/nios_valid
add wave -noupdate -format Logic /window_tb/nios_eop
add wave -noupdate -format Logic /window_tb/d1/reset
add wave -noupdate -format Logic /window_tb/d1/adc_clk
add wave -noupdate -format Logic /window_tb/d1/fft_clk
add wave -noupdate -format Literal /window_tb/d1/adc_data
add wave -noupdate -format Literal /window_tb/d1/sg_tune
add wave -noupdate -format Literal /window_tb/d1/sin_data
add wave -noupdate -format Literal /window_tb/d1/cos_data
add wave -noupdate -format Literal /window_tb/d1/sin_x_adc
add wave -noupdate -format Literal /window_tb/d1/cos_x_adc
add wave -noupdate -format Literal /window_tb/d1/sg_sin
add wave -noupdate -format Literal /window_tb/d1/sg_cos
add wave -noupdate -format Literal /window_tb/d1/fir_sin
add wave -noupdate -format Literal /window_tb/d1/fir_cos
add wave -noupdate -format Literal /window_tb/d1/rsin_x_adc
add wave -noupdate -format Literal /window_tb/d1/rcos_x_adc
add wave -noupdate -format Literal /window_tb/d1/rsg_sin
add wave -noupdate -format Literal /window_tb/d1/rsg_cos
add wave -noupdate -format Literal /window_tb/d1/rfir_sin
add wave -noupdate -format Literal /window_tb/d1/rfir_cos
add wave -noupdate -format Literal /window_tb/d1/cnt
add wave -noupdate -format Logic /window_tb/d1/sg_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8209763 ps} 0}
configure wave -namecolwidth 211
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {9541150 ps} {10024150 ps}
