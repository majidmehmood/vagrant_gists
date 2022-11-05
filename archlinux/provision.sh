#/bin/sh
username=$SUDO_USER
userhome=$(getent passwd $SUDO_USER | cut -d: -f6)
cd "${userhome}"

pacman --noconfirm -Syu
# remove guest utils provided by the box (they do not work in the GUI environment)
pacman --noconfirm -R virtualbox-guest-utils-nox
# feel free to add/remove packages as you need
pacman --noconfirm -Syu \
    base-devel net-tools vim wget git unzip openssh bash-completion 
    apache \
    kitty \
    ranger \
    xorg xorg-xinit \
    xterm \
    xf86-video-intel \
    i3 slim dmenu \
    firefox

