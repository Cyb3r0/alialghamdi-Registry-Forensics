# Parse-UserAssist.ps1
param(
    [string]$NTUserHive,
    [string]$OutputPath = ".\UserAssistOutput.txt"
)

$path = "Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist"

reg.exe query "$NTUserHive\$path" /s >> $OutputPath 2>&1
