set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/L9'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp':'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'prettier/vim-prettier', {'do': 'yarn install'}
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'lervag/vimtex'
Plugin 'vim-scripts/tinykeymap'
"Themes:
Plugin 'vim-scripts/darktango.vim'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'morhetz/gruvbox'

call vundle#end()

" ==== Colors and other basic settings
colorscheme gruvbox
set guifont=Inconsolata\ 10
set fillchars+=vert:\$
syntax enable
set background=dark
set ruler
set hidden
set rnu
set laststatus=2
set autoindent
set smartindent
set colorcolumn=80
set shiftwidth=4
set tabstop=4

" ==== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" === flake8
let g:flake8_show_in_file=1

" ==== snippets
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ==== Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
"nmap f <Plug>(easymotion-s)

" ==== moving around
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" ==== disable mouse
set mouse=c

" ==== disable swap file warning
set shortmess+=A

" ==== ESC mapping
inoremap jj <ESC>
inoremap JJ <ESC>

" ==== Cntl-C
noremap <C-c> :qa<CR>

" ==== Compile
noremap <C-/> :!make<CR>
