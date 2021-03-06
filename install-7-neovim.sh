#!/bin/bash

sudo apt-get install python-software-properties
sudo apt-get install ninja-build libtool autoconf automake cmake g++ pkg-config unzip cmake-data
# Build
mkdir neovim
unzip neovim-0.3.4.zip
cd neovim-0.3.4/
rm -r build/
sudo make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
sudo make install
echo 'export PATH="$HOME/neovim/bin:$PATH"' >> ~/.bashrc
cd ..
