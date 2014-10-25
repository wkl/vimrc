" offical plugin
map <C-I> :pyf ~/.vim/ftplugin/clang-format.py<CR>
imap <C-I> <ESC>:pyf ~/.vim/ftplugin/clang-format.py<CR>i

" vim-clang-format plugin
let g:clang_format#code_style = "google"
let g:clang_format#detect_style_file = 1
nnoremap <buffer><Leader>c :<C-u>ClangFormat<CR>
vnoremap <buffer><Leader>c :ClangFormat<CR>

