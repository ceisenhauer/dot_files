# CORE CONFIGURATION

# Path to your oh-my-zsh installation.
export ZSH="/home/catherine/.oh-my-zsh"

ZSH_THEME="zhann"

HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="yyyy/mm/dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.


ZSH_TMUX_AUTOSTART='true'
plugins=(tmux git)
source $ZSH/oh-my-zsh.sh


source $(dirname $(gem which colorls))/tab_complete.sh

# ALIASES ---------------------------------------------------------------
alias lc='colorls -lA --sd'

alias zshconf="vim ~/.zshrc"
alias rzsh=". ~/.zshrc && echo '[ZSH] Config reloaded ... @(^,^)@'"

alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconf="vim ~/.vimrc"
alias tmuxconf="vim ~/.tmux.conf"

alias python="python3"
alias ipython="python -m IPython"

alias open="xdg-open"
alias ls_last="ls -alt | head"

# cd aliases for ongoing projects
alias covid="cd ~/Documents/epicentre/covid_herat"
alias measles="cd ~/Documents/epicentre/measles_alerts"

# tmux session aliases for ongoing projects
alias s_covid="source ~/.tmux/covid"
alias s_measles="source ~/.tmux/measles"

# FUNCTIONS -------------------------------------------------------------
# print csv with visual space aligning columns
function pretty_csv {
	column -t -s, -n "$@" | less -F -S -X -K
}

# print ;sv with visual space aligning columns
function pretty_semisv {
	column -t -s\; -n "$@" | less -F -S -X -K
}

