function! auto_clang#Execute() abort
    if expand("%:e") ==# "cpp" || expand("%:e") ==# "hpp"|| expand("%:e") ==# "cc"|| expand("%:e") ==# "h" || expand("%:e") ==# "c" || expand("%:e") ==# "h"
        w
        let str = g:clang_bin_name . " -i " . expand("%")
        echo system(str)
        e!
        w
    endif
endfunction
