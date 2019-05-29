set term=builtin_ansi
set nocompatible
source ~/devConfig/vim/autoload/pathogen.vim
execute pathogen#infect('~/devConfig/vim/bundle/{}')
execute pathogen#helptags()
syntax on
filetype plugin indent on
set number
set relativenumber
runtime! config/**/*.vim
set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2
" set tabstop=4
" set shiftwidth=4
color desert
call plug#begin('~/devConfig/vim/plugged')
Plug 'luochen1990/rainbow'
call plug#end()

" use comma for marks
nnoremap ' ,
" use ' for leader
let mapleader="'"

" Split windows easier
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s
" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Window Pane move 
map <leader>H :wincmd H<cr>
map <leader>K :wincmd K<cr>
map <leader>L :wincmd L<cr>
map <leader>J :wincmd J<cr>

" Hides normal vim info bar for Airline
set noshowmode

" Ignore typescript-vim's indent rules
" let g:typescript_indent_disable = 1

" options for CtrlP - fuzzy file finding
set runtimepath^=~/devConfig/vim/bundle/ctrlp.vim
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
" display a bar at column 80, wrap text
set textwidth=79
set colorcolumn=80
set scrolljump=5 " Line to scrole when 
set scrolloff=3 " Minumum lines to keep above and below
set hlsearch " highlight matches
nnoremap <leader><space> :nohl<cr>
" auto reload settins when .vim files are edited

" syntastic recommended options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" enable typescript checking
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_tslint_exec='/usr/bin/tslint'
" Only check html with :SyntasticCheck
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" rainbow
let g:rainbow_active = 1

augroup myvimrc
	    au!
		    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc,*.vim nested so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
		augroup END
