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

# Mouse support (scroll + drag-to-copy)
set -g mouse on

# Allows copy and paste
set -s copy-command 'pbcopy -b'  # Use 'pbcopy' for macOS, 'clip.exe' for WSL

# Statusbar
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

# Plugins (TPM) — session persistence
# Install TPM once:
#   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Install plugins: prefix + I (capital i), or run ~/.tmux/plugins/tpm/bin/install_plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

# Auto-restore when tmux starts (manual save: prefix + Ctrl-s)
set -g @continuum-restore 'on'
# set -g @continuum-save-interval '15'  # auto-save every 15 min (disabled)

# resurrect: prefix + Ctrl-s save, prefix + Ctrl-r restore
set -g @resurrect-capture-pane-contents 'on'
set -g @resurrect-save-shell-history 'on'

run '~/.tmux/plugins/tpm/tpm'
```

Can restart Tmux with new config
```bash
tmux source-file ~/.tmux.conf # or prefix+R
```

## Session persistence (resurrect + continuum)

Install TPM and plugins once:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux start-server
~/.tmux/plugins/tpm/bin/install_plugins
```

| Action | Keys |
|--------|------|
| Save sessions now | `Ctrl-b` `Ctrl-s` (or `Ctrl-a` `Ctrl-s`) |
| Restore sessions | `Ctrl-b` `Ctrl-r` |
| Auto-restore on tmux start | enabled (`@continuum-restore`) |
| Auto-save every 15 min | disabled (uncomment `@continuum-save-interval` in config to enable) |

Saved state: `~/.local/share/tmux/resurrect/` (or `~/.tmux/resurrect/`).

After reboot, run `tmux` — sessions restore from the last manual save (`Ctrl-s`). Save before shutdown if you want a fresh snapshot.


## Reference
- [Make tmux Pretty and Usable - Ham Vocke](https://hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/)
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
- [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)
- [TPM](https://github.com/tmux-plugins/tpm)
