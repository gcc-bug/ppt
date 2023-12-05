
#!/bin/bash

for file in *.tex
do
  pdflatex "$file"
done

echo "Compilation of all LaTeX files complete."
