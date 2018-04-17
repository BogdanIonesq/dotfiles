#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='┌─[\w]\n└╼ '

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

# ----
