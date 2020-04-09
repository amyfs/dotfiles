call plug#begin("~/.vim/plugged")
Plug 'Yggdroot/indentLine'
Plug 'wincent/command-t'
call plug#end()

set expandtab
set shiftwidth=4
set softtabstop=4
set number
set mouse=a
set colorcolumn=80

set termguicolors
colorscheme NeoSolarized
set background=light
let g:indentLine_char='▏'

set clipboard=unnamedplus

map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

nmap <silent> <C-s> <Plug>(CommandT)
let g:CommandTAcceptSelectionMap='<C-t>'
let g:CommandTAcceptSelectionTabMap='<CR>'

au BufNewFile,BufRead *.tsx set filetype=typescript
