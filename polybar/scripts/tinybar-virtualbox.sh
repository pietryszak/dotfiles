#!/usr/bin/env bash

killall -q dropbox
	dropbox start &

polybar -q tray-virtualbox -c "$HOME/.config/polybar/cuts/config.ini" &
