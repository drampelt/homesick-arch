#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Colemak
setxkbmap -variant colemak
xset r 66

# Key repeat delay/rate
xset r rate 200 25

# Environment variables for i3
export TERMINAL=terminator
export SCRIPTS_DIR=~/.i3/scripts

# Start vbox if we are running in a VM
if hash VBoxClient-all 2>/dev/null; then
  VBoxClient-all
fi

# Wallpaper
if [ -f ~/.fehbg ]; then
  sh ~/.fehbg &
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Finally, run i3
exec i3
