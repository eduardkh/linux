#!/bin/zsh
# install latest golang version
export GOLANG="$(curl -s https://go.dev/dl/ | awk -F'[\>\<]' '/linux-armv6l/ && !/beta/ {print $5;exit}')"
wget https://golang.org/dl/$GOLANG

sudo sh -c 'rm -rf /usr/local/go && tar -C /usr/local -xzf $(ls | grep -io "go.*.*gz")'
echo 'export PATH=$PATH:/usr/local/go/bin:~/go/bin/' >> ~/.zshrc
source ~/.zshrc

# add Completion to golang CLI
go install github.com/posener/complete/gocomplete@latest
gocomplete -install -y
