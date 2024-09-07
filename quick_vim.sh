#!/bin/sh

mkdir -p '~/.vim/pack/tpope/start'
cd '~/.vim/pack/tpope/start'

# All those netrw keybinds and settings you can't live without
git clone 'https://github.com/tpope/vim-vinegar.git'

# gcc, gc, etc.
git clone 'https://tpope.io/vim/commentary.git'
vim -u NONE -c "helptags commentary/doc" -c q

# Repeat certain specific items (mostly just for surround)
git clone 'https://tpope.io/vim/repeat.git'

# Automatically figures out shiftwidth and tabstop.
git clone 'https://tpope.io/vim/sleuth.git'
vim -u NONE -c "helptags sleuth/doc" -c q

# cs"', ds", S" in visual
git clone 'https://tpope.io/vim/surround.git'
vim -u NONE -c "helptags surround/doc" -c q

mkdir -p '~/.vim/pack/sheerun/start'
cd '~/.vim/pack/sheerun/start'
git clone 'https://github.com/sheerun/vim-polyglot.git'
