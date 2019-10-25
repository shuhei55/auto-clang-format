function! auto_clang#Execute() abort
    if exists('g:clang_bin_name')
        if expand("%:e") ==# "cpp" || expand("%:e") ==# "hpp"|| expand("%:e") ==# "cc"|| expand("%:e") ==# "h" || expand("%:e") ==# "c" || expand("%:e") ==# "h" || expand("%:e") ==# "ipp"
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
