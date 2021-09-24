# install golang (manual)
wget https://golang.org/dl/go1.17.1.linux-amd64.tar.gz
sudo sh -c 'rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.1.linux-amd64.tar.gz'
echo 'export PATH=$PATH:/usr/local/go/bin:~/go/bin' >> ~/.zshrc

# add Completion to golang
sudo sh -c 'go get -u github.com/posener/complete/gocomplete'
sudo sh -c 'gocomplete -install -y'

# install gofiber
go get -u github.com/gofiber/fiber/v2
go get -u github.com/gofiber/cli/fiber
