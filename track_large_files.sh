#!/bin/bash

# Define the size threshold in bytes (50MB = 52428800 bytes)
SIZE_THRESHOLD=52428800

# Loop through all files in the current directory (you can modify the path if needed)
for file in *; do
  if [[ -f "$file" ]]; then
    # Get the size of the file in bytes
    FILESIZE=$(stat -f%z "$file")

    # Check if the file size is greater than the threshold
    if [[ $FILESIZE -gt $SIZE_THRESHOLD ]]; then
      echo "File '$file' is larger than 50MB, tracking it with Git LFS..."
      git lfs track "$file"
    else
      echo "File '$file' is smaller than 50MB, no need to track with Git LFS."
    fi
  fi
done

# Save the .gitattributes file after tracking
git add .gitattributes
git commit -m "Updated .gitattributes for large files"
