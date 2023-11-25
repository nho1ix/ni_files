#!/usr/bin/env bash
if [ -r "$HOME/.dbus/Xdbus" ]; then
  . "$HOME/.dbus/Xdbus"
fi
#notify-send -u "normal" "Commiting Changes For The Hour" "Pushing all changes for the hour to GitHub..."
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -am "Update (hourly)"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME push
#notify-send -u "normal" "  All Finished  "
