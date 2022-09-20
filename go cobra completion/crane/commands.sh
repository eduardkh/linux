# install crane (with go)
go install github.com/google/go-containerregistry/cmd/crane@latest

# get auto-completion for crane in zsh
crane completion zsh > "${fpath[1]}/_crane"

# download an image to local dir
crane export busybox busybox.tar

# extract an image to local dir
crane export busybox | tar -xv