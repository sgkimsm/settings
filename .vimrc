source $VIMRUNTIME/mswin.vim
behave mswin

set nu
set incsearch
set hlsearch
set ignorecase
set smartcase
set cursorline
set background=dark
set colorcolumn=80
colorscheme darkblue

"For gtags gtags-cscope
let Gtags_Auto_Map = 1

" Easily GREP current word in current file.
command GREP :execute 'vimgrep '.expand('<cword>').' '.expand('%') | :copen | :cc

noremap  :execute "term git blame -L".eval(line(".")-5).",+10 -- %"<cr>
unmap <C-F>
