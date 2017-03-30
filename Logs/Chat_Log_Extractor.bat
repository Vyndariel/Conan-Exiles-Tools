@ECHO OFF
findstr /s "ChatWindow" ConanSandbox*.log >> chat.log

SETLOCAL
(FOR /f "tokens=1*delims=:" %%a IN (chat.log) DO ECHO(%%b)>chat_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
TYPE chat_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
timeout 1

del chat.log
GOTO :EOF