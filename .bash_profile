export PS1='\w$(__git_ps1 ":%s") $ '
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

test -r /sw/bin/init.sh && . /sw/bin/init.sh
