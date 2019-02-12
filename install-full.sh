#!/bin/bash

### Script for installing required software (given script and packages are already locally present) ###
### Run this script in the computer where the packages are to be installed (You can run this script from ssh) ###
### ~/tmp/

# 0. Moving packages to the other computers
# To be handled by another script
./install-0-prereq.sh

# 1. Java 1.8.0_162
# Local installation
./install-1-java.sh

# 2. GCC 6.5.0
# Installation with package manager
./install-2-gcc.sh

# 3. Code::Blocks 17.12-1 (amd64, stable)
# Debian package installation
#./install-3-codeblocks.sh
sudo apt-get install codeblocks

# 4. Eclipse SDK 3.6.2
# Local installation
# 
# This build requires a 64-bit JVM, and will not run with a 32-bit JVM.
# You can, for example, use the Sun 64-bit 1.5 JVM for AMD64.  Note
# that the Sun 1.4.2 JVM for AMD64 is 32-bit and therefore cannot be
# used to run this build.
./install-4-eclipse.sh

# 5. Python 2.7 and 3.7
# Installation with package manager + Local installation
./install-5-python.sh

# 6. Sublime Text
# Installation with package manager
#./install-6-sublime.sh

# 7. NeoVim
# Local installation (from source)
# Dependencies
./install-7-neovim.sh

# 8. Notepad++
# Local installation
./install-8-notepadpp.sh

# 9. pc^2
./install-9-pc2.sh
