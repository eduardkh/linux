#!/bin/zsh
# install latest terraform version
go install github.com/hashicorp/terraform@latest

# add Completion to terraform CLI
terraform -install-autocomplete

source ~/.zshrc