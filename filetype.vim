" my filetype file (:h new-filetype)
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
	au! BufRead,BufNewFile *.rem	setfiletype remind
	au! BufRead,BufNewFile *.zz	setfiletype zz
	au! BufRead,BufNewFile *.no	setfiletype no
augroup END
