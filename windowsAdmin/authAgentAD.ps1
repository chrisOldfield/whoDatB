# PowerShell command to find the version of the Azure AD Password Protection DC Agent:

(Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\AzureADPasswordProtection" -Name "Version").Version
