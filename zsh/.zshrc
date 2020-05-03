#wal colorscheme (Linux)
[[ $(uname) == Linux ]] && (cat ~/.cache/wal/sequences &)

#Zsh Theme
ZSH_THEME="nebirhos"  #"powerlevel9k/powerlevel9k"

PROMPT_TITLE="Don't let schooling interfere with your education."

DISABLE_AUTO_TITLE="false"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

export TERM="xterm-256color"
export PATH=/usr/local/sbin:$PATH
export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
export LANG=en_US.UTF-8


plugins=(git node npm python zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
source ~/.fonts/*.sh

#-------------------------Aliases------------------------#
alias c='clear;neofetch'
alias atam='docker run -it -v $(pwd):/home atam'
alias update='sudo pacman -Syyu'
alias pac='sudo pacman -S'
alias com='cd ~/Dropbox/computerEngineering'
alias gt='cd ~/github'
alias md='mkdir -p'
alias dic='sdcv'
unalias l


#-----------------------Functions----------------------#

# load vim with workspace
function vim {
	if [[ -z "$1" ]] && [[ -e workspace.vim ]]; then
		/bin/vim -S workspace.vim
	else
		/bin/vim $*
	fi
}

#lunch pdf 
function pd {
	zathura $@ & disown
	exit
}

# save path on cd
function cd {
    builtin cd $@
    pwd > ~/.last_dir
	clear
}

# change last dir to home on exit
function exit {
	echo ~ > ~/.last_dir
	builtin exit
}

# restore last saved path
if [ -f ~/.last_dir ]
    then cd `cat ~/.last_dir`
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
