# Check if system32 path exists
if (Test-Path "C:\Windows\System32") {
    # Create a list of all files to correct
    $filePaths = @(
        "C:\Windows\System32\file1.dll"
        "C:\Windows\System32\file2.dll"
        "C:\Windows\System32\file3.dll"
    )

    # For each file, if it exists but is corrupt, replace it with a correct version
    foreach ($filePath in $filePaths) {
        if (Test-Path $filePath) {
            $integrityCheck = (Get-FileHash -Path $filePath).Hash

            # If file is corrupt, replace it with correct version
            $correctHash = 'put missing file''s SHA1 checksum here' # Get the correct version of the file
            $correctFilePath = 'put correct file location here'

            # Set execution policy to unrestricted so that the script can run
            Set-ExecutionPolicy Unrestricted

            # Get the current recovery image System32 folder
            $sys32FolderPath = "C:\Windows\System32"

            # Get the list of files in the System32 folder
            $fileList = Get-ChildItem -Path $sys32FolderPath -Recurse

            # Iterate through each file in the folder
            foreach ($filePath in $fileList.FullName) {
                # Get the file hash
                $recoveredHash = (Get-FileHash -Path $filePath).Hash

                # If the file is corrupted, replace it with the correct version
                if ($recoveredHash -ne $correctHash) {
                    # Rename corrupted version
                    Rename-Item -Path $filePath -NewName "$filePath.corrupted"

                    # Copy good version
                    Copy-Item -Path "C:\Recovery\System32\fileName.dll" -Destination $filePath

                    # Validate new file
                    $newHash = (Get-FileHash -Path $filePath).Hash
                    if ($newHash -ne $correctHash) {
                        "Corrupted file was not corrected!"
                    }
                }
            }
        }
    }
}
