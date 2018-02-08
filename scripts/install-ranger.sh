#!/usr/bin/env sh

cd ~
cd .linux

if [ ! -d repo ]; then
    mkdir repo
fi
cd repo

if [ ! -d ranger ]; then
    mkdir ranger

    cd ranger

    git init
    git remote add origin-ranger https://github.com/ranger/ranger
    git pull origin-ranger
    git pull origin-ranger master

    sudo make install
else
    cd ranger

    git pull origin-ranger master
    sudo make install
fi

cd ~

if [ -d .config/ranger ]; then
    rm -r .config/ranger
fi
ln -rsf .linux/repo/dotfiles/config/ranger .config/ranger

# Deps do ranger
if [ -f /usr/bin/apt ]; then
    sudo apt update
    sudo apt install w3m \
                     w3m-img

elif [ -f /usr/bin/pacman ]; then
    sudo pacman -S w3m \
                   w3m-img

fi

echo "\n*********************************"
echo "             End Script            "
echo "*********************************\n"
