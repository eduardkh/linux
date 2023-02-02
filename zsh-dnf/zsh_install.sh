# install git
sudo dnf install git -y

# install zsh
sudo dnf install zsh -y

# install plugins
sudo dnf install zsh-syntax-highlighting -y

# install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# add plugins (activate)
sed -i 's/plugins=(git)/plugins=( git kubectl sudo)/g' ~/.zshrc
echo "source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh" >> ~/.zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
echo "alias k=kubectl" >> ~/.zshrc

# switch to zsh - on logon
sudo sed "-i.bak" "s/$(whoami):\/bin\/bash/$(whoami):\/usr\/bin\/zsh/g" /etc/passwd
# switch to zsh
zsh
