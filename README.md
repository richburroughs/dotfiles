# homesick-castle
Storage for my dotfiles

To install:

gem install homesick
homesick clone git@github.com:richburroughs/dotfiles.git
install oh-my-zsh: sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
homesick link
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
