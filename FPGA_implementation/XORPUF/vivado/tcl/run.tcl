if { ![info exists ::env(BOARD) ]} {
  set ::env(BOARD) "artyboard"
}

if { ![info exists ::env(XILINX_PART)] } {
  set ::env(XILINX_PART) "xc7a100tcsg324-1"
}

if { ![info exists ::env(XILINX_BOARD)] } {
  set ::env(XILINX_BOARD) "digilentinc.com:arty-a7-100:part0:1.0"
}


set RTL ../src/veriolg
set CONSTRAINT_DIR ./constraints
set DESIGN_NAME "XORPUF"
# create project
create_project ${DESIGN_NAME} . -part $::env(XILINX_PART)

if { [info exists ::env(XILINX_BOARD) ] } {
  set_property board $::env(XILINX_BOARD) [current_project]
}


# set up meaningful errors
#source ../common/messages.tcl

# add fpga_system_top
#add_files -norecurse ../rtl/uart/source/uart.vhd
#add_files -norecurse ../rtl/uart_to_spi.v
add_files -norecurse "${RTL}/picoBlaze6/program.v"
add_files -norecurse "${RTL}/picoBlaze6/uart_rx6.v"
add_files -norecurse "${RTL}/picoBlaze6/uart_tx6.v"
add_files -norecurse "${RTL}/picoBlaze6/kcpsm6.v"
add_files -norecurse "${RTL}/picoBlaze6/puf_controller_6.v"

add_files -norecurse "${RTL}/apuf/sw_dolut.v"
add_files -norecurse "${RTL}/apuf/nandLatch.v"
add_files -norecurse "${RTL}/apuf/switchChain.v"
add_files -norecurse "${RTL}/apuf/apufClassic.v"

add_files -norecurse "${RTL}/xorpuf/xorpuf.v"
add_files -norecurse "${RTL}/apuf/apufClassic_wrapper.v"

add_files -fileset constrs_1 -norecurse "${CONSTRAINT_DIR}/arty-a7-100-APUF-64.xdc"

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

get_property source_mgmt_mode [current_project]
set_property source_mgmt_mode DisplayOnly [current_project]
get_property source_mgmt_mode [current_project]

# save area
set_property strategy Flow_AreaOptimized_High [get_runs synth_1]
synth_design -rtl -name rtl_1

launch_runs synth_1
wait_on_run synth_1
open_run synth_1 -name netlist_1
write_edif -force "${DESIGN_NAME}.edf"

# export hardware design for sdk
write_hwdef -force -file "./${DESIGN_NAME}.hwdef"

# run implementation
source tcl/impl.tcl
## generate the mcs file for arty a7 100T
#write_cfgmem -format mcs -interface spix4 -size 128 -loadbit "up 0x0 arty_top.bit" arty_top.mcs
