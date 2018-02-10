@echo off
call clean.bat

ccpsx -O3 -Xo$80010000 main.c -omain.cpe,main.sym,mem.map || goto :error
cpe2x /ca main.cpe || goto :error

buildcd -l -itutdraw.IMG tutdraw.CTI || goto :error
stripisotoo tutdraw.IMG tutdraw.ISO || goto :error
psxlicense /us /i tutdraw.ISO || goto :error
"C:\Program Files\WinSCP\WinSCP.com" /script=upload.ftp || goto :error

goto :EOF
:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%