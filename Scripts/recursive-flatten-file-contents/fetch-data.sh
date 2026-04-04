#!/bin/bash

# 1. Check if a path parameter was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <path-to-directory>"
    exit 1
fi

TARGET_DIR="$1"
OUTPUT_FILE="$(pwd)/fetched-data.txt"

# 2. Clear or create the output file in the current working directory
: > "$OUTPUT_FILE"

echo "Scaning files in '$TARGET_DIR'..."

# 3. Recursively find all files (-type f)
# -print0 and IFS= read -r -d '' handles filenames with spaces/newlines correctly
find "$TARGET_DIR" -type f -print0 | while IFS= read -r -d '' file; do
    
    # Optional: Check if file is binary. 
    # If it is binary, skip appending content to avoid corrupting the text file.
    if grep -Iq . "$file"; then
        IS_TEXT=true
    else
        # If grep thinks it's binary, we treat it as such.
        # However, empty files are treated as non-match by grep -q, so check size.
        if [ ! -s "$file" ]; then
            IS_TEXT=true # Empty files are safe to "cat"
        else
            IS_TEXT=false
        fi
    fi

    if [ "$IS_TEXT" = true ]; then
        # Extract file extension for the markdown block (e.g., 'py', 'js')
        filename=$(basename -- "$file")
        extension="${filename##*.}"
        
        # If the file has no extension, leave the language tag empty
        if [ "$filename" = "$extension" ]; then
            extension=""
        fi

        # --- Append to Output File ---
        
        # 1. Full file path
        echo "$file" >> "$OUTPUT_FILE"
        
        # 2. Opening Code block with extension
        echo '```'"$extension" >> "$OUTPUT_FILE"
        
        # 3. File Content
        cat "$file" >> "$OUTPUT_FILE"
        
        # Ensure there is a newline before closing the block
        # (Files without a trailing newline can break the markdown formatting)
        echo "" >> "$OUTPUT_FILE"
        
        # 4. Closing Code block
        echo '```' >> "$OUTPUT_FILE"
        
        # 5. Separator
        echo "-----------------" >> "$OUTPUT_FILE"
    fi
done

echo "Process complete. Data saved to: $OUTPUT_FILE"
