@echo off
::chcp is UTF-8 Change  command
@chcp 65001 1> NUL 2> NUL

for /L %%i in (1,1,3) do (
echo msgbox "MessageBox%%i" > %tmp%\tmp.vbs
cscript /nologo %tmp%\tmp.vbs
timeout 1 > nul
)

echo "끝났습니다"
pause > nul

