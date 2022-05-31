#!/usr/bin/env bash

killall -q dropbox
	dropbox start &

polybar -q tray-one-monitor -c "$HOME/.config/polybar/cuts/config.ini" &
