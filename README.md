# Algolympics 2019 installation

## Software Versions

* Java JDK 1.8.0_162
    * `jdk-8u162-linux-x64.tar.gz`
* Codeblocks 17.12-1
    * `codeblocks_17.12-1_amd64_stable.tar.xz`
* GCC 6.5.0
* G++ 6.5.0
* Eclipse 3.6.2
    * `eclipse-SDK-3.6.2-linux-gtk-x86_64.tar.gz`
* Sublime Text
* Python 2.7.6 / 3.7.0
    * `Python-3.7.0.tgz`
* Notepad++ 7.5.4
    * `notepad-plus-plus-7.5.4.tar.gz`
    * Note: support not guaranteed
* Neovim 0.3.4
    * Note: Latest version (0.4.0) is still at nightly
* PC^2 9.6.0
    * `pc2-9.6.0-5102.tar.gz`

## Procedure

### 1. Removing proxy settings

If you are getting `Could not resolve proxy` errors when installing from `apt-get`, you may need to manually remove the proxy. **Instructions to do so will be placed elsewhere.**

### 2. Distributing the installers

An archive `algolympics.tar.gz`, containing the packages and scripts to install and run, will be provided. Download the package and run the following command to distribute the package:

```
scp ./algolympics.tar.gz event1@<ip-address>:~
```

### 3. Running the installers

You can run the installers 2 ways: manually on the physical machine, or through `ssh` from the host computer.

#### Manual running

Extract the `algolympics.tar.gz` and run the `install-<#>-<software>.sh` scripts. Alternatively, run the single `install-full.sh` script. However, this may prevent you from debugging the installations.

```
mkdir tmp/
tar -zxf algolympics.tar.gz -C tmp/
cd tmp/

./install-full.sh
```


#### SSH running

You can also connect to the computers via SSH and run the same commands:

```
ssh event1@<ip-address>

mkdir tmp/
tar -zxf algolympics.tar.gz -C tmp/
cd tmp/

./install-full.sh
```

### 4. Checking the installations

After each installation, check the software if the versions are correct.

```
java -version
# Version: 1.8.0_162

gcc --version
# Version: 6.5.0

g++ --version
# Version: 6.5.0

python
# Version: 2.7.6

python3
# Version: 3.7.0
```
