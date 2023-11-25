#!/usr/bin/env bash
if [ -r "$HOME/.dbus/Xdbus" ]; then
  . "$HOME/.dbus/Xdbus"
fi
notify-send -u "normal" "Initiating Auto-Download" "Checking for package updates..."
exist=$(sudo pacman -Syyuw --noconfirm | rg "there is nothing to do"\|"Packages \(")
case $exist in
  " there is nothing to do")
    notify-send -u "normal" "All Finished  " "No packages were downloaded"
    ;;
  Packages*)
    num_pack=$(echo $exist | awk '{print substr($2, 2, length($2)-2)}')
    notify-send -u "normal" "$num_pack Package(s) Outdated  " "Downloading and installing packages now..."
    sudo pacman -Syu --noconfirm 
    notify-send -u "normal" "All Finished  " "Package(s) were downloaded"
    ;;
esac
