" plugins
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
" Plug 'maralla/completor.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
" Plug 'luochen1990/rainbow'
Plug 'pangloss/vim-javascript'
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'conornewton/vim-latex-preview'
call plug#end()

" editor settings
set t_Co=256
if !has('nvim')
  set term=builtin_ansi
endif
set nocompatible
syntax on
filetype plugin indent on
autocmd BufNewFile,BufRead *.html.twig set filetype=mason
autocmd BufNewFile,BufRead *.ejs set filetype=mason
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType mason setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
let g:tex_flavor = 'latex'
set number
set relativenumber
runtime! config/**/*.vim
set autoindent
set expandtab
color desert

" display a bar at column 80, wrap text
set textwidth=79
set colorcolumn=80
set scrolljump=5 " Line to scroll 
set scrolloff=3 " Minumum lines to keep above and below
set hlsearch " highlight matches

" Key mappings and shortcuts
" use comma for marks
nnoremap ' ,
" use ' for leader
let mapleader="'"

nnoremap <leader><space> :nohl<cr>
inoremap jk <esc>
" tab navigation
nnoremap J :tabprevious<CR>
nnoremap K :tabnext<CR>
" ctrl o to open file in new tab
nnoremap <C-o> :tabe 
" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" no shift for colon comds
nnoremap ; :
" Split windows easier
nnoremap vv :vsplit 
nnoremap ss :split 
" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Resize splits
nnoremap <silent> <leader>h 2<C-w><
nnoremap <silent> <leader>j 2<C-w>-
nnoremap <silent> <leader>k 2<C-w>+
nnoremap <silent> <leader>l 2<C-w>>
" Move splits
map <leader>H :wincmd H<cr>
map <leader>J :wincmd J<cr>
map <leader>K :wincmd K<cr>
map <leader>L :wincmd L<cr>

" close location buffer, useful for hiding syntastic errors
noremap <silent> <leader>q :lclose<CR>


" Ignore typescript-vim's indent rules
let g:typescript_indent_disable = 1

" options for CtrlP - fuzzy file finding
set runtimepath^=~/dotFiles/vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " ignore certain files in search
let g:ctrlp_map = "<C-@>" " Ctrl Space to search
" use tab to select completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <M-n> pumvisible() ? "\<C-n>" : "\<M-n>"
inoremap <expr> <M-p> pumvisible() ? "\<C-p>" : "\<M-p>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"


" Settings for pluggins

" Airline
if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
" Hides normal vim info bar for Airline
set noshowmode
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" use python3
let g:loaded_python_provider = 0
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.9/bin/python3'
set pyxversion=3

" Syntastic
noremap <silent> <leader>w :Errors<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" c++ version
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
" python
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']
" enable typescript checking
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_tslint_exec='/usr/bin/tslint'
" Only check html with :SyntasticCheck
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

" Coc
nnoremap <silent><nowait> <space>w  :<C-u>CocList diagnostics<cr>
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)


" rainbow
let g:rainbow_active = 1

" auto reload settings when .vim files are edited
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc,*.vim nested so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

"format json in buffer
map <leader>fj :%!python -m json.tool<cr>
highlight ExtraWhitespace ctermbg=red
