# nvim

cd ~/.config/
git clone https://github.com/sklassen/nvim.git
(or) git clone git@github.com:sklassen/nvim.git nvim


# packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# In vi
:PackerInstall

# Fonts
```
mkdir /tmp/hf
cd /tmp/hf
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
unzip Hack.zip
cp *.ttf ~/.local/share/fonts/
cp *.ttf ~/.fonts
fc-cache -fv
```

# Install LSP 
:LspInstall
