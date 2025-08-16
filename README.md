# Seed Finder

Find the perfect start to your next Balatro run!

## Requirements
- **Java 21 or later** (required to run the application)
- **macOS, Windows, or Linux** (cross-platform)

## How to Run

Download an unpack the zip file.

### Option 1: Double-click Seed Finder.jar to launch
You may need to check Privacy & Security settings to allow the application to run.

On Mac > Settings > Privacy & Security > scroll down and allow application.

### Option 2: Command line
1. Open Terminal/Command Prompt
2. Navigate to this folder
3. Run: `java -jar "Seed Finder.jar"`

## Installing Java (if needed)

### macOS
- Download from: https://adoptium.net/
- Install the macOS .pkg file
- Restart your terminal

### Windows
- Download from: https://adoptium.net/
- Run the installer
- Restart your command prompt

### Linux
```bash
sudo apt update
sudo apt install openjdk-21-jdk
```

## Troubleshooting

**"Java is not installed" error:**
- Install Java 21+ from https://adoptium.net/

**"Java 21 or later is required" error:**
- Update your Java installation to version 21 or newer

**Application won't start:**
- Make sure you have Java 21+ installed
- Try running from command line to see error messages

### Credits

Forked from https://github.com/alex-cova/balatro4j, based on Immolate.

### Improvements over Balatro4j

Native application - no command line or dependencies required!

Improved seed finding capabilities:
1. Cascading ante logic 

        - ante 1 - cards appear in first 6 shop cards
        
        - ante 2 - cards appear in first 8 shop cards
        
        - ante 3 - cards appear in first 12 shop cards
        
2. Pack logic improved - cards cannot appear in the same pack unless it is a Mega pack.

3. Multi-threaded searches - search for multiple cards across different antes.

4. Fixed issues with Bootstraps not searching correctly

5. Wee Joker appears correctly sized in UI

6. Search stops after 10 seeds found, saving time

7. User can right click seed results to copy and paste into game


### Known issues

Spectral cards searches return incorrect spectral cards. This is an issue with Balatro4j.

Search thread size becomes too large if too many cards are selected, or too many rare editions.

