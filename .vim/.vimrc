set term=builtin_ansi
filetype plugin indent on
set nocompatible
source ~/devConfig/.vim/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
syntax on
set number
set relativenumber
runtime! config/**/*.vim
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
" options for CtrlP - fuzzy file finding
set runtimepath^=~/.vim/bundle/ctrlp.vim
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
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
