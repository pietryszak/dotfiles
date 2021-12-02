#!/bin/sh
xrandr --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-8 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1-1 --off

dir="$HOME/.config/polybar"
themes=(`ls --hide="launch.sh" $dir`)

launch_bar() {
	killall -q polybar
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

	if [[ "$style" == "cuts" ]]; then
		polybar -q one-monitor -c "$dir/$style/config.ini" &

	else
		#👇 👉 launching multiple monitors --> make sure to add monitor = ${env:MONITOR:} in the config
		if type "xrandr"; then
		  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		    MONITOR=$m polybar -q main -c "$dir/$style/config.ini" &
		  done
		else
		  polybar -q main -c "$dir/$style/config.ini" &
		fi
	fi
}


if [[ "$1" == "--cuts" ]]; then
	style="cuts"
	launch_bar

else
	cat <<- EOF
	Usage : launch.sh --theme
		
	Available Themes :
	--cuts
	EOF
fi
