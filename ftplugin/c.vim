" offical plugin
map <C-[> :pyf ~/.vim/ftplugin/clang-format.py<cr><cr>
imap <C-[> <c-o>:pyf ~/.vim/ftplugin/clang-format.py<cr><cr>

" vim-clang-format plugin
let g:clang_format#code_style = "google"
let g:clang_format#detect_style_file = 1
nnoremap <buffer><Leader>c :<C-u>ClangFormat<CR>
vnoremap <buffer><Leader>c :ClangFormat<CR>

