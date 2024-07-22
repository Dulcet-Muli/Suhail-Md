#!/bin/bash

# Directory where the files are located
target_directory="lib/Suhail_Baileys"

# File to be excluded
excluded_file="smd"

# Change to the target directory
cd "$target_directory" || exit

# Loop through all files in the directory
for file in *; do
    # Check if the file is not the excluded file
    if [[ "$file" != "$excluded_file" ]]; then
        # Check if it is a file (not a directory)
        if [[ -f "$file" ]]; then
            # Delete the file
            rm "$file"
            echo "Deleted $file"
        fi
    fi
done

echo "All files except '$excluded_file' have been deleted."
