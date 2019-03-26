# dotfiles
Environment config files to make set up on different devices easier.

Quick setup
```
# set up key - this should be done manually

# pull down config files
cd ~
git clone git@github.com:TheGregTanaka/dotfiles.git devConfig
cd devConfig
# install pathogen
curl -LSso ~/devConfig/vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vim plugins
cd ~/devConfig/vim/pack/completor/start
git clone https://github.com/maralla/completor.vim.git
cd ~/devConfig
git clone https://github.com/vim-airline/vim-airline ~/devConfig/vim/bundle/vim-airline
git clone https://github.com/leafgarland/typescript-vim ~/devConfig/vim/bundle/typescript-vim
cd ~/devConfig/vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# set up symlinks
cd ~
mv ~/.bash_profile ~/.bash_profile.old
mv ~/.vim ~/.vim.old
mv ~/.vimrc ~/.vimrc.old
mv ~/.tmux.conf ~/.tmux.conf.old
ln -s ~/devConfig/bash_profile ~/.bash_profile
ln -s ~/devConfig/vim ~/.vim
ln -s ~/devConfig/vim/.vimrc ~/.vimrc
ln -s ~/devConfig/tmux.conf ~/.tmux.conf
tmux source-fil ~/.tmux.conf

# load
source ~/.bash_profile

# git config
git config --global core.editor "vim"
git config --global user.name "Greg Tanaka"
git config --global core.filemode false
```
