echo "Looping ..."
@echo off
@REM cd services
for /D %%i in ("*") do (
    set "dirname=%%~nxi"
    setlocal enabledelayedexpansion
    if not "!dirname:~0,1!" == "." (
        echo Directory found: !dirname!
        sleep 5
        cd %%i
        dir
    )
)