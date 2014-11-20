set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
autocmd BufWritePre * :%s/\s\+$//e
