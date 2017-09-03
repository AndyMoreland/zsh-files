# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="cloud"


# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails github git textmate ruby lighthouse)
plugins=(git osx rake)
alias gitx="open -a gitx ."

source $ZSH/oh-my-zsh.sh

setopt extended_glob
preexec () {
    if [[ "$TERM" == "screen" ]]; then
	local CMD=${1[(wr)^(*=*|sudo|-*)]}
	echo -ne "\ek$CMD\e\\"
    fi
}

export EDITOR=emacsclient

sshka () {
	while [ 1 ]; do
	  ssh $1
	  sleep 5
	done
}

lb () {
    open -aLaunchbar $1
}

alias gist="gist -c"
alias xcopy="xclip -selection clipboard"
alias xpaste="xclip -selection clipboard -o"
alias autopr="hub pull-request"
alias k="kubectl"

# Customize to your needs...
export PATH=/usr/texbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/sbin:/opt/local/lib/postgresql83/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export NODE_PATH="/usr/local/lib/node_modules"
eval "$(fasd --init auto)"

[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.conscript/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
