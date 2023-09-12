import os
import platform
import winreg

# Check the operating system version
current_os = platform.system()
if current_os != "Windows":
    print("This script is only for Windows systems.")
    exit()

# Check the Windows version
if not platform.release().startswith("11"):
    print("This script is only for Windows 11 systems.")
    exit()

# Check for misconfigured services
# (replace with appropriate code)

# Check the firewall rules
# (replace with appropriate code)

# Set the update policy
key = winreg.OpenKey(winreg.HKEY_LOCAL_MACHINE, r"SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate", 0, winreg.KEY_SET_VALUE)
winreg.SetValueEx(key, "ElevateNonAdmins", 0, winreg.REG_DWORD, 0)
winreg.SetValueEx(key, "DeferFeatureUpdates", 0, winreg.REG_DWORD, 1)
winreg.SetValueEx(key, "DeferFeatureUpdatesPeriodInDays", 0, winreg.REG_DWORD, 365)



