#!/bin/bash

echo "Installing pre-requisites... (requires pip, apt)"

sudo pip install cairocffi
sudo pip install xlib
sudo apt install xcompmgr

# clone launcher
git clone https://github.com/g--o/CuteLauncher.git
# clone window manager
git clone https://github.com/g--o/CuteWM.git

# copy configuration
cp user/session_init.sh CuteWM/user/session_init.sh

