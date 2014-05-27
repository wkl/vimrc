#!/bin/bash

# fetch submodule content
git submodule init
git submodule update
ln -s ~/.vim/vimrc ~/.vimrc
