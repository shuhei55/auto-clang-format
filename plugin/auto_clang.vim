if exists('g:loaded_auto_clang')
    finish
endif

let g:loaded_auto_clang = 1
let g:clang_bin_name = "clang-format"

command! ClangFormat call auto_clang#Execute()
