#! /usr/bin/bash
currentBrightness=$(brightnessctl|grep Current | awk '{print $3}')
if [[ $1 == "up" ]]; then
	if [[ currentBrightness -ne 80000 ]]; then 
		sudo brightnessctl set +10%
	fi
elif [[ $1 == "down" ]]; then
	if [[ currentBrightness -ne 8000 ]]; then 
		sudo brightnessctl set 10%-
	fi
fi
