sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-6 g++-6

sudo update-alternatives --set gcc /usr/bin/gcc-6
sudo update-alternatives --set g++ /usr/bin/g++-6
#sudo echo 'alias gcc="gcc-6"' >> ~/.bashrc
# this needs gcc-6 to compile
# USE ALIAS and put in .bashrc or .bash_profile to change, or change using PATH
