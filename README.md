# Command Panel (Windows batch)

This repository contains a small Windows batch-based media command panel. It is implemented as batch scripts and is intended to run on Windows only.

Important safety note
- Because this project is a batch script, some antivirus or Windows Defender may flag it when you first download or run it. This is a false-positive in most cases: the scripts are provided as-is and do not contain malicious payloads.
- The most common reason for a flag is the script's optional feature to clear temporary files; security tools sometimes treat such actions as potentially unwanted. You can review the batch files in any text editor before running them.

Required folders (Windows)
- The music and video players expect two folders to exist at C:\videoo and C:\musicc. Create these folders manually before running the players, or run the provided setup script (if present) which will create them for you.

Quick start (Windows)
1. Clone this repository.
2. Inspect the .bat files in a text editor to confirm behavior (recommended).
3. Create the required folders manually: open a Command Prompt as your user and run:
   mkdir C:\videoo
   mkdir C:\musicc
4. Run the player batch file (for example: player.bat) from a Command Prompt.

Notes
- This project is Windows-only because it uses batch scripts. If you want cross-platform support, consider adding a bash or Python port.
- If you see antivirus warnings, double-check the scripts first. You can temporarily exclude the project folder from scans while you inspect and run the scripts if you trust the code.