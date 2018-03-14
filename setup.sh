#!/usr/bin/env bash

if [ ! -d ~/.vim ]; then
	echo "Please clone to ~/.vim"
	exit 1
fi

cd ~/.vim
# fetch submodule content
git submodule init
git submodule update
ln -s ~/.vim/vimrc ~/.vimrc
