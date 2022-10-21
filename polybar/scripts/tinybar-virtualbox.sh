#!/usr/bin/env bash

killall -q dropbox
	dropbox start &

polybar -q tray -c "$HOME/.config/polybar/cuts/config.ini" &