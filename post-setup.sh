#/bin/sh

pacman --noconfirm -S kitty ranger nemo

cd /home/vagrant
mkdir projects
mkdir bin

cd bin

curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/visual-studio-code-bin.tar.gz
tar -xvf visual-studio-code-bin.tar.gz
cd visual-studio-code-bin
makepkg --noconfirm -si


echo "exec i3" >> ~/.xinitrc