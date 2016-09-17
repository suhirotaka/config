alias vi='vim -o'
alias ll='ls -la'
alias la='ls -la'

set -o vi

export PATH="$HOME/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

source ~/.git-completion.bash
source ~/.nvm/nvm.sh
