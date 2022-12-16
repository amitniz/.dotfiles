export LC_CTYPE=en_US.UTF-8
export RANGER_LOAD_DEFAULT_RC=FALSE
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME/.local/bin

ZSH_THEME="darkblood"
plugins=(git bundler zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
[[ $- != *i* ]] && return

alias ls='ls --color=auto -h --group-directories-first'
alias bt=bluetoothctl
alias update='yaourt -Syyu --aur --noconfirm' 
alias tt='tmux a -t main||tmux new -s main'
alias sharebox='cd /mnt/sharebox'
alias com='cd /mnt/sharebox/computers_engineering'
alias transfer='cd /mnt/transfer'
function pdf(){
	zathura "$1" &disown
}

function pdfe(){
	zathura "$1" &disown;exit
}

function copy(){
	rsync -P $@
}

