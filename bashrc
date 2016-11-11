alias vi='/usr/local/Cellar/vim/8.0.0054/bin/vim -o'
alias vim='/usr/local/Cellar/vim/8.0.0054/bin/vim -o'
alias ll='ls -l'
alias la='ls -la'
alias l.='ls -d .*'
alias ll.='ls -ld .*'

set -o vi

export PATH="$HOME/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

source ~/.git-completion.bash
source ~/.nvm/nvm.sh
