#!/bin/bash

sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-6 g++-6

sudo update-alternatives --install "/usr/bin/gcc" "gcc" "/usr/bin/gcc-6" 1
sudo update-alternatives --set gcc /usr/bin/gcc-6

sudo update-alternatives --install "/usr/bin/g++" "g++" "/usr/bin/g++-6" 1
sudo update-alternatives --set g++ /usr/bin/g++-6
