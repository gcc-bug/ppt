@echo off
setlocal enabledelayedexpansion

set "input_folder=figure"
set "output_folder=figure_png"

mkdir "!output_folder!" 2>nul

for %%f in (!input_folder!\*.gif) do (
    set "input_file=%%~dpnxf"
    set "gif_name=%%~nxf"
    
    rem Remove any non-alphanumeric characters to create a unique number
    set "unique_number=!gif_name:~0,8!"
    set "unique_number=!unique_number:~0,8!"
    
    set "output_file=!output_folder!\!unique_number!.png"
    convert "%%f" -coalesce "!output_file!"
)

endlocal
