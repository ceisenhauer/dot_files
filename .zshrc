# CORE CONFIGURATION

export ZSH="/home/catherine/.oh-my-zsh"
export EDITOR='vim'

ZSH_THEME="zhann"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy/mm/dd"


ZSH_TMUX_AUTOSTART='true'
plugins=(tmux git)

source $ZSH/oh-my-zsh.sh
source $(dirname $(gem which colorls))/tab_complete.sh

# ALIASES ---------------------------------------------------------------
alias lc='colorls -ogA --gs'
alias tree='colorls --tree=2'

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
# these don't work yet =\...todo for future catherine
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

