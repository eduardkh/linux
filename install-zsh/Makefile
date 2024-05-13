SHELL:=/bin/bash

.DEFAULT_GOAL:=all

.PHONY: all ubuntu rocky

all:
	@echo "Please specify 'make ubuntu' for Ubuntu setup or 'make rocky' for Rocky Linux setup."

ubuntu: _install_zsh_ubuntu _install_plugins_ubuntu _install_omz _activate_plugins_ubuntu _change_shell
rocky: _install_git_rocky _install_zsh_rocky _install_plugins_rocky _install_omz _clone_autosuggestions _activate_plugins_rocky _change_shell

# Hidden targets are not included in .PHONY and have a leading underscore
_install_zsh_ubuntu:
	sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting -y

_install_plugins_ubuntu:
	# Plugins are already installed in the _install_zsh_ubuntu step for Ubuntu

_install_git_rocky:
	sudo dnf install git -y

_install_zsh_rocky:
	sudo dnf install zsh -y

_install_plugins_rocky:
	sudo dnf install zsh-syntax-highlighting -y

_install_omz:
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

_clone_autosuggestions:
	git clone https://github.com/zsh-users/zsh-autosuggestions $${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

_activate_plugins_ubuntu:
	sed -i 's/plugins=(git)/plugins=(git kubectl sudo)/g' ~/.zshrc
	echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
	echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
	echo "alias k=kubectl" >> ~/.zshrc

_activate_plugins_rocky:
	sed -i 's/plugins=(git)/plugins=( git kubectl sudo)/g' ~/.zshrc
	echo "source $${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh" >> ~/.zshrc
	echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
	echo "alias k=kubectl" >> ~/.zshrc

_change_shell:
	sudo usermod -s $$(which zsh) $$(whoami)
	zsh
