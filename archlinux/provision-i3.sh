#/bin/sh


# pacman --noconfirm -Sy
# pacman --noconfirm -S firefox dmenu nitrogen i3 xorg-server xorg-xinit
echo "exec i3" >> ~/.xinitrc
