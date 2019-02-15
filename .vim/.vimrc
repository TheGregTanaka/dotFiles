set term=builtin_ansi
filetype plugin indent on
set nocompatible
source ~/devConfig/.vim/autoload/pathogen.vim
execute pathogen#infect('~/devConfig/.vim/bundle/{}')
execute pathogen#helptags()
syntax on
set number
set relativenumber
runtime! config/**/*.vim
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

" use comma for marks
nnoremap ' ,
" use ' for leader
let mapleader="'"

" Split windows easier
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
" Window Pane move 
map <leader>H :wincmd H<cr>
map <leader>K :wincmd K<cr>
map <leader>L :wincmd L<cr>
map <leader>J :wincmd J<cr>

" Airline
set noshowmode

" options for CtrlP - fuzzy file finding
set runtimepath^=~/devConfig/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " ignore certain files in search
let g:ctrlp_map = "<C-@>" " Ctrl Space to search
" jk is escape  -.-
inoremap jk <esc>
" tab navigation
nnoremap J :tabprevious<CR>
nnoremap K :tabnext<CR>
" ctrl o to open file in new tab
nnoremap <C-o> :tabe 
" no shift for colon comds
nnoremap ; : 
vnoremap ; : 
" use tab to select completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <M-n> pumvisible() ? "\<C-n>" : "\<M-n>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <M-p> pumvisible() ? "\<C-p>" : "\<M-p>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
set textwidth=79
set colorcolumn=80
set scrolljump=5 " Line to scrole when 
set scrolloff=3 " Minumum lines to keep above and below
set hlsearch " highlight matches
nnoremap <leader><space> :nohlsearch<cr>
" auto reload settins when .vim files are edited
augroup myvimrc
	    au!
		    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc,*.vim nested so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
		augroup END
