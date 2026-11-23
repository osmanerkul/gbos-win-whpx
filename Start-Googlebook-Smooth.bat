@echo off
pushd "%~dp0"
python "launcher\launch_googlebook.py" --gpu virgl --memory-mb 16384 --cpus 6 --resolution 2560x1440 %*
if errorlevel 1 (
    echo.
    echo If 'python' is not found, please ensure Python 3.10+ is installed and added to PATH.
    pause
)
popd
