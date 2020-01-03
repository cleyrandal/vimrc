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

## Create a symbolic Link
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

## `YouCompleteMe` plugin requirements

1. Install development tools, CMake, and Python headers:

- Ubuntu 16.04 and later:

```
$ sudo apt install build-essential cmake python3-dev
```


2. To simply compile with everything enabled, there's a `--all` flag. Note that this flag does not install clangd. You need to specify it manually by adding --clangd-completer. So, to install with all language features, ensure xbuild, go, tsserver, node, npm and tools are installed and in your PATH, then simply run:

```bash
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
```

to call for help, try

```bash
python3 install.py --help
```

In my case, only **C** and **java** are available:

```bash
python3 install.py --clang-completer --java-completer
```

That's it. You're done. Refer to the User Guide section on how to use YCM. Don't forget that if you want the C-family semantic completion engine to work, you will need to provide the compilation flags for your project to YCM. It's all in the User Guide.

# FIM
