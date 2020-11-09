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

# set up symlinks
cd ~
cat ~/.bash_profile >> ~/.bash_profile.old
rm ~/.bash_profile
cat ~/.vim >> ~/.vim.old
rm ~/.vim
cat ~/.vimrc >> ~/.vimrc.old
rm ~/.vimrc
cat ~/.tmux.conf >> ~/.tmux.conf.old
rm ~/.tmux.conf
cat ~/.ideavimrc >> ~/.ideavimrc.old
rm ~/.ideavimrc
cat ~/.gitconfig >> ~/.gitconfig.old
rm ~/.gitconfig
cat ~/.gitignoreglobal >> ~/.gitignoreglobal.old
rm ~/.gitignoreglobal
cat ~/.gdbinit >> ~/.gdbinit.old
rm ~/.gdbinit
ln -s ~/dotFiles/gdbinit ~/.gdbinit
ln -s ~/dotFiles/bash_profile ~/.bash_profile
ln -s ~/dotFiles/vim ~/.vim
ln -s ~/dotFiles/vim/.vimrc ~/.vimrc
ln -s ~/dotFiles/tmux.conf ~/.tmux.conf
ln -s ~/dotFiles/vim/.vimrc ~/.ideavimrc
ln -s ~/dotFiles/gitconfig ~/.gitconfig
ln -s ~/dotFiles/gitignoreglobal ~/.gitignoreglobal

# load
source ~/.bash_profile
tmux source-file ~/.tmux.conf

# git config - no longer needed, git config file also included in this repo now
#git config --global core.editor "vim"
#git config --global user.name "Gregory Tanaka"
#git config --global core.filemode false
```

Largely copied from [@squk](https://github.com/squk)
