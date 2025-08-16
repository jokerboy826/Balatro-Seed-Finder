#!/bin/bash

# Seed Finder Launcher Script
# Double-click this file to run Seed Finder

echo "=== Seed Finder Launcher ==="
echo "Starting Seed Finder..."

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Check if Java is available
if ! command -v java &> /dev/null; then
    echo "Error: Java is not installed or not in PATH"
    echo "Please install Java 21 or later from: https://adoptium.net/"
    echo "Press any key to close..."
    read -n 1
    exit 1
fi

# Check Java version
JAVA_VERSION=$(java -version 2>&1 | head -n 1 | cut -d'"' -f2 | cut -d'.' -f1)
if [ "$JAVA_VERSION" -lt 21 ]; then
    echo "Error: Java 21 or later is required"
    echo "Current Java version: $(java -version 2>&1 | head -n 1)"
    echo "Please install Java 21 or later from: https://adoptium.net/"
    echo "Press any key to close..."
    read -n 1
    exit 1
fi

echo "Java version: $(java -version 2>&1 | head -n 1)"
echo "Launching Seed Finder..."

# Run the JAR file
java -jar "Seed Finder-2.0.1.jar"

# Keep terminal open if there's an error
if [ $? -ne 0 ]; then
    echo "Application exited with an error. Press any key to close..."
    read -n 1
fi
