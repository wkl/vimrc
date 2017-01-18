runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" color and font
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

if has('gui_running')
    set background=light
    colorscheme solarized
    set gfn=Monaco:h13
endif

" disable mouse in console
if !has('gui_running')
    set mouse-=a
endif

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
let NERDTreeQuitOnOpen=1
set splitright

" Maps more bash-like keys to command line mode (colon mode)
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>

" Tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
set tags=./tags;/

" TagBar
nnoremap <S-t> :TagbarToggle<CR>

" Ack
nmap <leader>a <Esc>:Ack!

set modeline

" vimdiff
set diffopt+=iwhite
set diffexpr=DiffW()
function! DiffW()
  let opt = ""
   if &diffopt =~ "icase"
     let opt = opt . "-i "
   endif
   if &diffopt =~ "iwhite"
     let opt = opt . "-w " " vim uses -b by default
   endif
   silent execute "!diff -a --binary " . opt .
     \ v:fname_in . " " . v:fname_new .  " > " . v:fname_out
endfunction

" gitgutter
set updatetime=2000
" uncomment to disable gitgutter
" autocmd vimenter * GitGutterDisable
map <leader>g :GitGutterToggle<CR>
