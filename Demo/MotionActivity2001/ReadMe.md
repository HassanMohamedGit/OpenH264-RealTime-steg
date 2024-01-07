### Contents:
- **vid/**:  Videos of the expirement.
- **MPEG-7 Visual Motion Descriptors.pdf**: Reference IEEE paper for Motion-Activity-Index (MAI).
- **extract_mvs**: ELF-64 Linux-based statically-linked (No dependency needed) executable file to extract the Motion-vectors from video files. The source code was obtained from the FFMPEG library's examples.
- **Extract_mvs.sh**: Bash script to excute ***extract_mvs*** for all video files in the folder ***vid/***..
- **activity/**: Folder contains MAI for each video file in ***vid/***.
- **log/**: Folder contains logs for each video file in ***vid/***.
- **Main.m**: Matlab M-file to run the experiment.
- **Results.txt**: Matlab's debug output.
- **Results.ods**: Spreadsheet file contains the results extracted from ***Results.txt*** and organized.

### How to use:
 - All video files under test must be placed in the folder ***vid/***.
 - From the Linux version of Matlab, just run the M-file ***Main.m***. If you have only the Windows version of Matlab, just run the bash script ***Extract_mvs.sh*** under a 64-bit-Linux machine, then run the M-file ***Main.m*** from the Windows-based Matlab.
 - The results of each file will be found in Matlab's debugging console.
 - Use the template spreadsheet ***Results.ods*** to organize and calculate the average MAI per each video file.
