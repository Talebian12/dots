# Start X Server
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null

# oh-my-zsh path
ZSH=/usr/share/oh-my-zsh/

# Flags
COMPLETION_WAITING_DOTS="true"
ZSH_TMUX_AUTOSTART="true"

# Plugins
plugins=(
	git
	tmux
	zsh-syntax-highlighting
	zsh-autosuggestions
)

# Load configs
source $HOME/.spshprc	# spaceship
source $HOME/.exports	# export
source $HOME/.envvar	# environment variables

# Cache
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh

# Check if cache exist
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# Start oh-my-zsh
source $ZSH/oh-my-zsh.sh


# Aliases
alias install="yay -S"		# Package install 
alias remove="sudo pacman -Rns"	# Package remove
alias search="yay -Ss"		# Package search
 
alias sysupd="yay"	# System up
alias list="pacman -Q"	# Package installed

alias cp="rsync --archive -hh --partial --info=stats1 --info=progress2 --modify-window=1"			# Better Copy	
alias mv="rsync --archive -hh --partial --info=stats1 --info=progress2 --modify-window=1 --remove-source-files"	# Better move
 
alias rm="trash-put"			# Trash
alias lsbin="trash-list"		# See items in trash bin
alias erasebin="trash-empty"		# Clean trash bin
alias restorebin="trash-restore"	# Restore item from trash bin
  
alias ls="exa --git -l"	# exa directory viewer
 
alias ping="prettyping"	# ping

alias man="man --pager=most"	# Colorized pager

alias firewallctl="sudo firewall-cmd"	# firewalld 

alias sudo='sudo -p "$(print -P "%B%F{green}[sudo]%B%F{white} kgb access code ->%f%b ")"'	# Custom sudo

# Set zfunction
fpath=($fpath "/home/talebian/.zfunctions")

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
