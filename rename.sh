#!/bin/bash

# Loop through all files with the extension .new
for file in *.new; do
    # Check if the file exists
    if [ -e "$file" ]; then
        # Rename the file by replacing .new with .txt
        new_name="${file%.new}.txt"
        mv "$file" "$new_name"
        echo "Renamed $file to $new_name"
    else
        echo "File $file does not exist."
    fi
done

echo "Done..."
echo
echo This script was made by Microsoft Copilot, bye!
