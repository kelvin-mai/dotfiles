#!/bin/bash
# change directories if necessary
export I3_DIR="$HOME/.i3"
export POLYBAR_DIR="$HOME/.config/polybar"
export ALACRITTY_DIR="$HOME/.config/alacritty"

echo "git update submodules"
git submodule update --init --recursive

echo "updating profiles"
cp .profile $HOME/.profile
cp .gitconfig $HOME/.getconfig
cp .zshrc $HOME/.zshrc

echo "updating vim"
cp -r .vim/ $HOME/
cp -r .vimrc $HOME/.vimrc
cp -r .config/nvim $HOME/.config

echo "updating tmux"
cp .tmux.conf $HOME/.tmux.conf

echo "updating $I3_DIR"
cp .config/i3/config $I3_DIR/config
cp .config/i3/polybar.sh $I3_DIR/polybar.sh 
cp .config/i3/i3pwd.sh $I3_DIR/i3pwd.sh

echo "updating $POLYBAR_DIR"
cp .config/polybar/config $POLYBAR_DIR/config

echo "updating $ALACRITTY_DIR"
cp .config/alacritty/alacritty.yml $ALACRITTY_DIR/alacritty.yml

echo "updating $HOME/.config/compton.conf"
cp .config/compton.conf $HOME/.config/compton.conf
