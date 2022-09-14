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
alias lclast='colorls -ogAlt --gs'
#alias tree='colorls --tree=2'

alias zshconf="vim ~/.zshrc"
alias rzsh=". ~/.zshrc && echo '[ZSH] Config reloaded ... @(^,^)@'"

alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimconf="vim ~/.vimrc"
alias tmuxconf="vim ~/.tmux.conf"
alias gitconf="vim ~/.git-credentials"
alias gitwich="git diff --name-only"

alias python="python3"
alias ipython="python -m IPython"

alias open="xdg-open"
alias lslast="ls -alt | head"

# cd aliases for ongoing projects
alias covid="cd ~/Documents/epicentre/covid_herat"
alias measles="cd ~/Documents/epicentre/measles_alerts"
alias oneoff="cd ~/Documents/epicentre/one_offs"
alias priority="cd ~/Documents/epicentre/measles_priority"
alias tinker="cd ~/Documents/packages/tinker"
alias epimaps="cd ~/Documents/packages/epiplaces"
alias epiplots="cd ~/Documents/packages/epiplots"
alias epiboards="cd ~/Documents/packages/epiboards"
alias dashboard="cd ~/Documents/epicentre/dashboard_drc_measles"

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

# git it done (see what i did there?)
gitout() {
	git add "$1"
	git commit -m "${2:-update}"
	git push
}

# colorls tree with specified depth
tree() {
	colorls --tree="${1:-2}"
}

