# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

## Laptop settings
# add natural scrolling to touchpad
xinput set-prop 13 325 1 

# turn off disabled while typing
# causes unresponsive touchpad bug when enabled
xinput set-prop 13 342 0

# fix disabled cursor UI
xsetroot -cursor_name left_ptr

# rebind caps lock as escape
setxkbmap -option caps:escape

# disable screen blanking
xset s off -dpms

export TERMINAL=/usr/bin/alacritty
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/nvim
