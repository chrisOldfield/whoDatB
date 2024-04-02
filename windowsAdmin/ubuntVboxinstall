# Open a text editor and create a new file called install-ubuntu-virtualbox.ps1.
# Copy and paste the following PowerShell script into the file: install-ubuntu-virtualbox.ps1
#Replace https://YOUR_UBUNTU_APPLIANCE_DOWNLOAD_URL with the direct download URL for the Ubuntu appliance in OVA format. You can get the URL from the official Ubuntu website or a trusted source. Also, replace YOUR_EXPECTED_SHA256_CHECKSUM with the correct SHA256 checksum for the downloaded file.
#Save the script and close the text editor.
#Run the script:
#Open a PowerShell terminal with administrative privileges.
#Navigate to the directory where you saved the script.
#Run the script with the command: .\install-ubuntu-virtualbox.ps1
#The script will download the Ubuntu appliance, calculate the SHA256 checksum, and compare it with the expected checksum. 
#If they match, the script will import the appliance into VirtualBox. If there's a mismatch, 
#the script will display an error message and won't import the appliance.

# Variables
$downloadUrl = "https://YOUR_UBUNTU_APPLIANCE_DOWNLOAD_URL"
$fileName = "ubuntu_appliance.ova"
$expectedSha256 = "YOUR_EXPECTED_SHA256_CHECKSUM"

# Download the Ubuntu appliance
Write-Host "Downloading Ubuntu appliance..."
Invoke-WebRequest -Uri $downloadUrl -OutFile $fileName

# Calculate the SHA256 checksum
Write-Host "Calculating SHA256 checksum..."
$sha256 = Get-FileHash -Algorithm SHA256 -Path $fileName

# Check if the calculated checksum matches the expected checksum
if ($sha256.Hash -eq $expectedSha256) {
    Write-Host "Checksum verified. Importing the appliance into VirtualBox..."

    # Import the appliance into VirtualBox
    & 'C:\Program Files\Oracle\VirtualBox\VBoxManage.exe' import $fileName

    Write-Host "Import completed successfully."
} else {
    Write-Host "Error: Checksum mismatch. Download may be corrupted or tampered with."
    Write-Host "Calculated: $($sha256.Hash)"
    Write-Host "Expected: $expectedSha256"
}
