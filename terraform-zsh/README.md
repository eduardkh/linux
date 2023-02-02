### install terraform-zsh

> install terraform and autocomplete

```bash
go install github.com/hashicorp/terraform@latest
terraform -install-autocomplete
# in MacOS
echo export PATH=$PATH:$(go env GOPATH)/bin >> ~/.zshrc
source ~/.zshrc
```
