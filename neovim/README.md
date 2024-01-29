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

> find default configuration file location

```bash
grep -ir numberwidth ~/.config/nvim
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
zz # center screen
w (ctrl+left arrow) # move cursor to the next word
home # move cursor to the start of the line
b (ctrl+right arrow) # move cursor to the previous word
end # move cursor to the end of the line
yy # yank (cut) the current line
p # paste below the current line
P # paste above the current line
xx # delete character under cursor
dd # delete the current line
d5d (or 5dd) # delete next 5 lines
a # 'append' insert mode (start typing to the right of the cursor)
shift+a # 'append' insert mode (start typing at the end of the line)
i # 'insert' insert mode (start typing to the left of the cursor)
shift+i # 'insert' insert mode (start typing at the beginning of the line)
o # 'insert line' insert mode - below the cursor
shift+o # 'insert line' insert mode - above the cursor
v # visual mode
shift+v # visual mode (line)
control+shift+v # visual mode (block)

# word operators (combine commands)
ciw # Change the current word (delete and enter insert mode).
diw # Delete the current word.
yaw # Yank (copy) the current word.
dw # delete the word to the right
db # delete the word to the left

# Commands
:set number (nu) # Display line numbers
:set nonumber (nonu) # Hide line numbers
:set number! (nu!) # toggle line numbers
:set relativenumber (rnu) # Display relative line numbers
:set norelativenumber (nornu) # Hide relative line numbers
:set relativenumber! (rnu!) # toggle relative line numbers
:set numberwidth=2
:echo stdpath("config") # get the location of the vim config file
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

[nerdfonts](https://www.nerdfonts.com/font-downloads) individual fonts

[programmingfonts](https://www.programmingfonts.org/) preview fonts
