runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" set leader key
let mapleader = ","

" fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>
" fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>

" buffers
nnoremap <S-b> :buffers<CR>:buffer<Space>
:let bclose_multiple = 0

" split navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" nerdtree
autocmd vimenter * if !argc() | NERDTree | endif
map <D-e> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>

" Maps more bash-like keys to command line mode (colon mode)
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>

