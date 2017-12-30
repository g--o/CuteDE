#!/bin/bash

gnome-settings-daemon &
nautilus -n &
#dbus-launch docky &
user/run-cute-launcher.sh &
exit
