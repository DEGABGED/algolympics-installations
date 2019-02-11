#!/bin/bash

### Script for installing required software (given script and packages are already locally present) ###
### Run this script in the computer where the packages are to be installed (You can run this script from ssh) ###
### ~/tmp/

# 0. Moving packages to the other computers
# To be handled by another script

# 1. Eclipse SDK 3.6.2
# Local installation
# 
# This build requires a 64-bit JVM, and will not run with a 32-bit JVM.
# You can, for example, use the Sun 64-bit 1.5 JVM for AMD64.  Note
# that the Sun 1.4.2 JVM for AMD64 is 32-bit and therefore cannot be
# used to run this build.

#wget -O eclipse-SDK-3.6.2-linux-gtk-x86_64.tar.gz http://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops/R-3.6.2-201102101200/eclipse-SDK-3.6.2-linux-gtk-x86_64.tar.gz
tar -zxf eclipse-SDK-3.6.2-linux-gtk-x86_64.tar.gz -C ~
echo 'export PATH=$PATH:/home/event1/eclipse' >> ~/.bashrc && source ~/.bashrc
# TODO: symlink

# 2. Code::Blocks 17.12-1 (amd64, stable)
# Debian package installation
mkdir codeblocks
tar -zxf codeblocks_17.12-1_amd64_stable.tar.xz -C codeblocks/
cd codeblocks/
sudo dpkg -i *.deb

# 3. GCC 6.2.1
# Installation with package manager
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-6 g++-6
# this needs gcc-6 to compile
# USE ALIAS and put in .bashrc or .bash_profile to change, or change using PATH

# 4. Java 1.6.0_25
# Installation with installer
./jdk-6u25-linux-x64.bin
sudo mkdir -p /opt/java
sudo mv jdk1.6.0_25 /opt/java
sudo update-alternatives --install "/usr/bin/java" "java" "/opt/java/jdk1.6.0_25/bin/java" 1
sudo update-alternatives --set java /opt/java/jdk1.6.0_25/bin/java


# 5. Notepad++
# Local installation
tar -xzf notepad-plus-plus-7.5.4.tar.gz

# 6. Sublime Text
# Installation with package manager
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

sudo apt-get install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get install sublime-text

# 7. NeoVim
# Local installation (from source)
# Dependencies
sudo apt-get install python-software-properties
sudo apt-get install ninja-build libtool autoconf automake cmake g++ pkg-config unzip
# Build
git clone https://github.com/neovim/neovim
cd neovim/
rm -r build/
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
echo 'export PATH="$HOME/neovim/bin:$PATH"' >> ~/.bashrc

#8 . pc^2
tar -xzf pc2-9.5.3-4653.tar.gz
