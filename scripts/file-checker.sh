#!/bin/bash

# Check if the user passed an argument
if [[ -z "$1" ]]; then
    echo "Usage: $0 <filename_or_directory>"
    exit 1
fi

TARGET="$1"

# Check if it's a directory
if [[ -d "$TARGET" ]]; then
    echo "📁 '$TARGET' is a directory that exists!"
    echo "Contents of $TARGET:"
    ls -F "$TARGET" | head -n 5
    
# Check if it's a regular file
elif [[ -f "$TARGET" ]]; then
    echo "📄 '$TARGET' is a file that exists!"
    echo "File size details:"
    ls -lh "$TARGET"
    
# If it doesn't exist at all
else
    echo "❌ Error: '$TARGET' does not exist."
    exit 2
fi
