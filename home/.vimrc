set shell=/bin/sh
" Use Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" Install plugins with Vundle in vim/bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rodjek/vim-puppet'
Plugin 'godlygeek/tabular'
" Plugin 'elzr/vim-json'
Plugin 'bling/vim-airline'
" Plugin 'yegappan/mru'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
" Plugin 'easymotion/vim-easymotion'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'wikitopian/hardmode'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
syntax on
filetype plugin indent on
set number
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
" Ctrl+n opens Nerdtree
map <C-n> :NERDTreeToggle<CR>
" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
