# TCL File Generated by Component Editor 11.0sp1
# Sun Jun 17 23:48:23 EEST 2012
# DO NOT MODIFY


# +-----------------------------------
# | 
# | simple_st_source "simple_st_source" v1.0
# | null 2012.06.17.23:48:23
# | 
# | 
# | D:/test/asvm/simple_st_source.v
# | 
# |    ./simple_st_source.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 11.0
# | 
package require -exact sopc 11.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module simple_st_source
# | 
set_module_property NAME simple_st_source
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property DISPLAY_NAME simple_st_source
set_module_property TOP_LEVEL_HDL_FILE simple_st_source.v
set_module_property TOP_LEVEL_HDL_MODULE simple_st_source
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property STATIC_TOP_LEVEL_MODULE_NAME simple_st_source
set_module_property FIX_110_VIP_PATH false
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file simple_st_source.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point out0
# | 
add_interface out0 avalon_streaming start
set_interface_property out0 associatedClock clock
set_interface_property out0 associatedReset reset
set_interface_property out0 dataBitsPerSymbol 8
set_interface_property out0 errorDescriptor ""
set_interface_property out0 firstSymbolInHighOrderBits true
set_interface_property out0 maxChannel 0
set_interface_property out0 readyLatency 0

set_interface_property out0 ENABLED true

add_interface_port out0 aso_out0_data data Output 32
add_interface_port out0 aso_out0_ready ready Input 1
add_interface_port out0 aso_out0_valid valid Output 1
add_interface_port out0 aso_out0_sop startofpacket Output 1
add_interface_port out0 aso_out0_eop endofpacket Output 1
add_interface_port out0 aso_out0_empty empty Output 2
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clock
# | 
add_interface clock clock end
set_interface_property clock clockRate 0

set_interface_property clock ENABLED true

add_interface_port clock clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT

set_interface_property reset ENABLED true

add_interface_port reset reset reset Input 1
# | 
# +-----------------------------------
