# Created by newuser for 5.7.1

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

EDITOR=$(which vi)
export EDITOR
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export ANTLRPATH=$HOME/.local/bin/antlr-4.7.1-complete.jar
# User specific aliases and functions
alias antlr4='java -Xmx500M -cp "$ANTLRPATH:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "$ANTLRPATH:$CLASSPATH" org.antlr.v4.gui.TestRig'
export CLASSPATH=".:$ANTLRPATH:$CLASSPATH"
alias pgrep='pgrep -l'
alias rsync='rsync -Phr --remove-source-files'
alias open="xdg-open"
export PATH="/home/amy/go/bin:/home/amy/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

vidot () {
    $EDITOR $HOME/dotfiles/$1
}

