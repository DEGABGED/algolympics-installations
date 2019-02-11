#!/bin/bash

# Install python 2
sudo apt-get install python

# Install python 3
tar -zxvf Python-3.7.0.tgz
cd Python-3.7.0/
./configure
make
sudo make install
