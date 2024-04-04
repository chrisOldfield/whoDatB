# whoDatb

## Description

AdminLit is a collection of automation scripts designed to streamline the setup of various Windows security features and Virtual Box VMs. These scripts are intended to facilitate learning and testing of various technologies.

## Usage

Follow these steps to use AdminLit:

### Windows

1. **Open the Command Line**: Open your command line interface. This could be Command Prompt or PowerShell.

2. **Navigate to the Script Folder**: Use the `cd` command to change directories to the folder containing the scripts you wish to run. For example, if you want to run a script from the `windowsAdmin` folder, you would type:

    For Command Prompt:
        ```cmd
        cd path\to\windowsAdmin
        ```

        For PowerShell:
        ```powershell
        Set-Location -Path path\to\windowsAdmin
        ```

    1. **Run the Script**: Run the desired script. This will execute the script in your current shell.

        For Command Prompt:

        cmd
        scriptname.bat

        For PowerShell:

        powershell
        ./scriptname.ps1

    2. **Interact with the Script**: Some scripts will prompt you for input to customize the setup process. When prompted, type your input and press Enter. For example, a script might ask you if you want to continue to the next script. You would type `yes` or `no` and then press Enter.

    3. **Repeat as Needed**: If you want to run another script, repeat steps 2-4.

### Linux

    1. **Open the Terminal**: Open your Terminal.

    2. **Navigate to the Script Folder**: Use the `cd` command to change directories to the folder containing the scripts you wish to run. For example, if you want to run a script from the `linuxAdmin` folder, you would type:

        ```shell
        cd path/to/linuxAdmin
        ```

    3. **Run the Script**: Run the desired script using the command `bash scriptname.sh`, replacing `scriptname.sh` with the name of the script you want to run. This will execute the script in your current shell.

        ```shell
        bash scriptname.sh
        ```

    4. **Interact with the Script**: Some scripts will prompt you for input to customize the setup process. When prompted, type your input and press Enter. For example, a script might ask you if you want to continue to the next script. You would type `yes` or `no` and then press Enter.

    5. **Repeat as Needed**: If you want to run another script, repeat steps 2-4.

Remember to always review a script to understand what it does before running it.

## Scripts

### linuxAdmin

Scripts in this folder automate tasks related to Linux administration. They can set up specific configurations, install packages, and more.

### windowsAdmin

Scripts in this folder automate tasks related to Windows administration. They can enable or disable security features, set up Virtual Box VMs, and more.

### sysDuck

Scripts in this folder automate tasks related to system diagnostics. They can check system health, generate reports, and more.

### miscTools

Scripts in this folder provide miscellaneous tools. They can perform a variety of tasks not covered by the other folders.

## Note

Please ensure you have the necessary permissions to run these scripts on your system. Always review a script to understand what it does before running it.
