############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FinalOF
set_top optical_flow
add_files FinalOF/imageLib/Convert.cpp
add_files FinalOF/imageLib/Convert.h
add_files FinalOF/imageLib/Convolve.cpp
add_files src/optical_flow/optical_flow.cpp
add_files src/optical_flow/optical_flow.h
add_files src/imageLib/Convolve.h
add_files src/imageLib/Copyright.h
add_files src/imageLib/Error.h
add_files src/imageLib/Image.cpp
add_files src/imageLib/Image.h
add_files src/imageLib/ImageIO.cpp
add_files src/imageLib/ImageIO.h
add_files src/imageLib/README.txt
add_files src/imageLib/RefCntMem.cpp
add_files src/imageLib/RefCntMem.h
add_files src/imageLib/flowIO.cpp
add_files src/imageLib/flowIO.h
add_files src/imageLib/imageLib.h
add_files src/host/check_result.cpp
add_files src/host/check_result.h
add_files src/host/typedefs.h
add_files src/host/utils.cpp
add_files src/host/utils.h
add_files -tb src/host/optical_flow_host.cpp
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_sdx -optimization_level none -target none
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2
#source "./FinalOF/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
