#!/bin/bash

# Seed Finder Launcher for Linux
# Double-click this file to run Seed Finder (if your file manager supports it)

echo "=== Seed Finder Launcher ==="
echo "Starting Seed Finder..."

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Check if Java is available
if ! command -v java &> /dev/null; then
    echo "Error: Java is not installed or not in PATH"
    echo "Please install Java 21 or later:"
    echo "  Ubuntu/Debian: sudo apt install openjdk-21-jdk"
    echo "  Fedora: sudo dnf install java-21-openjdk"
    echo "  Or download from: https://adoptium.net/"
    echo "Press Enter to close..."
    read
    exit 1
fi

# Check Java version
JAVA_VERSION=$(java -version 2>&1 | head -n 1 | cut -d'"' -f2 | cut -d'.' -f1)
if [ "$JAVA_VERSION" -lt 21 ]; then
    echo "Error: Java 21 or later is required"
    echo "Current Java version: $(java -version 2>&1 | head -n 1)"
    echo "Please install Java 21 or later"
    echo "Press Enter to close..."
    read
    exit 1
fi

echo "Java version: $(java -version 2>&1 | head -n 1)"
echo "Launching Seed Finder..."

# Run the JAR file
java -jar "Seed Finder-2.0.1.jar"

# Keep terminal open if there's an error
if [ $? -ne 0 ]; then
    echo "Application exited with an error. Press Enter to close..."
    read
fi
