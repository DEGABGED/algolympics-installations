#!/bin/bash

## Only uncomment the first 3 lines if JDK 1.8.0_162 is not yet installed

#tar -xvf jdk-8u162-linux-x64.tar.gz
#sudo mkdir -p /opt/java
#sudo mv jdk1.8.0_162 /opt/java

sudo update-alternatives --install "/usr/bin/java" "java" "/opt/java/jdk1.8.0_162/bin/java" 1
sudo update-alternatives --set java /opt/java/jdk1.8.0_162/bin/java
