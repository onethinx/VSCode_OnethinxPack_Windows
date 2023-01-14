# Onethinx Core Windows dependencies pack

## How to setup Visual Studio Code with the Onethinx Core dependencies pack

## 1. Download prerequisites
- **VS Code**
    - [Download Visual Studio Code](https://code.visualstudio.com/download)
- **Onethinx Dependencies Pack**
    - [Download the Onethinx dependencies pack for Windows](https://github.com/onethinx/VSCode_OnethinxPack_Windows/archive/refs/heads/main.zip)
## 2. Install VS Code & extensions
  - Install VS Code.
  - Install extensions:
    - ARM Assembly Support For Visual Studio Code (dan-c-underwood)
    - C/C++ IntelliSense, debugging (microsoft)
    - Cortex-Debug GDB support (marus25)
    - Meson Build (mrmomo)
    - Output Colorizer (IBM)
    - Power Tools (e.GO Mobile)
    - Tasks (actboy168)
## 3. Install Meson & Ninja build tools
  - Install Meson & Ninja with the MSI installer from: [meson-1.0.0-64.msi
](https://github.com/mesonbuild/meson/releases)
  - or follow the instructions to install with pip/python: https://mesonbuild.com/Getting-meson.html
## 4. Install the Onethinx Dependencies Pack
  - Unzip the pack archive to your local harddisk (eg: C:\VSCode_OnethinxPack_Windows)
    - Hint: you might want to remove '-main' at the end of the folder name
  - Open your command prompt (cmd)
  - Run `C:\VSCode_OnethinxPack_Windows\setVariables.bat`
    - You'll see the environment variables and the path being set
  - Restart your machine (or log-out and log-in) to reload the environment variables
## 5. Check
  - If Meson and the compiler is correctly installed by typing the following into your command prompt or terminal window of VS Code
    - `meson -v`
    - `arm-none-eabi-gcc -v`
  - If you have not done this yet, download the [Hello World Project](https://github.com/onethinx/HelloWorld)
    - You should be able to build and debug this project. If you experience issues, [your feedback is appreciated.](https://github.com/onethinx/VSCode_OnethinxPack_Windows/issues)
## 6. Remind
  - After changing the device configuration (or project file structure) to use
    - Clean Reconfigure
    - Clean Rebuild
       in order to build the image properly  
  - To delete the contents of the build folder
    - if you copied the project including build folder from another location / machine
    - when build fails
  - This pack contains the 64bit version of CMake. Replace with the 32bit version if you run on a 32bit machine.
  
## How to update
  - Download the [latest Onethinx Dependencies Pack](https://github.com/onethinx/VSCode_OnethinxPack_Windows/archive/refs/heads/main.zip)
  - Delete the contents of the Dependencies Pack folder from you harddisk
  - Unpack the contents of the archive to the Dependencies Pack folder
  - Run `C:\VSCode_OnethinxPack_Windows\removeVariables.bat`
  - Run `C:\VSCode_OnethinxPack_Windows\setVariables.bat`
  - Restart your machine (or log-out and log-in) to reload the environment variables