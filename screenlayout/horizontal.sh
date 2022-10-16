#!/bin/sh

xrandr --output DisplayPort-0 --mode 2560x1440 --pos 2560x0 --rotate normal --output HDMI-A-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal


	killall -q polybar
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

		polybar -q first -c "~/.config/polybar/cuts/config.ini" &
		polybar -q second -c "~/.config/polybar/cuts/config.ini" &

	killall -q picom && sleep 1
	picom --config ~/.config/picom.conf
