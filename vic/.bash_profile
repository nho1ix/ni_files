# export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
# For user and root

export PATH="$PATH:$( (print "$HOME/.local/share/gem/ruby/3.0.0/bin" && du "$HOME/.local/bin") | cut -f2 | paste -sd ':') "

# Default programs: export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export EDITOR="nvim"
export LOCATION="san-jose"

# ~/ Clean up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.
export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
#export LESSHISTFILE="-"
#export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
#export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
#export LC_ALL=en_US.utf8
#export GNUPGHOME="$XDG_DATA_HOME/gnupg"
#export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
#export KODI_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/kodi"
#export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
#export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
#export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
#export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
#export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
#export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
#export UNISON="${XDG_DATA_HOME:-$HOME/.local/share}/unison"
#export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"

# Automate startx
# if [ "$(tty)" = /dev/tty1 ]; then
#     startx
# fi

# Switch backspace and caps if tty and no passwd required:
sudo -n loadkeys ${XDG_DATA_HOME:-$HOME/.local/share}/larbs/ttymaps.kmap 2>/dev/null
