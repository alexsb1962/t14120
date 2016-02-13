/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'cpu' in SOPC Builder design 'DE2_115_SOPC'
 * SOPC Builder design path: D:/test/asvm/DE2_115_SOPC.sopcinfo
 *
 * Generated: Wed Jul 04 15:57:15 EEST 2012
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0xb40a820
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x0
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x20
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x1c
#define ALT_CPU_NAME "cpu"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_RESET_ADDR 0x0


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0xb40a820
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x0
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x20
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x1c
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x0


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_CFI_FLASH
#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_LCD_16207
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SGDMA
#define __ALTERA_AVALON_SYSID
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2
#define __ALTPLL
#define __ISP1362_IF
#define __SEG7_IF
#define __TERASIC_SRAM
#define __TRIPLE_SPEED_ETHERNET


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "CYCLONEIVE"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0xb40b4f0
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0xb40b4f0
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0xb40b4f0
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "DE2_115_SOPC"


/*
 * cfi_flash configuration
 *
 */

#define ALT_MODULE_CLASS_cfi_flash altera_avalon_cfi_flash
#define CFI_FLASH_BASE 0xa800000
#define CFI_FLASH_HOLD_VALUE 60
#define CFI_FLASH_IRQ -1
#define CFI_FLASH_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CFI_FLASH_NAME "/dev/cfi_flash"
#define CFI_FLASH_SETUP_VALUE 60
#define CFI_FLASH_SIZE 8388608u
#define CFI_FLASH_SPAN 8388608
#define CFI_FLASH_TIMING_UNITS "ns"
#define CFI_FLASH_TYPE "altera_avalon_cfi_flash"
#define CFI_FLASH_WAIT_VALUE 160


/*
 * descriptor_memory configuration
 *
 */

#define ALT_MODULE_CLASS_descriptor_memory altera_avalon_onchip_memory2
#define DESCRIPTOR_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define DESCRIPTOR_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define DESCRIPTOR_MEMORY_BASE 0xb408000
#define DESCRIPTOR_MEMORY_CONTENTS_INFO ""
#define DESCRIPTOR_MEMORY_DUAL_PORT 0
#define DESCRIPTOR_MEMORY_GUI_RAM_BLOCK_TYPE "Automatic"
#define DESCRIPTOR_MEMORY_INIT_CONTENTS_FILE "descriptor_memory"
#define DESCRIPTOR_MEMORY_INIT_MEM_CONTENT 1
#define DESCRIPTOR_MEMORY_INSTANCE_ID "NONE"
#define DESCRIPTOR_MEMORY_IRQ -1
#define DESCRIPTOR_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DESCRIPTOR_MEMORY_NAME "/dev/descriptor_memory"
#define DESCRIPTOR_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define DESCRIPTOR_MEMORY_RAM_BLOCK_TYPE "Auto"
#define DESCRIPTOR_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define DESCRIPTOR_MEMORY_SINGLE_CLOCK_OP 0
#define DESCRIPTOR_MEMORY_SIZE_MULTIPLE 1
#define DESCRIPTOR_MEMORY_SIZE_VALUE 8192u
#define DESCRIPTOR_MEMORY_SPAN 8192
#define DESCRIPTOR_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define DESCRIPTOR_MEMORY_WRITABLE 1


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0xb40b4f0
#define JTAG_UART_IRQ 3
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * key configuration
 *
 */

#define ALT_MODULE_CLASS_key altera_avalon_pio
#define KEY_BASE 0x9000040
#define KEY_BIT_CLEARING_EDGE_REGISTER 0
#define KEY_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEY_CAPTURE 1
#define KEY_DATA_WIDTH 4
#define KEY_DO_TEST_BENCH_WIRING 0
#define KEY_DRIVEN_SIM_VALUE 0x0
#define KEY_EDGE_TYPE "FALLING"
#define KEY_FREQ 10000000u
#define KEY_HAS_IN 1
#define KEY_HAS_OUT 0
#define KEY_HAS_TRI 0
#define KEY_IRQ 1
#define KEY_IRQ_INTERRUPT_CONTROLLER_ID 0
#define KEY_IRQ_TYPE "EDGE"
#define KEY_NAME "/dev/key"
#define KEY_RESET_VALUE 0x0
#define KEY_SPAN 16
#define KEY_TYPE "altera_avalon_pio"


/*
 * lcd configuration
 *
 */

#define ALT_MODULE_CLASS_lcd altera_avalon_lcd_16207
#define LCD_BASE 0x9000080
#define LCD_IRQ -1
#define LCD_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LCD_NAME "/dev/lcd"
#define LCD_SPAN 16
#define LCD_TYPE "altera_avalon_lcd_16207"


/*
 * ledg configuration
 *
 */

#define ALT_MODULE_CLASS_ledg altera_avalon_pio
#define LEDG_BASE 0x9000060
#define LEDG_BIT_CLEARING_EDGE_REGISTER 0
#define LEDG_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LEDG_CAPTURE 0
#define LEDG_DATA_WIDTH 9
#define LEDG_DO_TEST_BENCH_WIRING 0
#define LEDG_DRIVEN_SIM_VALUE 0x0
#define LEDG_EDGE_TYPE "NONE"
#define LEDG_FREQ 10000000u
#define LEDG_HAS_IN 0
#define LEDG_HAS_OUT 1
#define LEDG_HAS_TRI 0
#define LEDG_IRQ -1
#define LEDG_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LEDG_IRQ_TYPE "NONE"
#define LEDG_NAME "/dev/ledg"
#define LEDG_RESET_VALUE 0x0
#define LEDG_SPAN 16
#define LEDG_TYPE "altera_avalon_pio"


/*
 * ledr configuration
 *
 */

#define ALT_MODULE_CLASS_ledr altera_avalon_pio
#define LEDR_BASE 0x9000070
#define LEDR_BIT_CLEARING_EDGE_REGISTER 0
#define LEDR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LEDR_CAPTURE 0
#define LEDR_DATA_WIDTH 18
#define LEDR_DO_TEST_BENCH_WIRING 0
#define LEDR_DRIVEN_SIM_VALUE 0x0
#define LEDR_EDGE_TYPE "NONE"
#define LEDR_FREQ 10000000u
#define LEDR_HAS_IN 0
#define LEDR_HAS_OUT 1
#define LEDR_HAS_TRI 0
#define LEDR_IRQ -1
#define LEDR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LEDR_IRQ_TYPE "NONE"
#define LEDR_NAME "/dev/ledr"
#define LEDR_RESET_VALUE 0x0
#define LEDR_SPAN 16
#define LEDR_TYPE "altera_avalon_pio"


/*
 * onchip_memory2 configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory2 altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY2_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_BASE 0xb404000
#define ONCHIP_MEMORY2_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_DUAL_PORT 0
#define ONCHIP_MEMORY2_GUI_RAM_BLOCK_TYPE "Automatic"
#define ONCHIP_MEMORY2_INIT_CONTENTS_FILE "onchip_memory2"
#define ONCHIP_MEMORY2_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY2_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY2_IRQ -1
#define ONCHIP_MEMORY2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY2_NAME "/dev/onchip_memory2"
#define ONCHIP_MEMORY2_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY2_RAM_BLOCK_TYPE "Auto"
#define ONCHIP_MEMORY2_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY2_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_SIZE_VALUE 16384u
#define ONCHIP_MEMORY2_SPAN 16384
#define ONCHIP_MEMORY2_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY2_WRITABLE 1


/*
 * pll configuration
 *
 */

#define ALT_MODULE_CLASS_pll altpll
#define PLL_BASE 0xb40b4e0
#define PLL_IRQ -1
#define PLL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PLL_NAME "/dev/pll"
#define PLL_SPAN 16
#define PLL_TYPE "altpll"


/*
 * sdram configuration
 *
 */

#define ALT_MODULE_CLASS_sdram altera_avalon_new_sdram_controller
#define SDRAM_BASE 0x0
#define SDRAM_CAS_LATENCY 3
#define SDRAM_CONTENTS_INFO ""
#define SDRAM_INIT_NOP_DELAY 0.0
#define SDRAM_INIT_REFRESH_COMMANDS 2
#define SDRAM_IRQ -1
#define SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_IS_INITIALIZED 1
#define SDRAM_NAME "/dev/sdram"
#define SDRAM_POWERUP_DELAY 100.0
#define SDRAM_REFRESH_PERIOD 15.625
#define SDRAM_REGISTER_DATA_IN 1
#define SDRAM_SDRAM_ADDR_WIDTH 0x19
#define SDRAM_SDRAM_BANK_WIDTH 2
#define SDRAM_SDRAM_COL_WIDTH 10
#define SDRAM_SDRAM_DATA_WIDTH 32
#define SDRAM_SDRAM_NUM_BANKS 4
#define SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_SDRAM_ROW_WIDTH 13
#define SDRAM_SHARED_DATA 0
#define SDRAM_SIM_MODEL_BASE 1
#define SDRAM_SPAN 134217728
#define SDRAM_STARVATION_INDICATOR 0
#define SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_T_AC 5.5
#define SDRAM_T_MRD 3
#define SDRAM_T_RCD 20.0
#define SDRAM_T_RFC 70.0
#define SDRAM_T_RP 20.0
#define SDRAM_T_WR 14.0


/*
 * sdram configuration as viewed by sgdma_f_m_write
 *
 */

#define SGDMA_F_M_WRITE_SDRAM_BASE 0x0
#define SGDMA_F_M_WRITE_SDRAM_CAS_LATENCY 3
#define SGDMA_F_M_WRITE_SDRAM_CONTENTS_INFO ""
#define SGDMA_F_M_WRITE_SDRAM_INIT_NOP_DELAY 0.0
#define SGDMA_F_M_WRITE_SDRAM_INIT_REFRESH_COMMANDS 2
#define SGDMA_F_M_WRITE_SDRAM_IRQ -1
#define SGDMA_F_M_WRITE_SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SGDMA_F_M_WRITE_SDRAM_IS_INITIALIZED 1
#define SGDMA_F_M_WRITE_SDRAM_NAME "/dev/sdram"
#define SGDMA_F_M_WRITE_SDRAM_POWERUP_DELAY 100.0
#define SGDMA_F_M_WRITE_SDRAM_REFRESH_PERIOD 15.625
#define SGDMA_F_M_WRITE_SDRAM_REGISTER_DATA_IN 1
#define SGDMA_F_M_WRITE_SDRAM_SDRAM_ADDR_WIDTH 0x19
#define SGDMA_F_M_WRITE_SDRAM_SDRAM_BANK_WIDTH 2
#define SGDMA_F_M_WRITE_SDRAM_SDRAM_COL_WIDTH 10
#define SGDMA_F_M_WRITE_SDRAM_SDRAM_DATA_WIDTH 32
#define SGDMA_F_M_WRITE_SDRAM_SDRAM_NUM_BANKS 4
#define SGDMA_F_M_WRITE_SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SGDMA_F_M_WRITE_SDRAM_SDRAM_ROW_WIDTH 13
#define SGDMA_F_M_WRITE_SDRAM_SHARED_DATA 0
#define SGDMA_F_M_WRITE_SDRAM_SIM_MODEL_BASE 1
#define SGDMA_F_M_WRITE_SDRAM_SPAN 134217728
#define SGDMA_F_M_WRITE_SDRAM_STARVATION_INDICATOR 0
#define SGDMA_F_M_WRITE_SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SGDMA_F_M_WRITE_SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SGDMA_F_M_WRITE_SDRAM_T_AC 5.5
#define SGDMA_F_M_WRITE_SDRAM_T_MRD 3
#define SGDMA_F_M_WRITE_SDRAM_T_RCD 20.0
#define SGDMA_F_M_WRITE_SDRAM_T_RFC 70.0
#define SGDMA_F_M_WRITE_SDRAM_T_RP 20.0
#define SGDMA_F_M_WRITE_SDRAM_T_WR 14.0


/*
 * sdram configuration as viewed by sgdma_rx_m_write
 *
 */

#define SGDMA_RX_M_WRITE_SDRAM_BASE 0x0
#define SGDMA_RX_M_WRITE_SDRAM_CAS_LATENCY 3
#define SGDMA_RX_M_WRITE_SDRAM_CONTENTS_INFO ""
#define SGDMA_RX_M_WRITE_SDRAM_INIT_NOP_DELAY 0.0
#define SGDMA_RX_M_WRITE_SDRAM_INIT_REFRESH_COMMANDS 2
#define SGDMA_RX_M_WRITE_SDRAM_IRQ -1
#define SGDMA_RX_M_WRITE_SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SGDMA_RX_M_WRITE_SDRAM_IS_INITIALIZED 1
#define SGDMA_RX_M_WRITE_SDRAM_NAME "/dev/sdram"
#define SGDMA_RX_M_WRITE_SDRAM_POWERUP_DELAY 100.0
#define SGDMA_RX_M_WRITE_SDRAM_REFRESH_PERIOD 15.625
#define SGDMA_RX_M_WRITE_SDRAM_REGISTER_DATA_IN 1
#define SGDMA_RX_M_WRITE_SDRAM_SDRAM_ADDR_WIDTH 0x19
#define SGDMA_RX_M_WRITE_SDRAM_SDRAM_BANK_WIDTH 2
#define SGDMA_RX_M_WRITE_SDRAM_SDRAM_COL_WIDTH 10
#define SGDMA_RX_M_WRITE_SDRAM_SDRAM_DATA_WIDTH 32
#define SGDMA_RX_M_WRITE_SDRAM_SDRAM_NUM_BANKS 4
#define SGDMA_RX_M_WRITE_SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SGDMA_RX_M_WRITE_SDRAM_SDRAM_ROW_WIDTH 13
#define SGDMA_RX_M_WRITE_SDRAM_SHARED_DATA 0
#define SGDMA_RX_M_WRITE_SDRAM_SIM_MODEL_BASE 1
#define SGDMA_RX_M_WRITE_SDRAM_SPAN 134217728
#define SGDMA_RX_M_WRITE_SDRAM_STARVATION_INDICATOR 0
#define SGDMA_RX_M_WRITE_SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SGDMA_RX_M_WRITE_SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SGDMA_RX_M_WRITE_SDRAM_T_AC 5.5
#define SGDMA_RX_M_WRITE_SDRAM_T_MRD 3
#define SGDMA_RX_M_WRITE_SDRAM_T_RCD 20.0
#define SGDMA_RX_M_WRITE_SDRAM_T_RFC 70.0
#define SGDMA_RX_M_WRITE_SDRAM_T_RP 20.0
#define SGDMA_RX_M_WRITE_SDRAM_T_WR 14.0


/*
 * sdram configuration as viewed by sgdma_tx_m_read
 *
 */

#define SGDMA_TX_M_READ_SDRAM_BASE 0x0
#define SGDMA_TX_M_READ_SDRAM_CAS_LATENCY 3
#define SGDMA_TX_M_READ_SDRAM_CONTENTS_INFO ""
#define SGDMA_TX_M_READ_SDRAM_INIT_NOP_DELAY 0.0
#define SGDMA_TX_M_READ_SDRAM_INIT_REFRESH_COMMANDS 2
#define SGDMA_TX_M_READ_SDRAM_IRQ -1
#define SGDMA_TX_M_READ_SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SGDMA_TX_M_READ_SDRAM_IS_INITIALIZED 1
#define SGDMA_TX_M_READ_SDRAM_NAME "/dev/sdram"
#define SGDMA_TX_M_READ_SDRAM_POWERUP_DELAY 100.0
#define SGDMA_TX_M_READ_SDRAM_REFRESH_PERIOD 15.625
#define SGDMA_TX_M_READ_SDRAM_REGISTER_DATA_IN 1
#define SGDMA_TX_M_READ_SDRAM_SDRAM_ADDR_WIDTH 0x19
#define SGDMA_TX_M_READ_SDRAM_SDRAM_BANK_WIDTH 2
#define SGDMA_TX_M_READ_SDRAM_SDRAM_COL_WIDTH 10
#define SGDMA_TX_M_READ_SDRAM_SDRAM_DATA_WIDTH 32
#define SGDMA_TX_M_READ_SDRAM_SDRAM_NUM_BANKS 4
#define SGDMA_TX_M_READ_SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SGDMA_TX_M_READ_SDRAM_SDRAM_ROW_WIDTH 13
#define SGDMA_TX_M_READ_SDRAM_SHARED_DATA 0
#define SGDMA_TX_M_READ_SDRAM_SIM_MODEL_BASE 1
#define SGDMA_TX_M_READ_SDRAM_SPAN 134217728
#define SGDMA_TX_M_READ_SDRAM_STARVATION_INDICATOR 0
#define SGDMA_TX_M_READ_SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SGDMA_TX_M_READ_SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SGDMA_TX_M_READ_SDRAM_T_AC 5.5
#define SGDMA_TX_M_READ_SDRAM_T_MRD 3
#define SGDMA_TX_M_READ_SDRAM_T_RCD 20.0
#define SGDMA_TX_M_READ_SDRAM_T_RFC 70.0
#define SGDMA_TX_M_READ_SDRAM_T_RP 20.0
#define SGDMA_TX_M_READ_SDRAM_T_WR 14.0


/*
 * seg7 configuration
 *
 */

#define ALT_MODULE_CLASS_seg7 SEG7_IF
#define SEG7_BASE 0x9000020
#define SEG7_IRQ -1
#define SEG7_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEG7_NAME "/dev/seg7"
#define SEG7_SPAN 32
#define SEG7_TYPE "SEG7_IF"


/*
 * sgdma_f configuration
 *
 */

#define ALT_MODULE_CLASS_sgdma_f altera_avalon_sgdma
#define SGDMA_F_ADDRESS_WIDTH 32
#define SGDMA_F_ALWAYS_DO_MAX_BURST 1
#define SGDMA_F_ATLANTIC_CHANNEL_DATA_WIDTH 4
#define SGDMA_F_AVALON_MM_BYTE_REORDER_MODE 1
#define SGDMA_F_BASE 0xb40b480
#define SGDMA_F_BURST_DATA_WIDTH 8
#define SGDMA_F_BURST_TRANSFER 0
#define SGDMA_F_BYTES_TO_TRANSFER_DATA_WIDTH 16
#define SGDMA_F_CHAIN_WRITEBACK_DATA_WIDTH 32
#define SGDMA_F_COMMAND_FIFO_DATA_WIDTH 104
#define SGDMA_F_CONTROL_DATA_WIDTH 8
#define SGDMA_F_CONTROL_SLAVE_ADDRESS_WIDTH 0x4
#define SGDMA_F_CONTROL_SLAVE_DATA_WIDTH 32
#define SGDMA_F_DESCRIPTOR_READ_BURST 0
#define SGDMA_F_DESC_DATA_WIDTH 32
#define SGDMA_F_HAS_READ_BLOCK 0
#define SGDMA_F_HAS_WRITE_BLOCK 1
#define SGDMA_F_IN_ERROR_WIDTH 0
#define SGDMA_F_IRQ 8
#define SGDMA_F_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SGDMA_F_NAME "/dev/sgdma_f"
#define SGDMA_F_OUT_ERROR_WIDTH 0
#define SGDMA_F_READ_BLOCK_DATA_WIDTH 32
#define SGDMA_F_READ_BURSTCOUNT_WIDTH 4
#define SGDMA_F_SPAN 64
#define SGDMA_F_STATUS_TOKEN_DATA_WIDTH 24
#define SGDMA_F_STREAM_DATA_WIDTH 32
#define SGDMA_F_SYMBOLS_PER_BEAT 4
#define SGDMA_F_TYPE "altera_avalon_sgdma"
#define SGDMA_F_UNALIGNED_TRANSFER 0
#define SGDMA_F_WRITE_BLOCK_DATA_WIDTH 32
#define SGDMA_F_WRITE_BURSTCOUNT_WIDTH 4


/*
 * sgdma_rx configuration
 *
 */

#define ALT_MODULE_CLASS_sgdma_rx altera_avalon_sgdma
#define SGDMA_RX_ADDRESS_WIDTH 32
#define SGDMA_RX_ALWAYS_DO_MAX_BURST 1
#define SGDMA_RX_ATLANTIC_CHANNEL_DATA_WIDTH 4
#define SGDMA_RX_AVALON_MM_BYTE_REORDER_MODE 0
#define SGDMA_RX_BASE 0xb40b440
#define SGDMA_RX_BURST_DATA_WIDTH 8
#define SGDMA_RX_BURST_TRANSFER 0
#define SGDMA_RX_BYTES_TO_TRANSFER_DATA_WIDTH 16
#define SGDMA_RX_CHAIN_WRITEBACK_DATA_WIDTH 32
#define SGDMA_RX_COMMAND_FIFO_DATA_WIDTH 104
#define SGDMA_RX_CONTROL_DATA_WIDTH 8
#define SGDMA_RX_CONTROL_SLAVE_ADDRESS_WIDTH 0x4
#define SGDMA_RX_CONTROL_SLAVE_DATA_WIDTH 32
#define SGDMA_RX_DESCRIPTOR_READ_BURST 0
#define SGDMA_RX_DESC_DATA_WIDTH 32
#define SGDMA_RX_HAS_READ_BLOCK 0
#define SGDMA_RX_HAS_WRITE_BLOCK 1
#define SGDMA_RX_IN_ERROR_WIDTH 6
#define SGDMA_RX_IRQ 7
#define SGDMA_RX_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SGDMA_RX_NAME "/dev/sgdma_rx"
#define SGDMA_RX_OUT_ERROR_WIDTH 0
#define SGDMA_RX_READ_BLOCK_DATA_WIDTH 32
#define SGDMA_RX_READ_BURSTCOUNT_WIDTH 4
#define SGDMA_RX_SPAN 64
#define SGDMA_RX_STATUS_TOKEN_DATA_WIDTH 24
#define SGDMA_RX_STREAM_DATA_WIDTH 32
#define SGDMA_RX_SYMBOLS_PER_BEAT 4
#define SGDMA_RX_TYPE "altera_avalon_sgdma"
#define SGDMA_RX_UNALIGNED_TRANSFER 0
#define SGDMA_RX_WRITE_BLOCK_DATA_WIDTH 32
#define SGDMA_RX_WRITE_BURSTCOUNT_WIDTH 4


/*
 * sgdma_tx configuration
 *
 */

#define ALT_MODULE_CLASS_sgdma_tx altera_avalon_sgdma
#define SGDMA_TX_ADDRESS_WIDTH 32
#define SGDMA_TX_ALWAYS_DO_MAX_BURST 1
#define SGDMA_TX_ATLANTIC_CHANNEL_DATA_WIDTH 4
#define SGDMA_TX_AVALON_MM_BYTE_REORDER_MODE 0
#define SGDMA_TX_BASE 0xb40b400
#define SGDMA_TX_BURST_DATA_WIDTH 8
#define SGDMA_TX_BURST_TRANSFER 0
#define SGDMA_TX_BYTES_TO_TRANSFER_DATA_WIDTH 16
#define SGDMA_TX_CHAIN_WRITEBACK_DATA_WIDTH 32
#define SGDMA_TX_COMMAND_FIFO_DATA_WIDTH 104
#define SGDMA_TX_CONTROL_DATA_WIDTH 8
#define SGDMA_TX_CONTROL_SLAVE_ADDRESS_WIDTH 0x4
#define SGDMA_TX_CONTROL_SLAVE_DATA_WIDTH 32
#define SGDMA_TX_DESCRIPTOR_READ_BURST 0
#define SGDMA_TX_DESC_DATA_WIDTH 32
#define SGDMA_TX_HAS_READ_BLOCK 1
#define SGDMA_TX_HAS_WRITE_BLOCK 0
#define SGDMA_TX_IN_ERROR_WIDTH 0
#define SGDMA_TX_IRQ 6
#define SGDMA_TX_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SGDMA_TX_NAME "/dev/sgdma_tx"
#define SGDMA_TX_OUT_ERROR_WIDTH 1
#define SGDMA_TX_READ_BLOCK_DATA_WIDTH 32
#define SGDMA_TX_READ_BURSTCOUNT_WIDTH 4
#define SGDMA_TX_SPAN 64
#define SGDMA_TX_STATUS_TOKEN_DATA_WIDTH 24
#define SGDMA_TX_STREAM_DATA_WIDTH 32
#define SGDMA_TX_SYMBOLS_PER_BEAT 4
#define SGDMA_TX_TYPE "altera_avalon_sgdma"
#define SGDMA_TX_UNALIGNED_TRANSFER 0
#define SGDMA_TX_WRITE_BLOCK_DATA_WIDTH 32
#define SGDMA_TX_WRITE_BURSTCOUNT_WIDTH 4


/*
 * sgdma_tx configuration as viewed by sgdma_tx_m_read
 *
 */

#define SGDMA_TX_M_READ_SGDMA_TX_ADDRESS_WIDTH 32
#define SGDMA_TX_M_READ_SGDMA_TX_ALWAYS_DO_MAX_BURST 1
#define SGDMA_TX_M_READ_SGDMA_TX_ATLANTIC_CHANNEL_DATA_WIDTH 4
#define SGDMA_TX_M_READ_SGDMA_TX_AVALON_MM_BYTE_REORDER_MODE 0
#define SGDMA_TX_M_READ_SGDMA_TX_BASE 0xb40b400
#define SGDMA_TX_M_READ_SGDMA_TX_BURST_DATA_WIDTH 8
#define SGDMA_TX_M_READ_SGDMA_TX_BURST_TRANSFER 0
#define SGDMA_TX_M_READ_SGDMA_TX_BYTES_TO_TRANSFER_DATA_WIDTH 16
#define SGDMA_TX_M_READ_SGDMA_TX_CHAIN_WRITEBACK_DATA_WIDTH 32
#define SGDMA_TX_M_READ_SGDMA_TX_COMMAND_FIFO_DATA_WIDTH 104
#define SGDMA_TX_M_READ_SGDMA_TX_CONTROL_DATA_WIDTH 8
#define SGDMA_TX_M_READ_SGDMA_TX_CONTROL_SLAVE_ADDRESS_WIDTH 0x4
#define SGDMA_TX_M_READ_SGDMA_TX_CONTROL_SLAVE_DATA_WIDTH 32
#define SGDMA_TX_M_READ_SGDMA_TX_DESCRIPTOR_READ_BURST 0
#define SGDMA_TX_M_READ_SGDMA_TX_DESC_DATA_WIDTH 32
#define SGDMA_TX_M_READ_SGDMA_TX_HAS_READ_BLOCK 1
#define SGDMA_TX_M_READ_SGDMA_TX_HAS_WRITE_BLOCK 0
#define SGDMA_TX_M_READ_SGDMA_TX_IN_ERROR_WIDTH 0
#define SGDMA_TX_M_READ_SGDMA_TX_IRQ -1
#define SGDMA_TX_M_READ_SGDMA_TX_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SGDMA_TX_M_READ_SGDMA_TX_NAME "/dev/sgdma_tx"
#define SGDMA_TX_M_READ_SGDMA_TX_OUT_ERROR_WIDTH 1
#define SGDMA_TX_M_READ_SGDMA_TX_READ_BLOCK_DATA_WIDTH 32
#define SGDMA_TX_M_READ_SGDMA_TX_READ_BURSTCOUNT_WIDTH 4
#define SGDMA_TX_M_READ_SGDMA_TX_SPAN 64
#define SGDMA_TX_M_READ_SGDMA_TX_STATUS_TOKEN_DATA_WIDTH 24
#define SGDMA_TX_M_READ_SGDMA_TX_STREAM_DATA_WIDTH 32
#define SGDMA_TX_M_READ_SGDMA_TX_SYMBOLS_PER_BEAT 4
#define SGDMA_TX_M_READ_SGDMA_TX_TYPE "altera_avalon_sgdma"
#define SGDMA_TX_M_READ_SGDMA_TX_UNALIGNED_TRANSFER 0
#define SGDMA_TX_M_READ_SGDMA_TX_WRITE_BLOCK_DATA_WIDTH 32
#define SGDMA_TX_M_READ_SGDMA_TX_WRITE_BURSTCOUNT_WIDTH 4


/*
 * sma_in configuration
 *
 */

#define ALT_MODULE_CLASS_sma_in altera_avalon_pio
#define SMA_IN_BASE 0xb40b4c0
#define SMA_IN_BIT_CLEARING_EDGE_REGISTER 0
#define SMA_IN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SMA_IN_CAPTURE 0
#define SMA_IN_DATA_WIDTH 1
#define SMA_IN_DO_TEST_BENCH_WIRING 0
#define SMA_IN_DRIVEN_SIM_VALUE 0x0
#define SMA_IN_EDGE_TYPE "NONE"
#define SMA_IN_FREQ 100000000u
#define SMA_IN_HAS_IN 1
#define SMA_IN_HAS_OUT 0
#define SMA_IN_HAS_TRI 0
#define SMA_IN_IRQ -1
#define SMA_IN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SMA_IN_IRQ_TYPE "NONE"
#define SMA_IN_NAME "/dev/sma_in"
#define SMA_IN_RESET_VALUE 0x0
#define SMA_IN_SPAN 16
#define SMA_IN_TYPE "altera_avalon_pio"


/*
 * sma_out configuration
 *
 */

#define ALT_MODULE_CLASS_sma_out altera_avalon_pio
#define SMA_OUT_BASE 0xb40b4d0
#define SMA_OUT_BIT_CLEARING_EDGE_REGISTER 0
#define SMA_OUT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SMA_OUT_CAPTURE 0
#define SMA_OUT_DATA_WIDTH 1
#define SMA_OUT_DO_TEST_BENCH_WIRING 0
#define SMA_OUT_DRIVEN_SIM_VALUE 0x0
#define SMA_OUT_EDGE_TYPE "NONE"
#define SMA_OUT_FREQ 100000000u
#define SMA_OUT_HAS_IN 0
#define SMA_OUT_HAS_OUT 1
#define SMA_OUT_HAS_TRI 0
#define SMA_OUT_IRQ -1
#define SMA_OUT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SMA_OUT_IRQ_TYPE "NONE"
#define SMA_OUT_NAME "/dev/sma_out"
#define SMA_OUT_RESET_VALUE 0x0
#define SMA_OUT_SPAN 16
#define SMA_OUT_TYPE "altera_avalon_pio"


/*
 * sram configuration
 *
 */

#define ALT_MODULE_CLASS_sram TERASIC_SRAM
#define SRAM_BASE 0xb200000
#define SRAM_IRQ -1
#define SRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SRAM_NAME "/dev/sram"
#define SRAM_SPAN 2097152
#define SRAM_TYPE "TERASIC_SRAM"


/*
 * sw configuration
 *
 */

#define ALT_MODULE_CLASS_sw altera_avalon_pio
#define SW_BASE 0x9000050
#define SW_BIT_CLEARING_EDGE_REGISTER 0
#define SW_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SW_CAPTURE 1
#define SW_DATA_WIDTH 18
#define SW_DO_TEST_BENCH_WIRING 0
#define SW_DRIVEN_SIM_VALUE 0x0
#define SW_EDGE_TYPE "FALLING"
#define SW_FREQ 10000000u
#define SW_HAS_IN 1
#define SW_HAS_OUT 0
#define SW_HAS_TRI 0
#define SW_IRQ 2
#define SW_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SW_IRQ_TYPE "EDGE"
#define SW_NAME "/dev/sw"
#define SW_RESET_VALUE 0x0
#define SW_SPAN 16
#define SW_TYPE "altera_avalon_pio"


/*
 * sysid configuration
 *
 */

#define ALT_MODULE_CLASS_sysid altera_avalon_sysid
#define SYSID_BASE 0x9000090
#define SYSID_ID 0u
#define SYSID_IRQ -1
#define SYSID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_NAME "/dev/sysid"
#define SYSID_SPAN 8
#define SYSID_TIMESTAMP 1341402313u
#define SYSID_TYPE "altera_avalon_sysid"


/*
 * timer configuration
 *
 */

#define ALT_MODULE_CLASS_timer altera_avalon_timer
#define TIMER_ALWAYS_RUN 0
#define TIMER_BASE 0x9000000
#define TIMER_COUNTER_SIZE 32
#define TIMER_FIXED_PERIOD 0
#define TIMER_FREQ 10000000u
#define TIMER_IRQ 0
#define TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_LOAD_VALUE 9999ull
#define TIMER_MULT 0.0010
#define TIMER_NAME "/dev/timer"
#define TIMER_PERIOD 1
#define TIMER_PERIOD_UNITS "ms"
#define TIMER_RESET_OUTPUT 0
#define TIMER_SNAPSHOT 1
#define TIMER_SPAN 32
#define TIMER_TICKS_PER_SEC 1000u
#define TIMER_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_TYPE "altera_avalon_timer"


/*
 * tse_mac configuration
 *
 */

#define ALT_MODULE_CLASS_tse_mac triple_speed_ethernet
#define TSE_MAC_BASE 0xb40b000
#define TSE_MAC_ENABLE_MACLITE 0
#define TSE_MAC_FIFO_WIDTH 32
#define TSE_MAC_IRQ -1
#define TSE_MAC_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TSE_MAC_IS_MULTICHANNEL_MAC 0
#define TSE_MAC_MACLITE_GIGE 0
#define TSE_MAC_MDIO_SHARED 0
#define TSE_MAC_NAME "/dev/tse_mac"
#define TSE_MAC_NUMBER_OF_CHANNEL 1
#define TSE_MAC_NUMBER_OF_MAC_MDIO_SHARED 1
#define TSE_MAC_PCS 0
#define TSE_MAC_PCS_ID 0u
#define TSE_MAC_PCS_SGMII 0
#define TSE_MAC_RECEIVE_FIFO_DEPTH 2048
#define TSE_MAC_REGISTER_SHARED 0
#define TSE_MAC_SPAN 1024
#define TSE_MAC_TRANSMIT_FIFO_DEPTH 2048
#define TSE_MAC_TYPE "triple_speed_ethernet"
#define TSE_MAC_UNASSIGNED "unassigned"
#define TSE_MAC_USE_MDIO 1


/*
 * usb_dc configuration
 *
 */

#define ALT_MODULE_CLASS_usb_dc ISP1362_IF
#define USB_DC_BASE 0xb40b500
#define USB_DC_IRQ 5
#define USB_DC_IRQ_INTERRUPT_CONTROLLER_ID 0
#define USB_DC_NAME "/dev/usb_dc"
#define USB_DC_SPAN 8
#define USB_DC_TYPE "ISP1362_IF"


/*
 * usb_hc configuration
 *
 */

#define ALT_MODULE_CLASS_usb_hc ISP1362_IF
#define USB_HC_BASE 0xb40b4f8
#define USB_HC_IRQ 4
#define USB_HC_IRQ_INTERRUPT_CONTROLLER_ID 0
#define USB_HC_NAME "/dev/usb_hc"
#define USB_HC_SPAN 8
#define USB_HC_TYPE "ISP1362_IF"

#endif /* __SYSTEM_H_ */
