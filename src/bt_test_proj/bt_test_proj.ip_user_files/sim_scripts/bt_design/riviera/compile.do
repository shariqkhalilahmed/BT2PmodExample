vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v9_6_1
vlib riviera/lmb_v10_v3_0_8
vlib riviera/lmb_bram_if_cntlr_v4_0_9
vlib riviera/blk_mem_gen_v8_3_3
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_7
vlib riviera/mdm_v3_2_6
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_9
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_13
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_11
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_9
vlib riviera/fifo_generator_v13_1_1
vlib riviera/axi_data_fifo_v2_1_8
vlib riviera/axi_crossbar_v2_1_10

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v9_6_1 riviera/microblaze_v9_6_1
vmap lmb_v10_v3_0_8 riviera/lmb_v10_v3_0_8
vmap lmb_bram_if_cntlr_v4_0_9 riviera/lmb_bram_if_cntlr_v4_0_9
vmap blk_mem_gen_v8_3_3 riviera/blk_mem_gen_v8_3_3
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_7 riviera/axi_intc_v4_1_7
vmap mdm_v3_2_6 riviera/mdm_v3_2_6
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_9 riviera/proc_sys_reset_v5_0_9
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_13 riviera/axi_uartlite_v2_0_13
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_11 riviera/axi_gpio_v2_0_11
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_9 riviera/axi_register_slice_v2_1_9
vmap fifo_generator_v13_1_1 riviera/fifo_generator_v13_1_1
vmap axi_data_fifo_v2_1_8 riviera/axi_data_fifo_v2_1_8
vmap axi_crossbar_v2_1_10 riviera/axi_crossbar_v2_1_10

vlog -work xil_defaultlib -v2k5 -sv "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v9_6_1 -93 \
"../../../ipstatic/microblaze_v9_6/hdl/microblaze_v9_6_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bt_design/ip/bt_design_microblaze_0_0/sim/bt_design_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_8 -93 \
"../../../ipstatic/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bt_design/ip/bt_design_dlmb_v10_0/sim/bt_design_dlmb_v10_0.vhd" \
"../../../bd/bt_design/ip/bt_design_ilmb_v10_0/sim/bt_design_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_9 -93 \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_funcs.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_primitives.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parityenable.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/axi_interface.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_mux.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bt_design/ip/bt_design_dlmb_bram_if_cntlr_0/sim/bt_design_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/bt_design/ip/bt_design_ilmb_bram_if_cntlr_0/sim/bt_design_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_3_3 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/bt_design/ip/bt_design_lmb_bram_0/sim/bt_design_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work axi_intc_v4_1_7 -93 \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/double_synchronizer.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/shared_ram_ivar.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/pulse_synchronizer.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/intc_core.vhd" \
"../../../ipstatic/axi_intc_v4_1/hdl/src/vhdl/axi_intc.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bt_design/ip/bt_design_microblaze_0_axi_intc_0/sim/bt_design_microblaze_0_axi_intc_0.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/bt_design/ipshared/xilinx.com/xlconcat_v2_1/xlconcat.v" \
"../../../bd/bt_design/ip/bt_design_microblaze_0_xlconcat_0/sim/bt_design_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_6 -93 \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_primitives.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/arbiter.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/bus_master.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/jtag_control.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_core.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bt_design/ip/bt_design_mdm_1_0/sim/bt_design_mdm_1_0.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/bt_design/ip/bt_design_clk_wiz_1_0/bt_design_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/bt_design/ip/bt_design_clk_wiz_1_0/bt_design_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_9 -93 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bt_design/ip/bt_design_rst_clk_wiz_1_100M_0/sim/bt_design_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../ipstatic/lib_pkg_v1_0/hdl/src/vhdl/lib_pkg.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/cntr_incr_decr_addn_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/dynshreg_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_rbu_f.vhd" \
"../../../ipstatic/lib_srl_fifo_v1_0/hdl/src/vhdl/srl_fifo_f.vhd" \

vcom -work axi_uartlite_v2_0_13 -93 \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/dynshreg_i_f.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/uartlite_tx.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/uartlite_rx.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/baudrate.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/uartlite_core.vhd" \
"../../../ipstatic/axi_uartlite_v2_0/hdl/src/vhdl/axi_uartlite.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bt_design/ip/bt_design_axi_uartlite_0_0/sim/bt_design_axi_uartlite_0_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_gpio_v2_0_11 -93 \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/gpio_core.vhd" \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/axi_gpio.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/bt_design/ip/bt_design_axi_gpio_0_0/sim/bt_design_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_9 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/fifo_generator_v13_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_1 -93 \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_8 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_10 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/bt_design/ip/bt_design_xbar_0/sim/bt_design_xbar_0.v" \
"../../../bd/bt_design/hdl/bt_design.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/bt_design/ip/bt_design_axi_uartlite_1_0/sim/bt_design_axi_uartlite_1_0.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ila_v6_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/ltlib_v1_0/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbm_v1_1/hdl/verilog" "+incdir+../../../../bt_test_proj.srcs/sources_1/bd/bt_design/ipshared/xilinx.com/xsdbs_v1_0/hdl/verilog" \
"../../../bd/bt_design/ip/bt_design_ila_0_0/sim/bt_design_ila_0_0.v" \

vlog -work xil_defaultlib "glbl.v"

