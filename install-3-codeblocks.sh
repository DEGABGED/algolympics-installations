#!/bin/bash

mkdir codeblocks
tar -xf codeblocks_17.12-1_amd64_stable.tar.xz -C codeblocks/
cd codeblocks/
sudo dpkg -i *.deb
