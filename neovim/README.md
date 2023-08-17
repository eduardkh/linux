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

# for MobaXterm
choco install nerd-fonts-JetBrainsMono -y
# set terminal settings > terminal font settings to "JetBrainsMonoNFM"
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

> nvim basic commands

```bash
# space is leader key
space t h # choose theme
space f f # find file
space f h # help
space f b # search in open files
space c h # open cheat sheet

tab # next buffer (file)
shift+tab # previous buffer (file)
ctrl+s # save buffer
space x # close buffer
u # undo
ctrl+r # redo

# in nvim (vi)
:TSInstall python # install python highlighting
:TSInstallInfo # list installed

:sp # split
:vsp # split
:x # save and close buffer
```

> nvim file tree

```bash
ctrl+n # open file tree
m # toggle mark
a # add file
c # copy file
p # paste file
r # rename file
```

> nvim terminal

```bash
space h # open horizontal terminal
alt+h # toggle horizontal terminal
space v # open vertical terminal
alt+v # toggle vertical terminal
```

> vi (nvim) operators

```bash
# line operators
yy # yank (cut) the current line
p # paste below the current line
P # paste above the current line
dd # delete the current line
d5d # delete next 5 lines

# word operators
ciw # Change the current word (delete and enter insert mode).
diw # Delete the current word.
yaw # Yank (copy) the current word.
```

> vi (nvim) search and replace

```bash
/searchterm enter # search for a word
n # next term down
N # next term up
:%s/pattern/replacement/g # replace all occurrences in the file
# alternatives for "%"
1,$: The same as %, applies to the entire file.
1,5: Applies the command to lines 1 through 5.
.,$: Applies the command from the current line to the end of the file.
.,+2: Applies the command from the current line to the next 2 lines.
```

[Dreams of Code - neovim](https://www.youtube.com/watch?v=Mtgo-nP_r8Y)

[nvchad - install](https://nvchad.com/docs/quickstart/install)
