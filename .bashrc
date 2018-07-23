alias vi='vim -o'
alias vim='vim -o'
alias ll='ls -l'
alias la='ls -la'
alias l.='ls -d .*'
alias ll.='ls -ld .*'
alias dkrc='docker-compose'

set -o vi

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
export NODE_PATH=$(npm root -g)

source ~/.git-completion.bash
source ~/.git-prompt.sh
source ~/.nvm/nvm.sh
[[ -s "/Users/hirotaka.suzuki/.gvm/scripts/gvm" ]] && source "/Users/hirotaka.suzuki/.gvm/scripts/gvm"
