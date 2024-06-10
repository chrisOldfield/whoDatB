**To update and set WSL 2 as the default version and install graphical Ubuntu, follow these steps:

    Open Command Prompt as an administrator:
        Press Windows key + X.
        Select Command Prompt (Admin) or Windows PowerShell (Admin).

    Update Windows Subsystem for Linux (WSL) to the latest version:
        Enter the following command:

        css

    wsl --update

Set WSL 2 as the default version:

    Enter the following command:

    arduino

    wsl --set-default-version 2

Install the Windows Subsystem for Linux:

    Enter the following command:

    css

    wsl --install

Restart your computer:

    Enter Y to confirm the restart.

Install a graphical Ubuntu distribution (e.g., Ubuntu 20.04):

    Open the Microsoft Store.
    Search for "Ubuntu" and select the desired version (e.g., "Ubuntu 20.04 LTS").
    Click the Install button.

Launch and configure Ubuntu:

    Open the Start menu and locate the installed Ubuntu app.
    Click on it to launch Ubuntu.
    Wait for the installation to complete and create a new user account.
    Set a username and password as prompted.

Install a graphical user interface (GUI) for Ubuntu (e.g., Xfce):

    In the Ubuntu terminal, enter the following command to update the package lists:

    sql

sudo apt update

Then, install the Xfce desktop environment by entering:

    sudo apt install xfce4

Install a Windows X server to enable GUI applications:

    Download and install a Windows X server such as VcXsrv from the following link:
    https://sourceforge.net/projects/vcxsrv/

Configure the X server:

    Launch the installed X server (e.g., VcXsrv) and accept the default settings.
    When prompted, check the box for "Disable access control" to allow connections.
    Keep the X server running in the background.

Configure Ubuntu to use the X server:

    In the Ubuntu terminal, enter the following command to open the ~/.bashrc file:

    bash

nano ~/.bashrc

Add the following lines at the end of the file:

bash

    export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0.0
    export LIBGL_ALWAYS_INDIRECT=1

    Press Ctrl + X to exit, then press Y to save the changes.

Restart Ubuntu:

    Close the Ubuntu terminal window.
    Launch the Ubuntu app again from the Start menu.
    The graphical user interface should now be available.**
