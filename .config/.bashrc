#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias monitor-on='xrandr --output HDMI-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal --output DP-1 --off --output eDP-1 --mode 2560x1440 --pos 584x2160 --rotate normal --output DP-2 --off'
alias monitor-off='xrandr --output eDP-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off'

export GOPATH="$HOME/go/"
export PATH=$PATH:$GOPATH/bin

# PS1='┌─[\w]\n└╼ '
#PS1="┌─[\[\e[31m\]\w\[\e[m\]]\n└─╼ "
PS1="[\[\e[32m\]\w\[\e[0m\]]\[\e[91m\] λ\[\e[0m\] "

# ----
# Aliases

alias wifi="nmtui-connect"
alias light-10="echo 106 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias light-20="echo 212 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias light-30="echo 318 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias light-40="echo 424 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias light-50="echo 530 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias light-60="echo 636 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias light-70="echo 742 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias light-80="echo 848 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias light-90="echo 954 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias light-100="echo 1060 | sudo tee /sys/class/backlight/intel_backlight/brightness"
alias vscode="code"

# ----

stty -ixon
