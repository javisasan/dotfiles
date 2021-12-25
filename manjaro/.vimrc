"" Install plugins using Vim-Plug ( https://github.com/junegunn/vim-plug )
call plug#begin('~/.vim/plugged')" 
" Theme
Plug 'morhetz/gruvbox'
"Plug 'shinchu/lightline-gruvbox.vim'
" NERDTree
Plug 'scrooloose/nerdtree'
" Status line
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let mapleader = " "
syntax on
colorscheme gruvbox
set bg=dark
" Comment / uncomment following line in order to set transparency
highlight Normal ctermbg=NONE guibg=NONE
let g:gruvbox_contrast_dark = "hard"
set number
set relativenumber
set tabstop=4
set laststatus=2
set cursorline

"" Mappings - Normal Mode
nmap <leader>q :q<CR>
nmap <leader>j 10j
nmap <leader>k 10k

"" Mappings - Insert Mode
imap jj <Esc>

"" Shortcuts for NERDTree
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>+ 10<C-w><
nmap <leader>- 10<C-w>>
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l

" Shortcuts for COC
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gi <plug>(coc-implementation)


