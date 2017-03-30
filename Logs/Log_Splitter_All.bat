@ECHO OFF
findstr /s "ChatWindow" ConanSandbox*.log >> chat.log
findstr /s "Can't find file" ConanSandbox*.log >> missing.log
findstr /s "Error:" ConanSandbox*.log >> error.log
findstr /s "Network:Warning:" ConanSandbox*.log >> network_warning.log
findstr /s "AI:Warning:" ConanSandbox*.log >> ai_warning.log
findstr /s "SpawnTable:Error" ConanSandbox*.log >> spawntable_error.log
findstr /s "stuck" ConanSandbox*.log >> stuck.log

SETLOCAL
(FOR /f "tokens=1*delims=:" %%a IN (chat.log) DO ECHO(%%b)>chat_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
TYPE chat_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
timeout 1
(FOR /f "tokens=1*delims=:" %%a IN (error.log) DO ECHO(%%b)>error_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
TYPE error_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
timeout 1
(FOR /f "tokens=1*delims=:" %%a IN (missing.log) DO ECHO(%%b)>missing_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
TYPE missing_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
timeout 1
(FOR /f "tokens=1*delims=:" %%a IN (network_warning.log) DO ECHO(%%b)>network_warning_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
TYPE network_warning_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
timeout 1
(FOR /f "tokens=1*delims=:" %%a IN (ai_warning.log) DO ECHO(%%b)>ai_warning_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
TYPE ai_warning_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
timeout 1
(FOR /f "tokens=1*delims=:" %%a IN (spawntable_error.log) DO ECHO(%%b)>spawntable_error_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
TYPE spawntable_error_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
timeout 1
(FOR /f "tokens=1*delims=:" %%a IN (stuck.log) DO ECHO(%%b)>stuck_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
TYPE stuck_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt
timeout 1

del chat.log
del missing.log
del error.log
del network_warning.log
del ai_warning.log
del spawntable_error.log
del stuck.log

GOTO :EOF