set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-commentary'
Plugin 'neoclide/coc.nvim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'vim-airline/vim-airline' 
Plugin 'jacoborus/tender.vim'
Plugin 'preservim/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on 
set rnu
set encoding=utf-8

imap jj <esc>
imap JJ <esc>

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <Tab><Tab> :CocCommand document.toggleInlayHint <CR> <CR>


colorscheme tender
set background=dark
let g:airline_theme='tender'

" tab completion for Coc
function! CheckBackspace() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<Tab>" :
	          \ coc#refresh()
