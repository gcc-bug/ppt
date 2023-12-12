
#!/bin/bash

for file in ../../Image/*.tex
do
  pdflatex "$file"
done
echo "Compilation of all LaTeX files complete."

for file in ../../Image/*.png
do
  convert "$file" "${file%.png}.pdf"
  cp "${file%.png}.pdf" .
done
echo "Convert of all png"

for file in ../../Image/*.pdf
do
  cp "$file" .
done
echo "copy all pdf"

for file in ../../Image/*.svg
do
  echo "${file}"
  cp "$file" .
done
echo "copy all svg"