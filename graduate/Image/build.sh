
#!/bin/bash

for file in *.tex
do
  pdflatex "$file" > /dev/null 2>&1
done

echo "Compilation of all LaTeX files complete."

for file in *.png
do
  echo "${file%.png}.pdf"
  convert "$file" "${file%.png}.pdf"
done

for file in *.svg
do
  outputFile="${file%.svg}.pdf"
  echo "Converting $file to $outputFile"
  inkscape "$file" --export-type=pdf --export-filename="$outputFile"
done




echo "Convertion of all png complete."
