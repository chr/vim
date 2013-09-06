map <buffer> <F1> "+P:g/^$/d<CR>:%s/\n/ /g<CR>gg"+D

" Paste from clipboard and give a format useful for excel
map <buffer> <F2> "+p:g/^$/d<CR>:%s/ \+/	/g<CR>gg"+dG

imap <buffer> <F8> <Esc>T_Da-<Esc>Vu:s/\<\S\+\>/\u&/g<CR>:s/\(\s\)\(\d\{4\}\)/-\2/<CR>:s/ /-/ge<CR>$"+p:g/^$/d<CR>:%s/\n/ /g<CR>/_-<CR>v$ugg:s/\(\a\)\(\S\+\)/\u\1\2/g<CR>:s/ /_/g<CR>:s/[.,]//ge<CR>:s/_$/\.pdf/<CR>:s/_-/_<C-R>"--/<CR>:s/\(\d\{4\}_\a\+--\)_\?\(\a\)/\1\u\2/<CR>:s/?/_Q/ge<CR>:s/['’]/-/ge<CR>:s/:/_/ge<CR>:s/_Etal/_etal/e<CR>"+D"+p:w<CR>

imap <buffer> <S-F8> -<Esc>"+p:%s/\n/ /ge<CR>:s/\<\(\a\)\(\a\+\>\)\?/\u\1\L\2/g<CR>:s/ \(\d\{4\}\)/-\1/<CR>:s/ /_/g<CR>:s/[:;]/__/ge<CR>:s/[,+]//ge<CR>:s/['’]s\?/-/ige<CR>:s/?/-Q/ge<CR>:s/[^0-9a-zA-Z ]*$/.pdf/e<CR>:s/_Etal/_etal/e<CR>V"+y:s/\(\d\{4\}.\{-}-\)_\?/\1-/<CR>:s/\(Fdi\\|Usa\\|Eu\\|Ocse\)/\U\1/ge<CR>:w<CR>
