# Parse-Shellbags.ps1
param(
    [string]$UsrClassHive,
    [string]$OutputPath = ".\ShellbagsOutput.txt"
)

$paths = @(
    "Local Settings\Software\Microsoft\Windows\Shell\BagMRU",
    "Local Settings\Software\Microsoft\Windows\Shell\Bags"
)

foreach ($p in $paths) {
    reg.exe query "$UsrClassHive\$p" /s >> $OutputPath 2>&1
}
