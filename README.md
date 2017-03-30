# Conan-Exiles-Tools

Here you can find some helpful batch-scripts to run against your conan exiles dedicated server-files.

## Chat Log Extraction

In the directory Logs you'll find the Chat_Log_Extractor.bat
Simply copy this file into your log-directory (\ConanSandbox\Saved\Logs) and execute the batch

This batch will extract all chats, including local chats, as well as clan-chats into a seperate file called chat_[DATE].txt

## Strip all information from logs

In the directory Logs you'll find the Log_Splitter_All.bat
Simply copy this file into your log-directory (\ConanSandbox\Saved\Logs) and execute the batch

This batch will extract all chats, including local chats, as well as clan-chats plus references to missing files, errors, network warnings, AI warnings, Spawntable erros, as well as "stucked" NPCs into seperate files and will add the current date as file-prefix.