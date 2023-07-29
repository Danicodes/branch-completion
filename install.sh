#!/usr/bin/env bash
# Check script exists
if [[ ! -e ./branch_complete.sh ]]; then
    echo "File not found: branch_complete.sh"
    exit 1
fi

# Move script to local binaries
echo "Moving complete script to /usr/local/bin/"
if [[ -e /usr/local/bin/branch_complete.sh ]]; then 
    echo "File already exists: /usr/local/bin/branch_complete.sh"
else
    sudo mv ./branch_complete.sh /usr/local/bin/
fi

# Check that bashrc exists before appending to it
src_string="source /usr/local/bin/branch_complete"
if [[ -e ~/.bashrc ]]; then
    if [[ grep -Fxq "${src_string}" ~/.bashrc == 1 ]]; then
        echo "${src_string}" >> ~/.bashrc
    fi
    source ~/.bashrc
fi

echo "Tab complete ready"



