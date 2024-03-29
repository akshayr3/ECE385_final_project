# TCL File Generated by Component Editor 18.1
# Mon Nov 18 00:04:57 CST 2019
# DO NOT MODIFY


# 
# GPU_CORE "GPU_CORE" v1.0
#  2019.11.18.00:04:57
# gpu core that renders cubes
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module GPU_CORE
# 
set_module_property DESCRIPTION "gpu core that renders cubes"
set_module_property NAME GPU_CORE
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP ECE_385_Final
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME GPU_CORE
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avalon_gpu_interface 
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avalon_gpu_interface.sv SYSTEM_VERILOG PATH avalon_gpu_interface.sv TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point CLK
# 
add_interface CLK clock end
set_interface_property CLK clockRate 50000000
set_interface_property CLK ENABLED true
set_interface_property CLK EXPORT_OF ""
set_interface_property CLK PORT_NAME_MAP ""
set_interface_property CLK CMSIS_SVD_VARIABLES ""
set_interface_property CLK SVD_ADDRESS_GROUP ""

add_interface_port CLK CLK_clk clk Input 1


# 
# connection point RESET
# 
add_interface RESET reset end
set_interface_property RESET associatedClock CLK
set_interface_property RESET synchronousEdges DEASSERT
set_interface_property RESET ENABLED true
set_interface_property RESET EXPORT_OF ""
set_interface_property RESET PORT_NAME_MAP ""
set_interface_property RESET CMSIS_SVD_VARIABLES ""
set_interface_property RESET SVD_ADDRESS_GROUP ""

add_interface_port RESET RESET_reset reset Input 1


# 
# connection point GPU_SLAVE
# 
add_interface GPU_SLAVE avalon end
set_interface_property GPU_SLAVE addressUnits WORDS
set_interface_property GPU_SLAVE associatedClock CLK
set_interface_property GPU_SLAVE associatedReset RESET
set_interface_property GPU_SLAVE bitsPerSymbol 8
set_interface_property GPU_SLAVE burstOnBurstBoundariesOnly false
set_interface_property GPU_SLAVE burstcountUnits WORDS
set_interface_property GPU_SLAVE explicitAddressSpan 0
set_interface_property GPU_SLAVE holdTime 0
set_interface_property GPU_SLAVE linewrapBursts false
set_interface_property GPU_SLAVE maximumPendingReadTransactions 0
set_interface_property GPU_SLAVE maximumPendingWriteTransactions 0
set_interface_property GPU_SLAVE readLatency 0
set_interface_property GPU_SLAVE readWaitTime 1
set_interface_property GPU_SLAVE setupTime 0
set_interface_property GPU_SLAVE timingUnits Cycles
set_interface_property GPU_SLAVE writeWaitTime 0
set_interface_property GPU_SLAVE ENABLED true
set_interface_property GPU_SLAVE EXPORT_OF ""
set_interface_property GPU_SLAVE PORT_NAME_MAP ""
set_interface_property GPU_SLAVE CMSIS_SVD_VARIABLES ""
set_interface_property GPU_SLAVE SVD_ADDRESS_GROUP ""

add_interface_port GPU_SLAVE GPU_SLAVE_read read Input 1
add_interface_port GPU_SLAVE GPU_SLAVE_readdata readdata Output 32
add_interface_port GPU_SLAVE GPU_SLAVE_write write Input 1
add_interface_port GPU_SLAVE GPU_SLAVE_writedata writedata Input 32
add_interface_port GPU_SLAVE GPU_SLAVE_address address Input 11
add_interface_port GPU_SLAVE GPU_SLAVE_chipselect chipselect Input 1
set_interface_assignment GPU_SLAVE embeddedsw.configuration.isFlash 0
set_interface_assignment GPU_SLAVE embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment GPU_SLAVE embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment GPU_SLAVE embeddedsw.configuration.isPrintableDevice 0


# 
# connection point GPU_MASTER
# 
add_interface GPU_MASTER avalon start
set_interface_property GPU_MASTER addressUnits SYMBOLS
set_interface_property GPU_MASTER associatedClock CLK
set_interface_property GPU_MASTER associatedReset RESET
set_interface_property GPU_MASTER bitsPerSymbol 8
set_interface_property GPU_MASTER burstOnBurstBoundariesOnly false
set_interface_property GPU_MASTER burstcountUnits WORDS
set_interface_property GPU_MASTER doStreamReads false
set_interface_property GPU_MASTER doStreamWrites false
set_interface_property GPU_MASTER holdTime 0
set_interface_property GPU_MASTER linewrapBursts false
set_interface_property GPU_MASTER maximumPendingReadTransactions 0
set_interface_property GPU_MASTER maximumPendingWriteTransactions 0
set_interface_property GPU_MASTER readLatency 0
set_interface_property GPU_MASTER readWaitTime 1
set_interface_property GPU_MASTER setupTime 0
set_interface_property GPU_MASTER timingUnits Cycles
set_interface_property GPU_MASTER writeWaitTime 0
set_interface_property GPU_MASTER ENABLED true
set_interface_property GPU_MASTER EXPORT_OF ""
set_interface_property GPU_MASTER PORT_NAME_MAP ""
set_interface_property GPU_MASTER CMSIS_SVD_VARIABLES ""
set_interface_property GPU_MASTER SVD_ADDRESS_GROUP ""

add_interface_port GPU_MASTER GPU_MASTER_address address Output 32
add_interface_port GPU_MASTER GPU_MASTER_read read Output 1
add_interface_port GPU_MASTER GPU_MASTER_readdata readdata Input 32
add_interface_port GPU_MASTER GPU_MASTER_chipselect chipselect Output 1
add_interface_port GPU_MASTER GPU_MASTER_readdatavalid readdatavalid Input 1
add_interface_port GPU_MASTER GPU_MASTER_writeresponsevalid writeresponsevalid Input 1
add_interface_port GPU_MASTER GPU_MASTER_write write Output 1
add_interface_port GPU_MASTER GPU_MASTER_writedata writedata Output 32
add_interface_port GPU_MASTER GPU_MASTER_response response Input 2
add_interface_port GPU_MASTER GPU_MASTER_waitrequest waitrequest Input 1

