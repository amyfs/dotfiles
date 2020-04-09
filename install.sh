#!/bin/sh
ln -sf $PWD/Xresources $HOME/.Xresources
ln -sf $PWD/tmux.conf $HOME/.tmux.conf
ln -sf $PWD/tmux $HOME/.tmux
ln -sf $PWD/vimrc $HOME/.virc
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.vim/colors
ln -sf $PWD/vimrc $HOME/.config/nvim/init.vim
ln -sf $PWD/zshrc $HOME/.zshrc
cp $PWD/NeoSolarized.vim $HOME/.config/nvim/colors/NeoSolarized.vim
cp $PWD/NeoSolarized.vim $HOME/.vim/colors
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Reset your shell."
