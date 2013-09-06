setl tw=66 nohls fo=tqnl

setl spell

iabbr _ap A presto.chr

nmap <buffer> <Leader>d vG?\n--\s<CR>dO<Esc>'"''O<CR>

vmap <buffer> <F8> d?^><CR>/[^ >]<CR>y0o<C-O>p[...]<Esc>
vmap <buffer> <Leader><F8> di<CR><Esc>?^><CR>/[^ >]<CR>y0jPO<C-O>p[...]<Esc>

vmap <buffer> <Leader>t di<CR><Esc>k:.,.g/^$/d<CR>O[...]<Esc>

"cmap wq :.,$g/^>/d<CR>:x
"au BufWinLeave <buffer> exec '.,$g/^>/d' | write
cmap <buffer> wq call EndMail()

fun! EndMail()
	exec 'silent .,$g/^>/d'
	if search('^[^>|]*\c\<\(anex\|attach\|alleg\|pj\|joint\)','w') > 0
		call confirm("Remember attachment")
	endif
	exec 'conf q'
	"exec 'x'
endfun
