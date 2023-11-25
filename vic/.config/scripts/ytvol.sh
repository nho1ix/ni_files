#!/bin/bash
sink_data=$(pactl list sink-inputs | rg "application.name = \"Firefox\"" -B 18)
firefox_sinknum=$(printf '%s\n' "$sink_data" | head -n 1 | cut -d "#" -f 2)
volume=$(printf '%s\n' "$sink_data" | rg Volume | cut -d ":" -f 3)
parse2_vol=${volume:9}
parse_vol=${parse2_vol%,*}

while getopts 'id?' flag; do
  case "${flag}" in
    i) pactl set-sink-input-volume "$firefox_sinknum" +2% && notify-send -u normal -r 59 "Browser Volume" "$parse_vol";;
    d) pactl set-sink-input-volume "$firefox_sinknum" -2% && notify-send -u normal -r 59 "Browser Volume" "$parse_vol";;
    ?) echo "script usage: $(basename \$0) [-i] [-d] [-a somevalue]" >&2
       exit 1 ;;
  esac
done
