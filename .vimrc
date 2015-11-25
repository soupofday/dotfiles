set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-markdown'
Plugin 'jelera/vim-javascript-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" easymotion settings
let mapleader = ","
let g:EasyMotion_smartcase=1
nmap <Leader>l <Plug>(easymotion-lineforward)
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>h <Plug>(easymotion-linebackward)
nmap <Leader>s <Plug>(easymotion-s)
nmap <Leader>n <Plug>(easymotion-n)

let g:EasyMotion_startofline = 1 " keep cursor column when JK motion

" airline settings
let g:airline#extensions#tabline#enabled = 1
set guifont=Liberation_Mono_for_Powerline_Regular:h10
let g:airline_powerline_fonts = 1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '|'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '|'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''


  set laststatus=2 " so that the status line is always showing

colorscheme molokai

" NERDTree toggle
map <C-n> :NERDTreeToggle<CR>

" encoding
set encoding=utf-8
set fileencoding=utf-8

" syntax coloring
syntax on

" get full 256 colors
set t_Co=256
