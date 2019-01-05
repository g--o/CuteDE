#!/bin/bash

gnome-settings-daemon &
xcompmgr -c -f -n &
#nautilus -n &
#dbus-launch docky &
user/run-cute-launcher.sh &
hsetroot -full "user/wallpaper.png" &
exit
