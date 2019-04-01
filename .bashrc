#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias clear="clear && neofetch"
alias udt='sudo pacman -Syu'
alias ls='ls --color=auto'
alias suspend='systemctl suspend'
alias temp="paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'"
PS1='[\u@\h \W]\$ '
export DISPLAY=:0.0
neofetch
