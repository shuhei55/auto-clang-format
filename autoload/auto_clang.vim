function! auto_clang#Execute() abort
    if expand("%:e") ==# "cpp" || expand("%:e") ==# "hpp"|| expand("%:e") ==# "cc"|| expand("%:e") ==# "h"
        w
        let str = "clang-format -i " . expand("%")
        echo system(str)
        e!
        w
    endif
endfunction
