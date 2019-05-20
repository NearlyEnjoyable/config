#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias clear="clear && neofetch"
alias udt='sudo pacman -Syu'
alias ls='ls --color=auto'
alias suspend='systemctl suspend'
alias changewall='feh --randomize --bg-fill ~/Wallpapers/*'
alias temp="paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'"
#PS1='[\u@\h \W]\$ ' # Change the prompt look #Default
PS1="\e[33;1m\e[0;33;103m\e[0;30;43m\u\e[33;103m\e[0;31;103m\W\e[0;33;1m\e[0m "
PS2="\e[0;33;1m\e[0;30;103m﬌\e[0;33;1m\e[0m "
export DISPLAY=:0.0
neofetch
