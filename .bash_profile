export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

test -r /sw/bin/init.sh && . /sw/bin/init.sh

function set_prompt {
  local DEFAULT="\[\e[0;0m\]"
  local MAGENTA="\[\e[1;35m\]"
  local CYAN="\[\e[1;36m\]"
  local LMAGENTA="\[\e[1;95m\]"
  local LCYAN="\[\e[1;96m\]"
  local git_branch='$(__git_ps1 ":%s")'
  export PS1="${MAGENTA}\w${CYAN}${git_branch} ${DEFAULT}$ "
}
set_prompt

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
