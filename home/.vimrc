call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'reasonml-editor/vim-reason'
Plug 'rhysd/clever-f.vim'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

call plug#end()

" Syntax
syntax on

" Turn off syntax for long lines to improve performance
set synmaxcol=320

" Colors
set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Normal guibg=none
highlight NonText guibg=none

" Set it to scroll when cursor is # lines from top/bottom
set so=7

" Mouse support
" set mouse=a

" Line numbers
set nu
highlight LineNr ctermfg=Brown
set relativenumber
set ruler

" Improve backspace deletion behaviour
set backspace=indent,eol,start

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Smart case insensitive search
set ignorecase
set smartcase

" / searches before hitting enter
set incsearch

" Command line auto complete
set wildmenu

" Auto read external file changes
set autoread

" Colours
set t_Co=256

" Display file path
set ls=2

"""""""""""""""""""""""""""""""""
" Indentation, Tabs, Space, Etc "
"""""""""""""""""""""""""""""""""

set wrap

set autoindent
set smartindent

set expandtab       "Always uses spaces instead of tabs
set nojoinspaces    "Don't convert spaces to tabs
set shiftround      "Round spaces to nearest shiftwidth multiple
set smarttab        "Indent instead of tab at start of line

set shiftwidth=2    "An indent is 2 spaces
set softtabstop=2   "Insert 2 spaces when tab is pressed
set tabstop=2       "A tab is 2 spaces

""""""""""""""""""
" Remapping keys "
""""""""""""""""""

let mapleader = ","
let maplocalleader = ","
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>b :NERDTreeFind<CR>
nmap <leader>s :w<CR>
imap jj <esc>
nmap <leader><leader> <C-^>

" Nicer split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-left> <C-w>h
nnoremap <C-down> <C-w>j
nnoremap <C-up> <C-w>k
nnoremap <C-right> <C-w>l

""""""""""""""""""
" plugin: ctrlp "
""""""""""""""""""

" Search MRU, buffers, and files
nnoremap <C-o> :CtrlPMixed<CR>

" Ingore stuff to speed up search
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](\.git|\.hg|\.svn|_site|target|node_modules|bower_components|_build|dist|output|elm-stuff|coverage|deps|tmp)$',
      \ }

let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 0

" Clear cache
nmap <leader>c :CtrlPClearCache<cr>:CtrlP<cr>
