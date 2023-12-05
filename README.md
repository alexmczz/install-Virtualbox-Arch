# Arch Linux VirtualBox Installation Script

This script automates the installation of VirtualBox on an Arch Linux system. It installs the VirtualBox package from the official repositories, sets up the required kernel modules, and performs additional configurations.

## Usage

1. Open a terminal.

2. Make the script executable:

    ```bash
    chmod +x install_virtual_box.sh
    ```

3. Run the script:

    ```bash
    ./install_virtual_box.sh
    ```

## Notes


- If you choose to install the VirtualBox Extension Pack, uncomment the corresponding lines in the script and replace `<version>` with the actual version number of the extension pack you downloaded.

- After running the script, restart your system or log out and log back in for the changes to take effect.

- For more information about VirtualBox, visit the [VirtualBox website](https://www.virtualbox.org/).
