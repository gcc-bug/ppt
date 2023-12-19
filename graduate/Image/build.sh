
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
  echo "${file%.svg}.pdf"
  convert "$file" "${file%.svg}.pdf"
done

echo "Convertion of all png complete."