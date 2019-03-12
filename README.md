# dotfiles
Environment config files to make set up on different devices easier.

Quick setup
```
# set up key
# pull down config files
cd ~
git clone git@github.com:TheGregTanaka/dotfiles.git devConfig
cd devConfig
# install pathogen
curl -LSso ~/devConfig/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install plugins
cd ~/devConfig/.vim/pack/completor/start
git clone https://github.com/maralla/completor.vim.git
cd ~/devConfig
git clone https://github.com/vim-airline/vim-airline ~/devConfig/.vim/bundle/vim-airline

# set up symlinks
cd ~
ln -s devConfig/.bash_profile ~/.bash_profile
ln -s devConfig/.vim ~/.vim
ln -s devConfig/.vim/.vimrc ~/.vimrc

# load
source ~/.bash_profile
```
