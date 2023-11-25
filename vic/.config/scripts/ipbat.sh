#!/bin/bash
notify-send -u normal -t 1500 -r 60 "Camera Battery" "$(ideviceinfo --domain com.apple.mobile.battery | awk 'NR==1{printf $2"%"}')"
