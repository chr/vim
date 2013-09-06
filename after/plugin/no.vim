" Come rendere la funzione locale solo a file .no ???
function! OpenLocationNO()
	" restituire a @" il suo contenuto
    let char = @"

    normal Byl

    if @" == '|'
        "normal lyw
        normal g^]
    elseif @" == '{'
        normal yi{
        if $TERM == 'screen'
            exe "silent! !screen ".s:REMOTEBROWSER." ".@"
            normal ^L
        endif
    elseif @" == '['
        normal gf
    else
        echo 'ERROR1'
    endif
endfu

