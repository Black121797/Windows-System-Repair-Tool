@echo off
:: Check for administrative privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Administrative privileges confirmed. Starting system repair...
) else (
    echo ERROR: Please right-click this file and select "Run as administrator".
    pause
    exit /b
)

echo ===================================================
echo STEP 1: Repairing Windows System Image (DISM)
echo ===================================================
dism.exe /Online /Cleanup-image /Restorehealth

echo ===================================================
echo STEP 2: Scanning and Fixing System Files (SFC)
echo ===================================================
sfc /scannow

echo ===================================================
echo STEP 3: Applying System Registry Tweaks
echo ===================================================
if exist "tweaks.reg" (
    reg edit /s tweaks.reg
    echo Registry tweaks applied successfully.
) else (
    echo WARNING: tweaks.reg file not found in the current folder.
)

echo ===================================================
echo System repair process completed!
echo ===================================================
pause
