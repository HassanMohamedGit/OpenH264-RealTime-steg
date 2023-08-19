
for %%i in ( vid\* ) do (
    start /B  MVC12  -m 1  -w 6  -i %%i  -f feat\%%~ni.100.txt
)

pause

