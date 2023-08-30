# dotfiles
Environment config files to make set up on different devices easier.

Quick setup
```
# set up key - this should be done manually
# on mac to set brew linkings
brew install vim
brew install tmux
brew install source-highlight
brew install gdb
" may have to manually add codesign cert on mac
codesign --entitlements gdb-entitlement.xml -fs gdb-cert codesign /usr/local/bin/gdb

# pull down config files
cd ~
git clone git@github.com:TheGregTanaka/dotfiles.git dotFiles
cd dotFiles
# install plug
curl -fLo ~/dotFiles/vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# back up existing configs
cd ~
cat ~/.bash_profile >> ~/.bash_profile.old
cat ~/.vim >> ~/.vim.old
cat ~/.vimrc >> ~/.vimrc.old
cat ~/.tmux.conf >> ~/.tmux.conf.old
cat ~/.ideavimrc >> ~/.ideavimrc.old
cat ~/.gitconfig >> ~/.gitconfig.old
cat ~/.gitignoreglobal >> ~/.gitignoreglobal.old
cat ~/.gdbinit >> ~/.gdbinit.old

# remove old files
rm ~/.bash_profile
rm ~/.vim
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.ideavimrc
rm ~/.gitconfig
rm ~/.gitignoreglobal
rm ~/.gdbinit
rm ~/.zprofile

# set up symlinks
ln -s ~/dotFiles/gdbinit ~/.gdbinit
ln -s ~/dotFiles/bash_profile ~/.bash_profile
ln -s ~/dotFiles/vim ~/.vim
ln -s ~/dotFiles/vim/.vimrc ~/.vimrc
ln -s ~/dotFiles/tmux.conf ~/.tmux.conf
ln -s ~/dotFiles/vim/.vimrc ~/.ideavimrc
ln -s ~/dotFiles/gitconfig ~/.gitconfig
ln -s ~/dotFiles/gitignoreglobal ~/.gitignoreglobal
mkdir ~/.zsh
ln -s ~/dotFiles/gitscripts/git-completion.zsh ~/.zsh/_git
ln -s ~/dotFiles/zprofile ~/.zshrc

# load
#source ~/.bash_profile
source ~/.zshrc
tmux source-file ~/.tmux.conf

```

Largely copied from [@squk](https://github.com/squk)
