@echo off
echo Deleting LaTeX temporary files in all subdirectories...

REM Loop through each subdirectory and delete specific LaTeX temporary files
for /d %%i in (*) do (
    pushd %%i
    del /S *.aux
    del /S *.log
    del /S *.out
    del /S *.bbl
    del /S *.blg
    del /S *.synctex.gz
    del /S *.snm
    del /S *.nav
    del /S main.run.xml
    del /S main-blx.bib
    popd
)

echo Temporary files deleted in all subdirectories.
pause
