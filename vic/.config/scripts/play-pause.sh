#!/bin/bash

status=$(sleep 0.1 && playerctl -p spotify status)

case $status in
  "Playing")
    notify-send -u normal -t 750 -r 64 "Spotify" "Playing"
    ;;
  "Paused")
    notify-send -u normal -t 750 -r 64 "Spotify" "Paused"
    ;;
esac
