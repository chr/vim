" Pathogen
call pathogen#infect()
call pathogen#helptags()

" vimwiki
let g:vimwiki_folding=1

" File-type detection
filetype plugin indent on

"set backspace=start,eol

set enc=utf-8
set fencs=ucs-bom,utf-8,latin1
set fenc=utf-8

"set guifont=
"set guifontwide=

let g:is_kornshell=1

set wildmenu wildmode=longest:full

set diffopt=filler,horizontal

set showcmd

set pastetoggle=<F5>

"Look
colorscheme nokto
set guicursor=a:block-blinkon0

set helpheight=15

" swap and tmp files
set directory=.,~/tmp/vim
set backupdir=~/tmp/vim

"backupdir=expand("%:p:h")
".fnamemodify(expand("%:p"),":gs?/?-?")

"ATT: * is a list item:
set formatlistpat=^\\s*\\(\\d\\\|[-*]\\)\\+[\\]:.)}\\t\ ]\\s*

"Syntax highlight and color
syntax enable

"Search
set hls is

"For :set list
set listchars=eol:$,tab:\|-

"Tabs
set ts=4 sw=4 noet

"numbering (3 cols)
set nu nuw=3

"mark wrapped lines with a "+":
set showbreak=+

"indentation
set ai

set ruler

"MAPS

map <Leader>n :if &nu<CR>set nonu showbreak=+<CR>else<CR>set nu showbreak=""<CR>endif<CR><CR>

map § ~
map! § ~

map ° `
imap ° `

map <Space> <PageDown>
"map   <PageUp>

"inoremap <CR> <CR><Space><BS>
"inoremap <buffer> <Enter> <CR><Space><C-H>

"ml:
map <F9> :set hls! hls?<CR>
"imap <F9> <C-O>:set hls! hls?<CR>
