# nvim

cd ~/.config/
git clone git@github.com:sklassen/nvim.git nvim

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
Logout and in again. Change gnome font to Hack Nerd

# LSP
rustup component add rust-analyzer

