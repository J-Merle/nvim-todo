
function! todo#ToggleTask() abort
    let l:current_line = getline('.')
    let l:current_lineno = line('.')

    if match(l:current_line, '^\s*-') != -1
        call setline(l:current_lineno, substitute(l:current_line, '^\(\s*\)-', '\1✔', ''))
        call cursor(l:current_lineno, 1)
        call search('^\s*\S', 'ce')
        echo "oui"
    elseif match(l:current_line, '^\s*✔') != -1
        call setline(l:current_lineno, substitute(l:current_line, '^\(\s*\)✔', '\1-', ''))
        call cursor(l:current_lineno, 1)
        call search('^\s*\S', 'ce')
    endif
endfunction

function! todo#NextUncompletedTask() abort
    call search('^\s*-')
endfunction

function! todo#PreviousUncompletedTask() abort
    call search('^\s*-', 'b')
endfunction

