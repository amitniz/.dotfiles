#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Autorun
screenfetch

#Aliases 
alias c=~/auto.sh
alias pac='sudo pacman -S'
alias pip3='sudo pip3 install'
alias com='cd ~/Dropbox/computerEngineering'
alias pp='run_pdf'

#Functions
run_pdf (){
	
	zathura "$1" & disown
	exit

}

