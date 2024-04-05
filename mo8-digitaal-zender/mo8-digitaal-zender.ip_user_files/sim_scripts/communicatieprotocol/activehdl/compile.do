transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {D:/_code/Git/Fontys/Jaar_2/mo8-digitaal-zender/mo8-digitaal-zender/mo8-digitaal-zender.cache/compile_simlib/activehdl}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/fifo_generator_v13_2_8
vlib activehdl/xlslice_v1_0_2

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_8 -l xlslice_v1_0_2 \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_8 -l xlslice_v1_0_2 \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/communicatieprotocol/ip/communicatieprotocol_comunication_protocol_0_0/sim/communicatieprotocol_comunication_protocol_0_0.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_8 -l xlslice_v1_0_2 \
"../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  \
"../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_8 -l xlslice_v1_0_2 \
"../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_8 -l xlslice_v1_0_2 \
"../../../bd/communicatieprotocol/ip/communicatieprotocol_fifo_generator_0_0/sim/communicatieprotocol_fifo_generator_0_0.v" \
"../../../bd/communicatieprotocol/ip/communicatieprotocol_clk_wiz_0/communicatieprotocol_clk_wiz_0_clk_wiz.v" \
"../../../bd/communicatieprotocol/ip/communicatieprotocol_clk_wiz_0/communicatieprotocol_clk_wiz_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/communicatieprotocol/sim/communicatieprotocol.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_8 -l xlslice_v1_0_2 \
"../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mo8-digitaal-zender.gen/sources_1/bd/communicatieprotocol/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l fifo_generator_v13_2_8 -l xlslice_v1_0_2 \
"../../../bd/communicatieprotocol/ip/communicatieprotocol_xlslice_0_0/sim/communicatieprotocol_xlslice_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
