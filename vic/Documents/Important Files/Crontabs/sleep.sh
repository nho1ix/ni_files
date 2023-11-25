#!/usr/bin/env bash
if [ -r "$HOME/.dbus/Xdbus" ]; then
  . "$HOME/.dbus/Xdbus"
fi
#notify-send -u "normal" -t 30000 "🛏  It's 12 AM  🛏" "Hey man, it's pretty late and you should sleep"
notify-send -u "normal" -t 30000 "  It's 12 AM  " "Hey man, it's pretty late and you should sleep"
