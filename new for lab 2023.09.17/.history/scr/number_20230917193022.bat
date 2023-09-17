@echo off
setlocal enabledelayedexpansion

set "input_folder=../figure"
set "output_folder=../figure"

mkdir "!output_folder!" 2>nul

for %%f in (!input_folder!\*.gif) do (
    set "input_file=%%~dpnxf"
    set "gif_name=%%~nxf"
    
    rem Extract the base name by removing underscores and anything after
    set "base_name=!gif_name:_=!"
    set "base_name=!base_name:~0,8!"  rem Keep only the first 8 characters as unique identifier

    set "count=0"
    for %%j in (!output_folder!\*.png) do (
        set "jpg_name=%%~nxj"
        rem Extract the base name from the JPEG file and remove underscores
        set "jpg_base_name=!jpg_name:_=!"
        if /I "!jpg_base_name:~0,8!"=="!base_name!" (
            set /a "count+=1"
        )
    )
    set "output_file=!output_folder!\!base_name!_!count!.png"
    convert "%%f" -coalesce "!output_file!"
)

echo Conversion process completed.
endlocal
