autoload -U colors && colors
#prompt
PROMPT='[%F{213}%n@%m%f]%~%# '
RPROMPT='[%F{1}%D{%H:%M:%S}%f]'
#env vars
export EDITOR=$(which nvim)
export ANTLRPATH=$HOME/.local/bin/antlr-4.7.1-complete.jar
export CLASSPATH=".:$ANTLRPATH:$CLASSPATH"
export PATH="$HOME/.local/bin:$HOME/bin:$HOME/go/bin:$HOME/.pyenv/bin:$PATH"
export N_PREFIX="$HOME/.local"
#aliases
alias pg='pgrep -li'
alias rsync='rsync -Phr --remove-source-files'
alias open="xdg-open"
alias antlr4='java -Xmx500M -cp "$ANTLRPATH:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "$ANTLRPATH:$CLASSPATH" org.antlr.v4.gui.TestRig'
alias reload-xterm='xrdb -merge ~/.Xresources'
alias pk='pkill -i'
alias vi=$EDITOR
alias diff='diff -swaBby --color=auto --width=100'
alias ns='exec -l $SHELL'
#functions
vidot () {
    $EDITOR $HOME/dotfiles/$1
}

#setup calls
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
