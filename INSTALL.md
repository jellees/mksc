# Installing

You need to use WSL or a Linux distro to build this, these instructions assume a Debian based distro (Debian, Ubuntu, Linux Mint, etc.). Directions can be found [here](https://learn.microsoft.com/en-us/windows/wsl/install).

## Setting up file structure
First, clone the repository using:
```sh
git clone https://github.com/jellees/mksc
```
and make sure `apt` is updated:
```sh
sudo apt update && sudo apt upgrade
```
### Install Devkitpro
These instructions are for Debian-based distributions or WSL. Installation instructions for Devkitpro on other distributions can be found [on their website](https://devkitpro.org/wiki/Getting_Started).
```sh
wget https://apt.devkitpro.org/install-devkitpro-pacman
chmod +x ./install-devkitpro-pacman
sudo ./install-devkitpro-pacman
```
Then, install the GBA libraries:
```sh
sudo dkp-pacman -S gba-dev
```
Afterward, export the environment variables:
```sh
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
```
### Installing tools
#### agbcc
Clone and install the agbcc compiler:
```sh
git clone https://github.com/pret/agbcc
cd agbcc
./build.sh
./install.sh ../mksc
```
Return to the initial directory:
```sh
cd ..
```
#### arm000512
Download and unpack arm00512: https://mid-kid.root.sx/stash/arm-000512.tar.xz
```sh
wget https://mid-kid.root.sx/stash/arm-000512.tar.xz
tar -xf arm-000512.tar.xz
cd arm-000512
```
Install arm-000512 with the following commands:[^1]
```sh
sudo apt install libtinfo-dev
mkdir build
cd build
mkdir ../../mksc/tools/thumb-elf
../configure --target=thumb-elf --without-x --prefix=$PWD/../../mksc/tools/thumb-elf
make -j$(nproc)
make install -j$(nproc)
```
### Making the project
Once the build finishes, navigate to the project folder:
```sh
cd ../../mksc
```
Then, run:[^1]
```sh
make -j$(nproc)`
```
The project should build successfully. If you encounter any issues, try deleting the build folder and running the command again.

[^1]: `make -j$(nproc)` uses multiple cores to build faster. If you get an "nproc: command not found" error you can alternitively just use `make` with no arguments.
