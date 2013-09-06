" CHANGED \w FOR \s !!!!!!!!!!!!!!!!!!!
"
" Head1 matches a non-white-space char at the beginning of the line:
syn match Head1 "^\S.*$"

" Head2 matches a line that begins with 1 tab followed by a 'word' character
" and ends with a 'newline' followed by 2 tabs (ok, actually this matches 2 or
" more lines, but the 'oneline' at the end is meant to match only one-line!),
" then 'ms' and 'me' select the appropriate beginning/ending (same thing for
" Head3 and Head4, but with a +1 for every number):
" NOTA: PUSE \a PARA QUE LAS LISTAS NO PAREZCAN TITULOS, PERO SE DEBERà DE
" CAMBIAR PORQUE EL INDENT INICIAL DEL TEXTO EN LA LISTA *NO ESTà BIEN*
syn region Head2 start="^\t\{1}\a"ms=s+1 end="$\n\t\{2}"me=e-2 oneline
syn region Head3 start="^\t\{2}\a"ms=s+2 end="$\n\t\{3}"me=e-3 oneline
syn region Head4 start="^\t\{3}\a"ms=s+3 end="$\n\t\{4}"me=e-4 oneline

syn match Emph1 "\s\*\S\_.\{-}\S\*" contains=Marks
syn match Emph2 "\s_\S\_.\{-}\S_" contains=Marks
syn match MyTag "\s|\S\_.\{-}\S|" contains=Marks
syn match MyLink "\s{\S\_.\{-}\S}" contains=Marks

syn match IsLink "\[\[.\{-}\]\]" contains=LinkMarks

" The actual colours:
hi Head1		term=bold	ctermbg=Yellow		ctermfg=Black	guibg=Yellow	guifg=Blue
hi Head2		term=bold	ctermbg=Red			ctermfg=Black	guibg=Red		guifg=Black
hi Head3		term=bold	ctermbg=Blue		ctermfg=Yellow	guibg=Blue		guifg=Yellow
hi Head4		term=bold	ctermbg=DarkGreen	ctermfg=White	guibg=DarkGreen	guifg=White
hi Emph1		term=bold	ctermbg=Yellow		ctermfg=Blue	guibg=White		guifg=Black
hi Emph2		term=bold	ctermbg=Yellow		ctermfg=Blue	gui=underline
hi IsLink		term=bold	ctermbg=DarkGreen	ctermfg=White	guibg=Red		guifg=White
hi MyTag		term=bold	ctermbg=DarkGreen	ctermfg=White	guibg=Red		guifg=White
hi MyLink		term=bold	ctermbg=DarkBlue	ctermfg=White	guibg=Red		guifg=White

" help.vim:
syn match Marks contained "\s\?\(\*\|_\||\|{\|}\)"
hi def link Marks Ignore
syn match LinkMarks contained "\(\[\|\]\)"
hi def link LinkMarks Ignore

"highlight Folded ctermfg=DarkGreen ctermbg=LightCyan
" vim: ts=4
