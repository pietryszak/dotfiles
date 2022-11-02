#!/usr/bin/env bash

killall -q dropbox
	dropbox start &

polybar -q tray-vertical -c "$HOME/.config/polybar/cuts/config.ini" &
