
function! todo#ToggleTask() abort
    let l:current_line = getline('.')
    let l:current_lineno = line('.')

    if match(l:current_line, '^\s*-') != -1
         call setline(l:current_lineno, substitute(l:current_line, '^\(\s*\)-', '\1✔', ''))
    elseif match(l:current_line, '^\s*✔') != -1
         call setline(l:current_lineno, substitute(l:current_line, '^\(\s*\)✔', '\1-', ''))
    endif
endfunction
