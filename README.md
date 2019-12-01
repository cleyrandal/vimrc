# vimrc

My Vim configuration with Vundle plugins.

## Install vim with gtk (vim with GUI)
```bash
$ sudo apt isntall vim-gtk
```

## Install Vundle
```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

For more informations: https://github.com/VundleVim/Vundle.vim#quick-start

## Make a directory and clone this `.vimrc` project
```bash
$ mkdir ~/proj
$ cd ~/proj
$ git clone https://github.com/cleyrandal/vimrc.git
```

## Create a symbolic
```bash
ln -s ~/proj/vimrc/.vimrc ~/.vimrc
```

## Install Vundle plugins
```bash
$ vim +PluginInstall +qall
```

## `vim-airline` plugin requirements

### Install powerline.
```bash
$ sudo apt install powerline fonts-powerline
```

### Package to make powerline work.
```bash
$ sudo apt install python3-powerline
```

### Powerline last configurations.
```bash
$ sudo mkdir /usr/local/bin/powerline
$ sudo git clone https://github.com/powerline/powerline.git /usr/local/bin/powerline/
$ sudo wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -O /usr/share/fonts/PowerlineSymbols.otf
$ sudo wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -O /etc/fonts/conf.d/10-powerline-symbols.conf
```

## Configure powerline on BASH
```bash
$ echo '. /usr/local/bin/powerline/powerline/bindings/bash/powerline.sh' >> ~/.bashrc
```

