#!/bin/sh

mkdir -p "$HOME/.vim/pack/tpope/start"
cd "$HOME/.vim/pack/tpope/start"

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

mkdir -p "$HOME/.vim/pack/sheerun/start"
cd "$HOME/.vim/pack/sheerun/start"
git clone 'https://github.com/sheerun/vim-polyglot.git'

mkdir -p "$HOME/.vim/plugin"
cat >"$HOME/.vim/plugin/keybinds.vim" <<EOF
" ############
" # KEYBINDS #
" ############
let mapleader = ";"

"Window navigation
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wl <C-w>l
nnoremap <Leader>ws <C-w>s
nnoremap <Leader>wv <C-w>v
nnoremap <Leader>w= <C-w>=

"Tab navigation
nnoremap <Leader>tn <Cmd>tabnext<CR>
nnoremap <Leader>tp <Cmd>tabprevious<CR>
nnoremap <Leader>tt <Cmd>tabnew<CR>

"Quicklist navigation
nnoremap <Leader>qo <Cmd>copen<CR>
nnoremap <Leader>qc <Cmd>cclose<CR>
nnoremap <Leader>qn <Cmd>cnext<CR>
nnoremap <Leader>qp <Cmd>cprevious<CR>
nnoremap <Leader>qd :cdo<Space>

"No highlight
nnoremap <Leader>nh <Cmd>nohl<CR>
EOF
