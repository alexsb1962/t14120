# Display signals from module descf
add wave -noupdate -divider {descf}
add wave -noupdate -format Logic /test_bench/DUT/the_descf/chipselect
add wave -noupdate -format Logic /test_bench/DUT/the_descf/write
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_descf/address
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_descf/byteenable
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_descf/readdata
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_descf/writedata


# Display signals from module sgdma_rx
add wave -noupdate -divider {sgdma_rx}
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_rx/csr_read
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_rx/csr_write
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_rx/csr_address
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_rx/csr_chipselect
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_rx/csr_writedata
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_rx/csr_readdata


# Display signals from module onchip_memory2
add wave -noupdate -divider {onchip_memory2}
add wave -noupdate -format Logic /test_bench/DUT/the_onchip_memory2/chipselect
add wave -noupdate -format Logic /test_bench/DUT/the_onchip_memory2/write
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_onchip_memory2/address
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_onchip_memory2/byteenable
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_onchip_memory2/readdata
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_onchip_memory2/writedata


# Display signals from module descriptor_memory
add wave -noupdate -divider {descriptor_memory}
add wave -noupdate -format Logic /test_bench/DUT/the_descriptor_memory/chipselect
add wave -noupdate -format Logic /test_bench/DUT/the_descriptor_memory/write
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_descriptor_memory/address
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_descriptor_memory/byteenable
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_descriptor_memory/readdata
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_descriptor_memory/writedata


# Display signals from module sdram
add wave -noupdate -divider {sdram}
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_sdram/az_addr
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_sdram/az_be_n
add wave -noupdate -format Logic /test_bench/DUT/the_sdram/az_cs
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_sdram/az_data
add wave -noupdate -format Logic /test_bench/DUT/the_sdram/az_rd_n
add wave -noupdate -format Logic /test_bench/DUT/the_sdram/az_wr_n
add wave -noupdate -format Logic /test_bench/DUT/the_sdram/clk
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_sdram/za_data
add wave -noupdate -format Logic /test_bench/DUT/the_sdram/za_valid
add wave -noupdate -format Logic /test_bench/DUT/the_sdram/za_waitrequest
add wave -noupdate -format Literal -radix ascii /test_bench/DUT/the_sdram/CODE
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_sdram/zs_addr
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_sdram/zs_ba
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_sdram/zs_cs_n
add wave -noupdate -format Logic /test_bench/DUT/the_sdram/zs_ras_n
add wave -noupdate -format Logic /test_bench/DUT/the_sdram/zs_cas_n
add wave -noupdate -format Logic /test_bench/DUT/the_sdram/zs_we_n
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_sdram/zs_dq
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_sdram/zs_dqm


# Display signals from module jtag_uart
add wave -noupdate -divider {jtag_uart}
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_jtag_uart/av_address
add wave -noupdate -format Logic /test_bench/DUT/the_jtag_uart/av_chipselect
add wave -noupdate -format Logic /test_bench/DUT/the_jtag_uart/av_irq
add wave -noupdate -format Logic /test_bench/DUT/the_jtag_uart/av_read_n
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_jtag_uart/av_readdata
add wave -noupdate -format Logic /test_bench/DUT/the_jtag_uart/av_waitrequest
add wave -noupdate -format Logic /test_bench/DUT/the_jtag_uart/av_write_n
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_jtag_uart/av_writedata
add wave -noupdate -format Logic /test_bench/DUT/the_jtag_uart/dataavailable
add wave -noupdate -format Logic /test_bench/DUT/the_jtag_uart/readyfordata


# Display signals from module sgdma_f
add wave -noupdate -divider {sgdma_f}
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_f/csr_read
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_f/csr_write
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_f/csr_address
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_f/csr_chipselect
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_f/csr_writedata
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_f/csr_readdata


# Display signals from module cpu
add wave -noupdate -divider {cpu}
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


# Display signals from module sgdma_tx
add wave -noupdate -divider {sgdma_tx}
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_tx/csr_read
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_tx/csr_write
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_tx/csr_address
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_tx/csr_chipselect
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_tx/csr_writedata
add wave -noupdate -format Logic /test_bench/DUT/the_sgdma_tx/csr_readdata


# Display signals from module tse_mac
add wave -noupdate -divider {tse_mac}
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/ena_10
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/eth_mode
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/mdc
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/mdio_in
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/mdio_oen
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/mdio_out
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_tse_mac/rgmii_in
add wave -noupdate -format Literal -radix hexadecimal /test_bench/DUT/the_tse_mac/rgmii_out
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/rx_clk
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/rx_control
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/set_10
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/set_1000
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/tx_clk
add wave -noupdate -format Literal -radix binary /test_bench/DUT/the_tse_mac/tx_control


configure wave -justifyvalue right
configure wave -signalnamewidth 1
TreeUpdate [SetDefaultTree]