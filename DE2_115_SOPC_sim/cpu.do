add wave -noupdate -divider {cpu: top-level ports}
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/i_readdata
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/i_readdatavalid
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/i_waitrequest
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/i_address
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/i_read
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/clk
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/reset_n
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/d_readdata
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/d_waitrequest
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/d_address
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/d_byteenable
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/d_read
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/d_write
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/d_writedata
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/d_irq
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/d_readdatavalid
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/the_cpu_test_bench/W_pcb
add wave -noupdate -format Logic -radix ascii /test_bench/DUT/the_cpu/the_cpu_test_bench/W_vinst
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/the_cpu_test_bench/W_valid
add wave -noupdate -format Logic -radix hexadecimal /test_bench/DUT/the_cpu/the_cpu_test_bench/W_iw

configure wave -justifyvalue right
configure wave -signalnamewidth 1
TreeUpdate [SetDefaultTree]
