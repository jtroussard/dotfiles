#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired Dotfiles in ~/Dotfiles
############################

########## Variables

dir=~/Dotfiles                    # Dotfiles directory
olddir=~/Dotfiles_old             # old Dotfiles backup directory
files="bashrc vimrc vim profile"    # list of files/folders to symlink in homedir

##########

# create Dotfiles_old in homedir
echo "Creating $olddir for backup of any existing Dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the Dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing Dotfiles in homedir to Dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing Dotfiles from ~ to $olddir"
    mv ~/.$file ~/Dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done