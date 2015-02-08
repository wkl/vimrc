" offical plugin
map <C-K> :pyf ~/.vim/ftplugin/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/.vim/ftplugin/clang-format.py<cr>

" vim-clang-format plugin
let g:clang_format#code_style = "google"
let g:clang_format#detect_style_file = 1
nnoremap <buffer><Leader>c :<C-u>ClangFormat<CR>
vnoremap <buffer><Leader>c :ClangFormat<CR>

