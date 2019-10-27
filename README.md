# vimrc
My Vim configuration with Vundle plugins.

## Instalando o plugin `vim-airline`

### Requisitos:

Instalando o powerline.
```bash
sudo apt install powerline fonts-powerline
```

Pacote para que o powerline funcione no Vim.
```bash
sudo apt install python3-powerline
```

Últimas configurações para que o powerline funcione corretamente.
```bash
sudo mkdir /usr/local/bin/powerline
sudo git clone https://github.com/powerline/powerline.git /usr/local/bin/powerline/
sudo wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -O /usr/share/fonts/PowerlineSymbols.otf
sudo wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -O /etc/fonts/conf.d/10-powerline-symbols.conf
```

Configuração para o powerline funcionar no BASH.
```bash
echo '. /usr/local/bin/powerline/powerline/bindings/bash/powerline.sh' >> ~/.bashrc
```

FIM.
