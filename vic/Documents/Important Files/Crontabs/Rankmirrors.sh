#!/usr/bin/env bash

# Install this crontab under the root user

if [ -r "$HOME/.dbus/Xdbus" ]; then
  . "$HOME/.dbus/Xdbus"
fi

# Install this crontab under the root user

notify-send -u "normal" -t 10000 "Rankmirrors" "Optimizing Mirror List..."
mirrorlist_generator='https://archlinux.org/mirrorlist/?country=US&protocol=http&protocol=https&ip_version=4&use_mirror_status=on'
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.back
curl "$mirrorlist_generator" > /etc/pacman.d/mirrorlist.backup
sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backup
rankmirrors -n 30 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
sed -i '/^##/d' /etc/pacman.d/mirrorlist
cat /etc/pacman.d/mirrorlist
rm /etc/pacman.d/mirrorlist.backup

# For normal user
notify-send -u "normal" -t 10000 "All Finished  "
