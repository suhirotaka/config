"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/hirotaka.suzuki/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/hirotaka.suzuki/.cache/dein')
  call dein#begin('/Users/hirotaka.suzuki/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/hirotaka.suzuki/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('othree/yajs.vim') " ES6
  call dein#add('tpope/vim-fugitive') " git operation
  call dein#add('derekwyatt/vim-scala') " scala
  call dein#add('slim-template/vim-slim') " slim
  call dein#add('cohama/lexima.vim') " auto close parentheses
  call dein#add('fatih/vim-go') " golang

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" default preference
syntax on
set history=100
set number
set expandtab
set shiftwidth=2
set hls
set ic
set nonumber
filetype plugin indent on

" python indent
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" golang indent
autocmd FileType go setl tabstop=4 shiftwidth=4 softtabstop=0

" コメント行を自動挿入しない
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

" 前回カーソルのあった行を記憶する
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif

" ペースト時はインデントしない
if &term =~ "xterm"
  let &t_ti .= "\e[?2004h"
  let &t_te .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction

  noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
  cnoremap <special> <Esc>[200~ <nop>
  cnoremap <special> <Esc>[201~ <nop>
endif

" previm settings
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" scala filetype
au BufNewFile,BufRead *.scala setf scala

" disable beep
set visualbell t_vb=

" custom key mappings
inoremap <silent> jj <ESC>
