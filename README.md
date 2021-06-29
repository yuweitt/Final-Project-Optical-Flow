# Final-Project-Optical-Flow

Team7 HLS Final Project  

## Major Optimization
* Streaming dataflow optimization 
* Pipeline Optimization
* Data Pack
* HLS Dataflow, which allowing functions and loops to overlap in their operation, increasing the concurrency of the RTL implementation.


## Folder Structure

| -- README.md		# overview of the project
| -- build/		    # build scripts
| -- docs/			# Powerpoint of this project
| -- src/			# Source files
|    | -- original/		
|          | --  README.md   	
|    | -- host/		# host code
|    | -- kernel_opt1/	# kernel code with optimization opt1 – note: use in-line pragma
|-- data/			
|    | -- README.md	
|    | -- dataset_1/		# dataset_1
|    | -- dataset_2/		# dataset_2
| -- impl_result/			# HLS synth report
| -- LICENSE		# License fiel, we use MIT License (refer to last page of the ppt)


## Build Step

Environment: Vivado HLS 2019.2 