# Parse-USB.ps1
param(
    [string]$SystemHive,
    [string]$OutputPath = ".\USBOutput.txt"
)

$paths = @(
    "CurrentControlSet\Enum\USBSTOR",
    "CurrentControlSet\Enum\USB",
    "MountedDevices",
    "CurrentControlSet\Enum\STORAGE\Volume"
)

foreach ($p in $paths) {
    reg.exe query "$SystemHive\$p" /s >> $OutputPath 2>&1
}
