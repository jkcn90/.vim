"" Vundle Setup
set nocompatible                                  " choose no compatibility with legacy vi
filetype off                                      " required for vundle
if filereadable(expand('~/.vim/vimrc.vundle'))
  source ~/.vim/vimrc.vundle
endif
filetype plugin indent on                         " required for vundle

"" Font, colorscheme, and general display
syntax enable                                           " enable color coding of syntax
set encoding=utf-8
set showcmd				                                      " display incomplete commands

if has ('gui_running' )
  colorscheme gruvbox                                   " set colorscheme to gruvbox
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14    
  set guioptions-=T                                     " remove toolbar in gui
  set guioptions-=m                                     " remove menubar in gui
  set guioptions-=r                                     " remove scrollbar in gui
else
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14    
  set t_Co=256                                          " enable 256 color use for terminal
endif
set background=dark                                     " toggle dark background, alt=light

"" Whitespace
set nowrap				                " don't wrap lines
set tabstop=2 shiftwidth=2	      " a tab is two spaces
set expandtab			                " use spaces not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

"" Searching
set hlsearch	    " highlight matches
set incsearch	    " incremental searching
set ignorecase    " searchs are case insensitive ...
set smartcase	    " ... unless they contain at least one capital letter
set number        " enable line numbers

"" Mappings
:imap jj <Esc>      " map jj to the <esc> key

"" Language specific settings
if filereadable(expand('~/.vim/vimrc.languages'))
  source ~/.vim/vimrc.languages
endif
