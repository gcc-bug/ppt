#!/bin/bash
echo "Deleting LaTeX temporary files in all directories and subdirectories..."

# Delete specific LaTeX temporary files in current and all subdirectories
find . -type f \( -name "*.aux" -o -name "*.log" -o -name "*.out" \
                -o -name "*.bbl" -o -name "*.blg" -o -name "*.synctex.gz" \
                -o -name "*.snm" -o -name "*.nav" -o -name "main.run.xml" \
                -o -name "main-blx.bib" -o -name "*.toc" -o -name "*:Zone.Identifier" \) \
                -exec rm -f {} +

echo "Temporary files deleted in all directories and subdirectories."
read -rp "Press any key to continue..." key

