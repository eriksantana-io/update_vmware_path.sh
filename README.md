## Fix for incorrect VMWare Fusion environment PATH file

This script provides a solution for the error `env: Fusion.app/Contents/Public: No such file or directory` caused by an incorrect VMWare Fusion environment PATH file located at `/etc/paths.d/com.vmware.fusion.public`. This error occurs due to the absence of an escape for the space character in the file path as referenced in this Stack Overflow forum post: https://stackoverflow.com/questions/49722724/getting-no-such-file-or-directory-when-executing-any-terminal-command-caused

## Description

The script automates the process of modifying the specified text line inside the `/etc/paths.d/com.vmware.fusion.public` file to fix the error. It replaces the old path `/Applications/VMware Fusion.app/Contents/Public` with the corrected path `/Applications/VMware\ Fusion.app/Contents/Public`, ensuring proper escaping of spaces.

## Installation

1. **Clone the Repository**: Clone this repository to your local machine or download the script directly.

```bash
git clone https://github.com/your-username/vmware-fusion-path-fix.git
```

2. **Make the Script Executable**: Navigate to the script's directory and make it executable.

``` bash
cd vmware-fusion-path-fix
chmod +x update_vmware_path.sh
Run the Script: Execute the script with sudo to update the VMWare Fusion environment PATH file.
```

3. **Run the Script**: Execute the script with sudo to update the VMWare Fusion environment PATH file.
``` bash
sudo ./update_vmware_path.sh
You may be prompted to enter your password to run the script with superuser privileges.
```

4. **Verify the Update**: After running the script, the PATH file should be corrected, and you should see the message "Path updated successfully."

### Important Notes
This script creates a backup of the original PATH file with a .bak extension in your home folder before making changes. If you encounter any issues, you can restore the backup file.
Always use caution when modifying system files with sudo. Incorrect changes can potentially disrupt your system.
Make sure to have appropriate permissions to run the script with sudo.

License
This project is licensed under the MIT License. See the LICENSE file for details.
