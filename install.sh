#!/bin/bash

echo "Installing pre-requisites... (requires pip, apt/pacman)"

if [ ! -z `which apt 2> /dev/null` ]; then
	pmgr="apt install"
elif [ ! -z `which pacman 2> /dev/null` ]; then
	pmgr="pacman -S"
else
	echo "Package manager not supported/configured properly"
	exit
fi

sudo pip install cairocffi
sudo pip install xlib
sudo pip install psutil
sudo $pmgr xcompmgr
sudo $pmgr xterm

# clone launcher
git clone -b demo https://github.com/g--o/CuteLauncher.git
# clone window manager
git clone https://github.com/g--o/CuteWM.git

# copy configuration
cp user/session_init.sh CuteWM/user/session_init.sh

