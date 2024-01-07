# OpenH264-RealTime-steg

## Implementation for Real-Time Motion Estimation Based Video Steganography with Preserved Consistency and Local Optimality


## License
Copyright (c) 2023 Hassan Mohamed.

All rights reserved.

This software should be used, reproduced, and modified only for informational and nonprofit purposes.

### This repo contains the complete description of the experimental results in the paper "Real-Time Motion Estimation Based Video Steganography with Preserved Consistency and Local Optimality" (under review).

## The structure of the repo is:
### 1. Demo:
1. **bin**: binary files for the original OpenH264 and the modified version for steganography with the configuration files. Must run from the "ours" directory.
2. **ours**: To run the binaries in the directory "bin", put the YUV files in the directory "YUV" with resolutions (CIF, 720p, 1080p) within the matching sub-directories (YUV/cif, YUV/720p, YUV/1080). Then, run the Linux-based script "encod2.sh".
3. **coh2011**: Matlab implementation of the coherency-based steganalyzer in "**A video steganalytic algorithm against motion-vector-based steganography**". The main file is ***Main_Linux6.m***.
4. **MotionActivity2001**: Matlab implementation of the Motion Activity Index (MAI) in "**MPEG-7 visual motion descriptors**". To run the experiments, refer to the included ReadMe file.
5. **MVC12**: The Motion-Vector-Consistency Steganalyzer in "**Universal Detection of Video Steganography in Multiple Domains Based on the Consistency of Motion Vectors**". To run the experiment, put the videos under test in the directory ***vid***, then run the Windows-based batch file ***mvc12.bat***. The resultant features will be in the directory ***feat***.
6. **MVMPLO**: An implementation of the MVMPLO method in "**Motion vector-based video steganography with preserved local optimality**". To run the experiment, put the videos under test (in y4m format) in the directory ***vid*** and then run the Windows-based batch file ***run.bat***. The resultant H264 videos will be in the ***264*** directory. This implementation is obtained from "https://github.com/zhanghong863/Feature-Extractors-for-Video-Steganalysis".
7. **NPELO**: The Local-Optimality Steganalyzer in "**A Steganalytic Approach to Detect Motion Vector Modification Using Near-Perfect Estimation for Local Optimality**". To run the experiment, put the videos under test in the directory ***vid*** and then run the Windows-based batch file ***npelo.bat***. The resultant features will be in the directory ***feat***.
8. **x264_o**: the original X264 video codec implementation. To run the experiment, put the videos under test (in Y4M format) in the directory ***vid*** and then run the Windows-based batch file ***run.bat***. The resultant H264 videos will be in the ***264*** directory.
### 2. Features:
The resultant features in Table 3 in "**Real-Time Motion Estimation Based Video Steganography with Preserved Consistency and Local Optimality**". This directory contains the extracted features of our experiments.

## Acknowledgement:
The implementation of MVMPLO and MVC12 are provided by Dr. Liming Zhai, the author of "Universal Detection of Video Steganography in Multiple Domains Based on the Consistency of Motion Vectors".

