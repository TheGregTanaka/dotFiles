# dotfiles
Environment config files to make set up on different devices easier.

Quick setup
```
# set up key - this should be done manually

# pull down config files
cd ~
git clone git@github.com:TheGregTanaka/dotfiles.git dotFiles
cd dotFiles
# install pathogen
curl -LSso ~/dotFiles/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# install plug
curl -fLo ~/dotFiles/vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install vim plugins
cd ~/dotFiles/vim/pack/completor/start
git clone https://github.com/maralla/completor.vim.git
cd ~/dotFiles
git clone https://github.com/vim-airline/vim-airline ~/dotFiles/vim/bundle/vim-airline
git clone https://github.com/leafgarland/typescript-vim ~/dotFiles/vim/bundle/typescript-vim
cd ~/dotFiles/vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
Plug 'luochen1990/rainbow'

# set up symlinks
cd ~
cat ~/.bash_profile >> ~/.bash_profile.old
cat ~/.vim >> ~/.vim.old
cat ~/.vimrc >> ~/.vimrc.old
cat ~/.tmux.conf >> ~/.tmux.conf.old
cat ~/.ideavimrc >> ~/.ideavimrc.old
ln -s ~/dotFiles/bash_profile ~/.bash_profile
ln -s ~/dotFiles/vim ~/.vim
ln -s ~/dotFiles/vim/.vimrc ~/.vimrc
ln -s ~/dotFiles/tmux.conf ~/.tmux.conf
ln -s ~/dotFiles/vim/.vimrc ~/.ideavimrc

# load
source ~/.bash_profile
tmux source-fil ~/.tmux.conf

# git config
git config --global core.editor "vim"
git config --global user.name "Gregory Tanaka"
git config --global core.filemode false
```
