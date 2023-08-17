# tmux

> install tpm

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

> config tpm

```bash
cat << EOF > ~/.tmux.conf
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOF
```

> basic usage

```bash
# Prefix Key
ctrl+b

# help
ctrl+b ?
```

> session

```bash
tmux # creates a new session
tmux new -s SessionName # creates a new named session
tmux ls # list session outside tmux
ctrl-b s # list session inside tmux
ctrl-b w # list session with windows
tmux attach # attach to most recent session
tmux attach -t SessionName # attach to specific session
```

> window

```bash
ctrl-b c # new window

# '*' active window
ctrl-b (window number) # change window
ctrl-b n # next window
ctrl-b p # previous window
ctrl-b & # close window
```

> pane (window split)

```bash
ctrl-b % # split window horizontally
ctrl-b " # split window vertically
ctrl-b (arrow key) # switch panes
ctrl-b { or } # switch panes
ctrl-b q (pane number) # switch panes
ctrl-b z # zoom pane
ctrl-b ! # convert pane to window
ctrl-b x # close pane
```

[tmuxcheatsheet.com](https://tmuxcheatsheet.com/)

[Dreams of Code - tmux](https://www.youtube.com/watch?v=DzNmUNvnB04)
