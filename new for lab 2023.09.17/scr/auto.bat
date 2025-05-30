@echo off
setlocal enabledelayedexpansion

set "input_folder=../figure"
set "output_folder=../figure"

mkdir "!output_folder!" 2>nul
set "count=0"

for %%f in (!input_folder!\*.gif) do (
    set "input_file=%%~dpnxf"
    set "output_file=!output_folder!\%%~nf.png"
    convert "%%f" -coalesce "!output_file!"
    set /a "count+=1"
)

endlocal