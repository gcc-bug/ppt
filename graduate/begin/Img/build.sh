#!/bin/bash

image_path="../../Image/"

cd "$image_path"
pwd
if [ -f "build.sh" ]; then
    bash ./build.sh
else
    echo "build.sh not found or not executable"
    exit 1
fi
cd -

for file_type in pdf; do
    for file in "${image_path}"*.$file_type; do
        # Check if file exists to avoid trying to copy non-existing files
        if [ -f "$file" ]; then
            cp "$file" .
            echo "Copied $file"
        fi
    done
done

echo "Copy complete"