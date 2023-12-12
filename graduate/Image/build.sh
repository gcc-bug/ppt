
#!/bin/bash

for file in *.tex
do
  pdflatex "$file" > /dev/null 2>&1
done

echo "Compilation of all LaTeX files complete."

for file in *.png
do
  convert "$file" "${file%.png}.pdf"
done

echo "Convertion of all png complete."

for file in *.svg
do
  convert "$file" "${file%.svg}.pdf"
done

echo "Convertion of all png complete."