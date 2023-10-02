#!/bin/bash

# Define the old and new paths
old_path="/Applications/VMware Fusion.app/Contents/Public"
new_path="/Applications/VMware\\\ Fusion.app/Contents/Public"

# Check if the file exists
if [ -e "/etc/paths.d/com.vmware.fusion.public" ]; then
    # Use sudo and sed to replace the old path with the new path
    sudo sed -i.bak "s|${old_path}|${new_path}|g" "/etc/paths.d/com.vmware.fusion.public" && sudo mv /etc/paths.d/com.vmware.fusion.public.bak ~

    # Check if sed was successful
    if [ $? -eq 0 ]; then
        echo "Path updated successfully."
    else
        echo "Failed to update path."
    fi
else
    echo "File '/etc/paths.d/com.vmware.fusion.public' does not exist."
fi
