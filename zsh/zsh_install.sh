# install zsh
sudo apt install zsh -y

# install plugins
sudo apt install zsh-autosuggestions -y
sudo apt install zsh-syntax-highlighting -y

# install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# add plugins (activate)
sed -i 's/plugins=(git)/plugins=( git kubectl sudo)/g' ~/.zshrc
echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
echo "alias k=kubectl" >> ~/.zshrc
# switch to zsh
chsh -s $(which zsh)
zsh
