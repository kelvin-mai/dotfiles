#!/bin/bash

# change directories if necessary
export CONFIG_TARGET="$HOME/.config"

echo "git update submodules"
git submodule update --init --recursive

echo "updating profiles"
cp .profile $HOME/.profile
cp .gitconfig $HOME/.getconfig
cp .zshrc $HOME/.zshrc

echo "updating user interface"
cp -TRv i3 $CONFIG_TARGET/i3
cp -TRv polybar $CONFIG_TARGET/polybar
cp -TRv alacritty $CONFIG_TARGET/alacritty
cp picom.conf $CONFIG_TARGET/picom.conf

echo "updating editors"
cp -TRv nvim $CONFIG_TARGET/nvim
cp -TRv doom $CONFIG_TARGET/doom
