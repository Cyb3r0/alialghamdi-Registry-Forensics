Batch:
  Name: Ali-Forensic-Profile
  Description: Unified forensic extraction for USB, User Activity, Malware, Fraud

Targets:
  - Hive: SYSTEM
    Keys:
      - CurrentControlSet\Enum\USBSTOR
      - CurrentControlSet\Enum\USB
      - MountedDevices
      - CurrentControlSet\Enum\STORAGE\Volume
      - CurrentControlSet\Services
      - CurrentControlSet\Control\Session Manager\AppCompatCache

  - Hive: SOFTWARE
    Keys:
      - Microsoft\Windows\CurrentVersion\Run
      - Microsoft\Windows\CurrentVersion\RunOnce
      - Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store

  - Hive: NTUSER
    Keys:
      - Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist
      - Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs
      - Software\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths
      - Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU
      - Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2

  - Hive: USRCLASS
    Keys:
      - Local Settings\Software\Microsoft\Windows\Shell\BagMRU
      - Local Settings\Software\Microsoft\Windows\Shell\Bags
