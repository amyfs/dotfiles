#!/bin/sh

ln -sf $PWD/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $PWD/dotfiles/tmux $HOME/.tmux
ln -sf $PWD/dotfiles/vimrc $HOME/.virc
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.vim/colors
ln -sf $PWD/dotfiles/vimrc $HOME/.config/nvim/init.vim
ln -sf $PWD/dotfiles/zshrc $HOME/.zshrc
cp $PWD/dotfiles/NeoSolarized.vim $HOME/.config/nvim/colors/NeoSolarized.vim
cp $PWD/dotfiles/NeoSolarized.vim $HOME/.vim/colors
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Reset your shell."
