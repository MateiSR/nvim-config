#!/bin/bash

mv ~/.config/nvim ~/.config/nvim.bak
cp -r ./.config/nvim ~/.config/

mv ~/.tmux.conf ~/.tmux.conf.bak
cp ./.tmux.conf ~/
