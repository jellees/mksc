# Installing

You need to use WSL or a GNU/Linux distro to build this, a Debian based distro is reccommened. Directions can be found [here](https://learn.microsoft.com/en-us/windows/wsl/install).

## Setting up file structure
First, download the zip file for this directory and extract it somewhere you will remember.
### Install Devkitpro
These instructions are for debian based distributions or WSL. Installation instructions for devkitpro on other distributions can be fount [on their website](https://devkitpro.org/wiki/Getting_Started).
```bash
wget https://apt.devkitpro.org/install-devkitpro-pacman
chmod +x ./install-devkitpro-pacman
sudo ./install-devkitpro-pacman
```
and then install the gba libs:
```bash
sudo dkp-pacman -S gba-dev
```
and then export the environment values
```bash
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
```
### Installing tools
Donwload the main tools from [here](https://cdn.discordapp.com/attachments/960983413890908220/960983654220308502/tools.7z?ex=65e771c5&is=65d4fcc5&hm=47aa4fe20beb4d9ab203832eeec680b8b3f70dc6c92eab55a062ce61815490a9&).
And put the contained files inside the /tools/ directory of the project zip you extracted earlier.\
\
Download and unpack: https://mid-kid.root.sx/stash/arm-000512.tar.xz \
if your browser opens this as a text file, you can use the command
`wget https://mid-kid.root.sx/stash/arm-000512.tar.xz`
to download the file\
Change your directory in the to the extracted folder (ex: `cd /mnt/c/path/to/folder/`)
then run the following commands and replace `/path/to/thumb-elf/` with the path to the `tool/thumb-elf` folder in the project directory.If no folder named `thumb-elf` exists in that directory make one there. An example directory would be `/mnt/c/projects/mksc-master/tools/thumb-elf`
```bash
sudo apt update
sudo apt install libtinfo-dev
mkdir build
cd build
../configure --target=thumb-elf --without-x --prefix=/path/to/thumb-elf
make -j$(nproc)
make install
```
### Making the project
Once the build finishes, navigate to the project folder and run `make -j$(nproc)` and the project should build. If you are having any issues, try deleting the build folder and running the command again.
