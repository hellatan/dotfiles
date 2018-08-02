" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
    " use double quotes only for comments
    Plug 'hellatan/vim-javascript'
" Initialize plugin system
call plug#end()

syntax on " color coding
syntax enable " enable syntax processing

colorscheme holokai

set nolist " do not show end of line character
set ignorecase " ignorecase in search patterns
set textwidth=100
set guicursor=i:ver25-iCursor " what the cursor should look like

set expandtab " spaces are better than a tab character
set smarttab
set shiftwidth=4 " tab width
set softtabstop=4

set mouse=a " mouse support in console

set number " line numbers

set showcmd " show command in bottom bar
set cursorline " show current line cursor is on

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ 'iTerm'
    " let &t_SI = '\<Esc>]50;CursorShape=1\x7' " Vertical bar in insert mode
    " let &t_EI = '\<Esc>]50;CursorShape=0\x7' " Block in normal mode
endif
