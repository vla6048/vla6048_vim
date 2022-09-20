#!/usr/bin/env bash



apt update
apt install -y vim

cp vim_config ~/.vimrc 

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/dense-analysis/ale.git ~/.vim/bundle/ale/

pip install flake8

mkdir -p ~/.vim/pack/flake8/start/
git clone https://github.com/nvie/vim-flake8.git ~/.vim/pack/flake8/start/

cd ~
git clone https://github.com/jnurmine/Zenburn.git
cp -r ~/Zenburn/colors/ ~/.vim/

vim +PluginInstall +qall
