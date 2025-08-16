@echo off
REM Seed Finder Launcher for Windows
REM Double-click this file to run Seed Finder

echo === Seed Finder Launcher ===
echo Starting Seed Finder...

REM Check if Java is available
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Java is not installed or not in PATH
    echo Please install Java 21 or later from: https://adoptium.net/
    echo.
    pause
    exit /b 1
)

echo Java found. Launching Seed Finder...
echo.

REM Run the JAR file
java -jar "Seed Finder-2.0.1.jar"

REM Keep window open if there's an error
if %errorlevel% neq 0 (
    echo.
    echo Application exited with an error. Press any key to close...
    pause
)
