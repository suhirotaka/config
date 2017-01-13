alias vi='vim -o'
alias vim='vim -o'
alias ll='ls -l'
alias la='ls -la'
alias l.='ls -d .*'
alias ll.='ls -ld .*'
alias dockerc='docker-compose'

set -o vi

export PATH="$HOME/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

source ~/.git-completion.bash
source ~/.nvm/nvm.sh
