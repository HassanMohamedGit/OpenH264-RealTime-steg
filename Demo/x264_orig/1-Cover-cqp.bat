

for %%i in ( *.y4m ) do (

   x264_recom --no-asm --progress --analyse all --qp 25 -o 264\%%~ni_cover.264  vid\%%i 

)

pause
