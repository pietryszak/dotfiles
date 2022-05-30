#!/bin/sh
xrandr --output DisplayPort-0 --mode 2560x1440 --pos 2560x0 --rotate right --output HDMI-A-0 --primary --mode 2560x1440 --pos 0x761 --rotate normal

	killall -q polybar
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

		polybar -q first-vertical -c "~/.config/polybar/cuts/config.ini" &
		polybar -q second-vertical -c "~/.config/polybar/cuts/config.ini" &

	killall -q picom && sleep 1
	picom &
