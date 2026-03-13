# Tmux Config
## File
Place inside `~/.tmux.conf`
```conf
# Colors
# Soft Red-Pink Color
%hidden COLOR_ACCENT="#E78DA7"

# Prefix keys
# Keep C-b as default, also add C-a (Ctrl + a)
set -g prefix2 C-a
bind C-a send-prefix

# Statusbar
set -g status-position bottom
set -g status-justify left
set -g status-style "fg=#{COLOR_ACCENT}"

set -g status-left ''
set -g status-left-length 10

set -g status-right-style 'fg=#{COLOR_ACCENT}'
set -g status-right '%Y-%m-%d %H:%M '
set -g status-right-length 50

setw -g window-status-current-style "fg=black bg=#{COLOR_ACCENT}"
setw -g window-status-current-format ' #I #W #F '

setw -g window-status-style "fg=#{COLOR_ACCENT} bg=black"
setw -g window-status-format ' #I #[fg=white]#W #[fg=yellow]#F '

setw -g window-status-bell-style "fg=yellow bg=#{COLOR_ACCENT} bold"

# Keybindings
# Reload config
bind R source-file ~/.tmux.conf \; display-message "Config reloaded"
```

Can restart Tmux with new config
```bash
tmux source-file ~/.tmux.conf # or prefix+R
```


## Reference
- [Make tmux Pretty and Usable - Ham Vocke](https://hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/)
