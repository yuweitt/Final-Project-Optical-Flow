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
|
|-- data/			  
|    | -- README.md	  
|    | -- dataset_1/		# dataset_1  
|    | -- dataset_2/		# dataset_2  
|    | -- MP4-video-to-PPM-batch-converter/
|
| -- impl_result/			# HLS synth report  
| -- LICENSE		# License fiel, we use MIT License (refer to last page of the ppt)  


## How to produce your own Dataset ???
Current kernel take five consecutive frames as input. To test optical flow on your own video, you'll have to convert mp4 to ppm manually.

1. Convert mp4 to ppm  
We refer to this github page [MP4-video-to-JPG-batch-converter](https://github.com/jasonmayes/MP4-video-to-JPG-batch-converter)  
Shell script is in [data/MP4-video-to-PPM-batch-converter](https://github.com/yuweitt/Final-Project-Optical-Flow/tree/main/data/MP4-video-to-PPM-batch-converter)

2. Conver flo to mp4 or png  
We refer to this github page [flowiz](https://github.com/georgegach/flowiz)   
  
    * Install flowiz  
`$pip install flowiz -U`  
    * FLO Conversion  
    `demo/png` is output dir of png, and `demo/mp4` is output dir of mp4 file.  
`$python -m flowiz demo/flo/*.flo -o demo/png --videodir demo/mp4`

If needed, resize your image with opencv to reach higher frame rate.

## Build Step
Build new HLS project with provided source file and tcl script.  
Environment: Vivado HLS 2019.2 


## Result Demo

* Input Image (With five consecutive Frames)
![Demo](data/dataset_1/frame1.png)  

* Output Image
![Demo](docs/demo.png)  

Demo Vido is available on [here](https://drive.google.com/drive/u/0/folders/1aZEH42efPpHFc-OHz4QsEv5FFpby9B18).