write_cfgmem -format mcs -interface spix4 -size 128 \
	-loadbit "up 0x0 arty_top.bit" \
	-loaddata "up 0x00400000 ../../build.fpga/apps/helloworld/slm_files/fpga_header_00400000.bin \
	           up 0x00400020 ../../build.fpga/apps/helloworld/slm_files/fpga_data_00400020.bin \
                   up 0x00401000 ../../build.fpga/apps/helloworld/slm_files/fpga_inst_00401000.bin \
		  " \
	 arty_top.mcs
