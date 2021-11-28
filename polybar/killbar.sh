#!/usr/bin/env bash

# Use xprop to take a name of polybar tray, next grep take from that name only pid number, next a pid number is saved to file. 
# After that, cat take pid from file and pipe that to kill comand.
# The result is:
# Killed only tray bar, other polybar is not killed.

pid= xprop -name "Polybar tray window" _NET_WM_PID | grep -o '[[:digit:]]*' > ~/.config/polybar/pid && exec cat ~/.config/polybar/pid | xargs kill -9

exec pid
