onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /window_tb/fft_clk
add wave -noupdate -format Logic /window_tb/reset
add wave -noupdate -format Literal -radix decimal /window_tb/sn
add wave -noupdate -format Literal -radix decimal /window_tb/cs
add wave -noupdate -format Logic /window_tb/sop
add wave -noupdate -format Logic /window_tb/eop
add wave -noupdate -format Logic /window_tb/valid
add wave -noupdate -format Logic /window_tb/w_inst/reset
add wave -noupdate -format Literal -radix decimal /window_tb/w_inst/sin_data
add wave -noupdate -format Literal -radix decimal /window_tb/w_inst/cos_data
add wave -noupdate -format Logic /window_tb/w_inst/source_ready
add wave -noupdate -format Logic /window_tb/w_inst/source_sop
add wave -noupdate -format Logic /window_tb/w_inst/source_eop
add wave -noupdate -format Logic /window_tb/w_inst/source_valid
add wave -noupdate -format Literal -radix hexadecimal /window_tb/w_inst/sn
add wave -noupdate -format Literal -radix hexadecimal /window_tb/w_inst/cs
add wave -noupdate -format Literal -radix decimal /window_tb/w_inst/rwin
add wave -noupdate -format Literal -radix decimal /window_tb/w_inst/cos
add wave -noupdate -format Literal -radix unsigned /window_tb/w_inst/st
add wave -noupdate -format Logic /window_tb/w_inst/sg_valid
add wave -noupdate -format Literal -radix hexadecimal /window_tb/w_inst/fwin
add wave -noupdate -format Literal -radix hexadecimal /window_tb/w_inst/fsin
add wave -noupdate -format Literal -radix hexadecimal /window_tb/fft_image
add wave -noupdate -format Literal -radix hexadecimal /window_tb/fft_real
add wave -noupdate -format Logic /window_tb/sink_ready
add wave -noupdate -format Logic /window_tb/source_eop
add wave -noupdate -format Literal /window_tb/source_error
add wave -noupdate -format Logic /window_tb/source_ready
add wave -noupdate -format Logic /window_tb/source_sop
add wave -noupdate -format Logic /window_tb/source_valid
add wave -noupdate -format Literal /window_tb/fftpts_out
add wave -noupdate -format Literal /window_tb/signal_re
add wave -noupdate -format Literal /window_tb/sg_cos
add wave -noupdate -format Literal -radix hexadecimal /window_tb/data
add wave -noupdate -format Logic /window_tb/nios_clk
add wave -noupdate -format Logic /window_tb/nios_eop
add wave -noupdate -format Logic /window_tb/nios_sop
add wave -noupdate -format Logic /window_tb/nios_valid
add wave -noupdate -format Literal -radix hexadecimal /window_tb/sqr_inst/fifo_q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7019679 ps} 0}
configure wave -namecolwidth 197
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
WaveRestoreZoom {489671 ps} {14847111 ps}
