#!/bin/bash
# This script overwrites existing dot files!
shopt -s dotglob
DIR="${HOME}/dotfiles/target_home"
cd $DIR
for name in *; do
	echo "linking ${name}"
	ln -sfT $DIR/$name $HOME/$name
done
