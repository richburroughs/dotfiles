set shell=/bin/sh
" Use Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Install plugins with Vundle in vim/bundles
Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rodjek/vim-puppet'
Plugin 'godlygeek/tabular'
Plugin 'elzr/vim-json'
Plugin 'bling/vim-airline'
Plugin 'yegappan/mru'
Plugin 'scrooloose/syntastic'
"
syntax on
filetype plugin indent on
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
" Automagically set the right background color for Solarized on iTerm2.
" You need the Solarized colors installed in iTerm2 for this to work.
" If you're not using iTerm, you can manially change the entry after the
" last else. It defaults to dark.
if $ITERM_PROFILE=="Solarized Light"
  set background=light
elseif $ITERM_PROFILE=="Solarized Dark"
  set background=dark
else
  set background=light
endif
" Use Solarized color scheme
colorscheme solarized
" Airline settings
set laststatus=2 "Always display bar
set ttimeoutlen=50 "Remove delay leaving insert mode
