# Extract-Registry-Forensics.ps1
param(
    [string]$HivePath,
    [string]$OutputPath = ".\ForensicOutput"
)

New-Item -ItemType Directory -Force -Path $OutputPath | Out-Null

$keys = @(
    "SYSTEM\CurrentControlSet\Enum\USBSTOR",
    "SYSTEM\CurrentControlSet\Enum\USB",
    "SYSTEM\MountedDevices",
    "SYSTEM\CurrentControlSet\Enum\STORAGE\Volume",
    "SOFTWARE\Microsoft\Windows\CurrentVersion\Run",
    "SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce",
    "SYSTEM\CurrentControlSet\Services",
    "SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache",
    "NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist",
    "NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs",
    "NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths",
    "NTUSER.DAT\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU",
    "USRCLASS.DAT\Local Settings\Software\Microsoft\Windows\Shell\BagMRU"
)

foreach ($key in $keys) {
    reg.exe query "$HivePath\$key" /s >> "$OutputPath\ForensicDump.txt" 2>&1
}
