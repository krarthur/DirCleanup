# DirCleanup
Simple Windows directory clean-up script developed using PowerShell to be combined with Task Scheduler for automated cleanup (Without the use of third-party bloatware like CCleaner).
Created to clean up junk files that other programs output inside of a folder (such as Temp) and have limited/no implemented capacity to cleanup by themselves.

1. Replace the value in the $directoryPath variable with the path you want to run the cleanup in. 
2. Append .ps1 script to a new task in Task Scheduler with a Schedule trigger (Instructions on doing this: https://blog.netwrix.com/2018/07/03/how-to-automate-powershell-scripts-with-task-scheduler/)

The script can also be simplified further in a one liner batch script:
'del "C:\path\to\directory\*.*" /q /f.'