#wal colorscheme (Linux)
#[[ $(uname) == Linux ]] && (cat ~/.cache/wal/sequences &)

#Zsh Theme
ZSH_THEME="bira"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

export NO_AT_BRIDGE=1
export TERM="xterm-256color"
export PATH=/var/lib/snapd/snap/bin/:$PATH
export PATH=$PATH:~/.local/bin/
export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
export LANG=en_US.UTF-8


plugins=(git node npm python zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
#source ~/.fonts/*.sh

#-------------------------Aliases------------------------#
alias c='clear;neofetch'
alias atam='docker run -it -v $(pwd):/home atam'
alias update='sudo pacman -Syyu'
alias pac='sudo pacman -S'
alias com='cd ~/Dropbox/computerEngineering'
alias gt='cd ~/github'
alias md='mkdir -p'
alias dic='sdcv'
alias tt='tmux a -t 0 || tmux'
unalias l


#-----------------------Functions----------------------#


function kali {
	if [[ -z "$1" ]];then
		sudo docker run --rm -h kalilinux -w /mnt -v $(pwd):/mnt -it kali_headless zsh
	else
		sudo docker run --rm -h kalilinux -w /mnt -v $(pwd):/mnt -it kali_headless $*
	fi
}

#open vscode and close the terminal
function vs {
	code $@ && exit
	}

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

function zz {
	zathura $1 &disown;clear
}

