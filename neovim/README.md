# neovim

> install neovim

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim
```

> make neovim the default editor

```bash
sudo update-alternatives --config editor
```

> use neovim instead of vi

```bash
# check versions
vi --version
nvim --version
# create an alias
echo "alias vi='nvim'" >> ~/.zshrc
source ~/.zshrc
# or make the change system default
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
# list the change
ls /etc/alternatives -l | grep nvim
```

> install "ryanoasis/nerd-fonts"

```bash
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh JetBrainsMono
```

> install nvchad

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

> uninstall nvchad

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

[Dreams of Code - neovim](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)

[nvchad - install](https://nvchad.com/docs/quickstart/install)
