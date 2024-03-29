#!/bin/zsh
# install latest golang version
curl -OL $(echo -n "https://go.dev" ; curl https://go.dev/dl/ | grep "download.*downloadBox" | grep -io "/dl/.*$(uname -s).*gz")
sudo sh -c 'rm -rf /usr/local/go && tar -C /usr/local -xzf $(ls | grep -io "go.*.*gz")'
echo 'export PATH=$PATH:/usr/local/go/bin:~/go/bin/' >> ~/.zshrc
source ~/.zshrc

# add Completion to golang CLI
go install github.com/posener/complete/gocomplete@latest
gocomplete -install -y

# install gofiber
go install github.com/gofiber/fiber/v2@latest
go install github.com/gofiber/cli/fiber@latest
