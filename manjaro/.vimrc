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
" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
" IDE
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
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
set laststatus=2
set cursorline
" This line will apply indent as 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"" Default clipboard. Check https://vim.fandom.com/wiki/Accessing_the_system_clipboard
"" If not working, on Gnome install vim-gnome; on Mint install vim-gtk3
set clipboard=unnamedplus

"" Mappings - Normal Mode
nmap <leader>q :q<CR>
nmap <leader>j 10j
nmap <leader>k 10k
nmap <leader>; $a;<Esc>

"" Mappings - Insert Mode
imap jj <Esc>

"" Shortcuts for NERDTree
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>+ 10<C-w>>
nmap <leader>- 10<C-w><
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l

" Shortcuts for COC
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gi <plug>(coc-implementation)

" Shorcuts for ZFZ
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>

" Shortcuts for Easymotion
nmap <leader>s <plug>(easymotion-s2)

" The Silver Searcher (https://geoff.greer.fm/ag/) provides command :Ag for searching recursively.
" Installation for Manjaro: community/the_silver_searcher
nmap <leader>a :Ag<CR>

