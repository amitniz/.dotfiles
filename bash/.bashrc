#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

function pdf(){
	zathura "$1" &disown
}

function pdfe(){
	zathura "$1" &disown;exit
}

