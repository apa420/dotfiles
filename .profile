# Default programs
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="brave"
export READER="zathura"

# Set config dirs
export ZDOTDIR="$HOME/.config/zsh"

# No history files
export LESSHISTFILE="/dev/null"
export PYTHONSTARTUP="$HOME/.config/python/.pythonrc"

# Bin I use
export PATH="${PATH}:$HOME/.local/bin"
export PATH="${PATH}:$HOME/prj/chatterino2/build/bin"
export PATH="${PATH}:$HOME/go/bin"

# Needed for some C stuff?
export LD_LIBRARY_PATH="/usr/local/lib"

# Random stuff needed for input
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export QT4_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

alias discord="discord --disable-smooth-scrolling"
alias riot-desktop="riot-desktop --disable-smooth-scrolling"

#export XDG_CONFIG_HOME="${XDG_CONFIG_HOME}:/home/apa420/.config"

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
