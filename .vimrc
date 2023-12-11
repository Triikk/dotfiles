" NERDTree shortcuts
nnoremap <C-b> :NERDTreeToggle<CR>

" move line of text using CTRL+[jk]
nmap <C-j> mz:m+<cr>`z
nmap <C-k> mz:m-2<cr>`z
vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z

" important
if has('termguicolors')
	set termguicolors
endif

set encoding=utf-8

" colorscheme
set background=dark
colorscheme gruvbox

" additional options
set number
set relativenumber
set tabstop=4
set shiftwidth=4

" plugins
call plug#begin()

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'

call plug#end()

" code completion
source ~/.vim/config/coc.vim
