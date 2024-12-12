# Neovim Setup
- [X] Try telescope ui
- [X] Debugger
- [X] Code Snippets
- [X] Auto-completion
- [X] Formatting

## Storage (for later, if needed)
- [Signature](https://github.com/ray-x/lsp_signature.nvim)
- NVChad Plugins
- Lunar Plugins
- [List of awesome Neovim plugins](https://github.com/rockerBOO/awesome-neovim)
- Neorg Plugin
- Obsidian Plugin
- Oil file explorer
- List of more plugins [neovimcraft](https://neovimcraft.com/)

## Known issues
To ensure neorg treesitter compiles
```bash
brew install llvm
CC=/opt/homebrew/opt/llvm/bin/clang nvim -c 'TSInstallSync norg'
```
