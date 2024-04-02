# Prompt the user to choose the folder
Write-Host "Which folder of scripts do you want to run?"
Write-Host "1. linuxAdmin"
Write-Host "2. windowsAdmin"
Write-Host "3. sysDuck"
Write-Host "4. miscTools"
$choice = Read-Host "Enter your choice (1, 2, 3 or 4): "

# Determine the folder based on the user's choice
$folder = ""
switch ($choice) {
    1 { $folder = ".\linuxAdmin" }   # Set folder to ".\linuxAdmin" if choice is 1
    2 { $folder = ".\windowsAdmin" } # Set folder to ".\windowsAdmin" if choice is 2
    3 { $folder = ".\sysDuck" }      # Set folder to ".\sysDuck" if choice is 3
    4 { $folder = ".\miscTools" }    # Set folder to ".\miscTools" if choice is 4
    default { Write-Host "Invalid choice. Exiting."; exit } # Exit if choice is not 1, 2, 3, or 4
}

# Get all PowerShell scripts in the chosen folder
$scripts = Get-ChildItem -Path $folder -Filter "*.ps1" -Recurse

# Loop through each script
foreach ($script in $scripts) {
    Write-Host "Running $($script.FullName)..."
    & $script.FullName

    # Prompt the user to continue or stop
    while ($true) {
        $yn = Read-Host "Do you wish to continue to the next script? (yes/no)"
        switch ($yn.ToLower()) {
            "yes", "y" { break } # Break the loop if user answers yes
            "no", "n" { exit }  # Exit the script if user answers no
            default { Write-Host "Please answer yes or no." } # Prompt again if user gives invalid input
        }
    }
}

Write-Host "All scripts completed."
