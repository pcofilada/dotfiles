set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Color Schemes
Plugin 'dracula/vim'
Plugin 'tomasr/molokai'

" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-syntastic/syntastic'
Plugin 'ngmy/vim-rubocop'

" Ruby on Rails
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" Elixir on Phoenix
Plugin 'elixir-lang/vim-elixir'

" HTML / CSS / JS
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim.git'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ap/vim-css-color'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

syntax on
command! W :w
let mapleader = "\\"
set mouse=ia

set encoding=utf-8
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set switchbuf=useopen
set nolazyredraw
set notimeout
set ttimeout
set ttimeoutlen=10
set showbreak=↪
set autoindent
set tabstop=2
set softtabstop=2
set textwidth=0
set shiftwidth=2
set expandtab
set ignorecase
set smartcase
set showmatch
set showcmd
set cursorline
set incsearch
set hlsearch
set backspace=indent,eol,start
set noswapfile

" Easy splitted window navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l

" NERDTree
nmap <tab> :NERDTreeToggle<cr>

" Clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nnoremap } <C-w>>
nnoremap { <C-w><lt>
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" CTRLP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'node_modules\|tmp\|coverage\|_build\|deps\|vendor'

" Airline
set laststatus=2

" JSX
let g:jsx_ext_required = 0

" Syntastic
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['rubocop']

colorscheme molokai
