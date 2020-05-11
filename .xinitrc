# your mileage may vary with this file
# the options below are very personalized for my current setup

xset r rate 175 50

# setxkbmap -option caps:none apa420
xrandr --dpi 92

# 24" left
xrandr --output DVI-D-0 --mode 1920x1080 --rate 144.00 --pos 0x0

# 24" right
xrandr --output DP-2 --mode 1920x1080 --rate 144.00 --pos 1920x0


# [[ -f ~/.Xmodmap ]] && setxkbmap -layout us -variant altgr-intl -option nodeadkeys && xmodmap ~/.Xmodmap
# [ -f ~/.Xmodmap ] && setxkbmap -layout us -variant altgr-intl -option nodeadkeys && xmodmap ~/.Xmodmap
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
setxkbmap -option caps:escape

ibus-daemon -drx
# exec i3
exec ~/.local/bin/startdwm
