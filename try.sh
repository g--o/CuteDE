#!/usr/bin/bash

# settings
SCREEN=1
XDISPLAY=:1
CUTEWM_PATH="CuteWM/main.py"
PYTHON=/usr/bin/python
XEPHYR=/usr/bin/Xephyr

# detect
SCREEN_SIZE=`xrandr --current | grep '*' |  awk -v line="$SCREEN" 'NR==line{print $1}'`
xkbcomp :0 $XDISPLAY

# run

echo "Starting CuteDE in xephyr with $SCREEN_SIZE ..."
echo "NOTE: if wm don't work try and restart your x server (ctrl+alt+backspace)"
xinit $PYTHON $CUTEWM_PATH -- $XEPHYR ${XDISPLAY} -screen ${SCREEN_SIZE} -ac -reset

# possible fix for x server events?
#Xephyr -screen ${SCREEN_SIZE} ${XDISPLAY} -ac &
#XEPHYR_PID=$!
#(
#  sleep 1
#  env DISPLAY=${XDISPLAY} ${PYTHON} "$CUTEWM_PATH" $@ &
#  CUTEDE_PID=$!
#  env DISPLAY=${XDISPLAY} xterm &
#  wait $CUTEDE_PID
#  kill $XEPHYR_PID
#)

