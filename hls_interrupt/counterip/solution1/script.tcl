############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project counterip
set_top counterip
add_files ../../ccall/hls/incr_des/incr_des.cpp
add_files ../../ccall/hls/incr_des/incr_des.cpp
add_files ../../ccall/hls/incr_des/incr_des.cpp
open_solution "solution1"
set_part {xczu9eg-ffvb1156-2-i} -tool vivado
create_clock -period 10 -name default
#source "./counterip/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
