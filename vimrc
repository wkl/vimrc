runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" color
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" set leader key
let mapleader = ","

" fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>

" buffers
nnoremap <S-b> :buffers<CR>:buffer<Space>
:let bclose_multiple = 0

" split navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" nerdtree
" autocmd vimenter * if !argc() | NERDTree | endif
map <D-e> :NERDTreeToggle<CR>
map <leader>e :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>

" Maps more bash-like keys to command line mode (colon mode)
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>

" Tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
set tags=./tags;/

" Tag List
let Tlist_Inc_Winwidth = 0
nnoremap <S-t> :TlistToggle<CR>

" Ack
nmap <leader>a <Esc>:Ack!

set modeline
