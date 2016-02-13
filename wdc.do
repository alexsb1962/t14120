onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /decimate_tb/adc_clk
add wave -noupdate -format Logic /decimate_tb/fft_clk
add wave -noupdate -format Logic /decimate_tb/reset
add wave -noupdate -format Analog-Step -height 74 -max 524287.0 -min -524286.0 -radix decimal /decimate_tb/adc_data
add wave -noupdate -format Literal -radix decimal /decimate_tb/sin_data
add wave -noupdate -format Literal -radix decimal /decimate_tb/cos_data
add wave -noupdate -format Logic /decimate_tb/sg_valid
add wave -noupdate -format Logic /decimate_tb/d1/reset
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/adc_data
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/sg_tune
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/sin_data
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/cos_data
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/sg_sin
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/sg_cos
add wave -noupdate -format Analog-Step -height 74 -max 882653.00000000012 -min -892781.0 -radix decimal /decimate_tb/d1/fir_sin
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/fir_cos
add wave -noupdate -format Analog-Step -height 74 -max 3624375.0 -min -3594291.0 -radix decimal /decimate_tb/d1/rsin_x_adc
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/rcos_x_adc
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/rsg_sin
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/rsg_cos
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/rfir_sin
add wave -noupdate -format Literal -radix decimal /decimate_tb/d1/rfir_cos
add wave -noupdate -format Literal /decimate_tb/d1/cnt
add wave -noupdate -format Logic /decimate_tb/d1/sg_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {203573 ps} 0}
configure wave -namecolwidth 188
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
WaveRestoreZoom {78227 ps} {1884819 ps}
