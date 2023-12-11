# neovim

> install "ryanoasis/nerd-fonts (on Host)"

```bash
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh JetBrainsMono

# for MobaXterm
choco install nerd-fonts-JetBrainsMono -y
# set terminal settings > terminal font settings to "JetBrainsMonoNFM"
```

> install neovim

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# exposing nvim globally.
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

[Tutorial](https://www.youtube.com/watch?v=zHTeCSVAFNY)

> create nvim default folder

```bash
mkdir ~/.config/nvim/
vi ~/.config/nvim/init.lua
```
