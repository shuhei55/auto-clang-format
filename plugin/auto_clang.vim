if exists('g:loaded_auto_clang')
    finish
endif

let g:loaded_auto_clang = 1

command! ClangFormat call auto_clang#Execute()
