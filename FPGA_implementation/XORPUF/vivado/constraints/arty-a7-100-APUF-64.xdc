
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk }];

## USB-UART Interface
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { tx }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { rx }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in

# APUF 0

## Important: BEL must be set before LOC to avoid conflict
set_property BEL A6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[0].SW/SW"]
set_property BEL B6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[1].SW/SW"]
set_property BEL C6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[2].SW/SW"]
set_property BEL D6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[3].SW/SW"]

set_property LOC SLICE_X4Y121 [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[0].SW/SW"]
set_property LOC SLICE_X4Y121 [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[1].SW/SW"]
set_property LOC SLICE_X4Y121 [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[2].SW/SW"]
set_property LOC SLICE_X4Y121 [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[3].SW/SW"]


set_property BEL A6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[4].SW/SW"]

#set_property LOC SLICE_X14Y185 [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[5].SW/SW"]
set_property BEL B6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[5].SW/SW"]

#set_property LOC SLICE_X14Y185 [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[6].SW/SW"]
set_property BEL C6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[6].SW/SW"]

#set_property LOC SLICE_X14Y185 [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[7].SW/SW"]
set_property BEL D6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[7].SW/SW"]
set_property LOC SLICE_X4Y122 [get_cells {"XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[4].SW/SW" \
	     	 	      		  "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[5].SW/SW" \
					  "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[6].SW/SW" \
					  "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[7].SW/SW"}]

set_property BEL A6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[8].SW/SW"]
set_property BEL B6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[9].SW/SW"]
set_property BEL C6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[10].SW/SW"]
set_property BEL D6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[11].SW/SW"]

set_property LOC SLICE_X14Y123 [get_cells {"XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[8].SW/SW" \
	     	 	       		   "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[9].SW/SW" \
					   "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[10].SW/SW" \
					   "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[11].SW/SW"}]

set_property BEL A6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[12].SW/SW"]
set_property BEL B6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[13].SW/SW"]
set_property BEL C6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[14].SW/SW"]
set_property BEL D6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[15].SW/SW"]

set_property LOC SLICE_X4Y124 [get_cells {"XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[12].SW/SW" \
	     	 	      		  "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[13].SW/SW" \
					  "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[14].SW/SW" \
					  "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[15].SW/SW"}]

set_property BEL A6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[16].SW/SW"]
set_property BEL B6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[17].SW/SW"]
set_property BEL C6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[18].SW/SW"]
set_property BEL D6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[19].SW/SW"]

set_property LOC SLICE_X4Y125 [get_cells {"XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[16].SW/SW" \
	     	 	      		  "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[17].SW/SW" \
					  "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[18].SW/SW" \
					  "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[19].SW/SW"}]

set_property BEL A6LUT [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[20].SW/SW"]
set_property LOC SLICE_X4Y126 [get_cells "XAPUF/PUFList[0].APUF/SWITCH_CHAIN/STAGE[20].SW/SW"]

set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {XAPUF/PUFList[0].APUF/ARBITER/q}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {XAPUF/PUFList[1].APUF/ARBITER/q}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {XAPUF/PUFList[2].APUF/ARBITER/q}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {XAPUF/PUFList[3].APUF/ARBITER/q}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {XAPUF/PUFList[4].APUF/ARBITER/q}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {XAPUF/PUFList[5].APUF/ARBITER/q}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {XAPUF/PUFList[6].APUF/ARBITER/q}]
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets {XAPUF/PUFList[7].APUF/ARBITER/q}]
