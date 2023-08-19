
for %%i in ( vid\* ) do (
   start /B extractor.exe -s -t 12 -i %%i -o feat\%%~ni.txt
)

pause
