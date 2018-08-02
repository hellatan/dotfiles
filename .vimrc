syntax on
set number
set tabstop=4 shiftwidth=4 expandtab
set nolist
set ignorecase
set textwidth=100
set guicursor=i:ver25-iCursor

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
