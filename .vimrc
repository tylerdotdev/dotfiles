set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-airline/plugin/airline.vim

call plug#begin('~/.vim/plugged')

Plug 'drewtempelmeyer/palenight.vim'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'

call plug#end()

syntax on
set t_ut=
set t_Co=256
set termguicolors
set background=dark
colorscheme palenight
set smartindent
set clipboard=unnamed " use os clipboard
set shiftwidth=2 " numer of spaces when shift indenting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set number " show line numbers
set cursorline " highlight current line\
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " lol
let g:ctrlp_show_hidden=1
set noswapfile
let g:jsx_ext_required = 0

" airline
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#branch#enabled = 1

" # Mappings
" ctrl-p plugin shortcut
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" move between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>

" Nerd Tree toggling
map <C-a> :NERDTreeToggle<CR>

" Start pathogen
execute pathogen#infect()
call pathogen#helptags()

set noruler
set noshowmode
set hidden
