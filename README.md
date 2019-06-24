# dotfiles

My config files

## Installations

Just some installation commands.

The following can be installed with `apt-get` on Ubuntu.

- [i3](https://i3wm.org/)
- [i3 gaps](https://github.com/Airblader/i3)
- [Compton](https://github.com/chjj/compton)
- [Alacritty](https://github.com/jwilm/alacritty)
- [NeoVim](https://github.com/neovim/neovim)
- [Polybar](https://github.com/jaagr/polybar)
    - Polybar may have some dependencies that you must install first 
```
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2
git clone https://github.com/jaagr/polybar.git
cd polybar/ && ./build.sh
```
