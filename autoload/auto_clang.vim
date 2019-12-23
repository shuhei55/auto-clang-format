function! auto_clang#Execute() abort
    if exists('g:clang_bin_name')
        if expand("%:e") ==# "cpp" || expand("%:e") ==# "hpp"|| expand("%:e") ==# "cc"|| expand("%:e") ==# "h" || expand("%:e") ==# "c" || expand("%:e") ==# "h" || expand("%:e") ==# "ipp" || expand("%:e") ==# "java"
            w
            let str = g:clang_bin_name . " -i " . expand("%")
            echo system(str)
            e!
            w
        endif
    else
        echo "please set clang_bin_name"
    endif
endfunction

function! auto_clang#Black() abort
    if exists('g:black_bin_name')
        if expand("%:e") ==# "py"
            w
            let str = g:black_bin_name . " " . expand("%")
            echo system(str)
            e!
            w
        endif
    else
        echo "please set black_bin_name"
    endif
endfunction
