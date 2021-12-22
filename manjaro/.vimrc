" Install plugins using Vim 8+ packages, for example:
" git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
"
"" NERDTree
" https://github.com/preservim/nerdtree  					-> NERDTree
"
"" Status line
" https://github.com/itchyny/lightline.vim 					-> Statusline
" https://github.com/maximbaz/lightline-ale
"
"
" https://github.com/sheerun/vim-polyglot					-> Dev languages package

" -------


syntax on
colorscheme desert
set number
set relativenumber
set tabstop=4
set laststatus=2

let mapleader = " "


" Install plugins using Vim-Plug ( https://github.com/junegunn/vim-plug )
call plug#begin('~/.vim/plugged')" 

" NERDTree
Plug 'scrooloose/nerdtree'

" Status line
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Code completion through PHPActor
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

call plug#end()

" Mappings

" jj acts as Esc in Insert mode
imap jj <Esc>
" press "q" for closing file
nmap <leader>q :q<CR>

" Shortcuts for NERDTree
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>+ 10<C-w><
nmap <leader>- 10<C-w>>
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l

" Shortcuts for COC
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gi <plug>(coc-implementation)

" Shortcuts for PHPActor
"nmap <leader>gd :PhpactorGotoDefinition<CR>
"nmap <leader>gt :PhpactorGotoType<CR>
"nmap <leader>gi :PhpactorGotoImplementation<CR>

