# dotfiles
Storage for my dotfiles

To install:

```
gem install homesick
homesick clone git@github.com:richburroughs/dotfiles.git
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
homesick link
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
curl https://sdk.cloud.google.com | bash
brew install pyenv-virtualenvwrapper
```
