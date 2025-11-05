# Yim
This repository is a collection of my Neovim file configs so it's easier for me to to switch editors and computers.

## Homebrew Installation:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Scoop Installation:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

## Requirements Installation:
### MacOS
```bash
brew install neovim # >= 0.10.0
brew install ripgrep
brew install node

mkdir -p ~/.config/nvim && touch ~/.config/nvim/init.lua

curl https://sh.rustup.rs -sSf | sh # Install Rust and Cargo
```

### Linux/WSL
```bash
sudo apt-get ripgrep
curl -OL https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xvf nvim-linux64.tar.gz
sudo mv nvim-linux64 /usr/local/bin/nvim

curl https://sh.rustup.rs -sSf | sh # Install Rust and Cargo
```

Installing node
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# write in .zshrc
 export NVM_DIR=~/.nvm
   [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
alias nvim=/usr/local/bin/nvim/bin/nvim

nvm install node
```

### Windows
```cmd
REM get ls to be dir
echo @dir %* > %systemroot%\system32\ls.bat

REM alias open for ii (Invoke-Item)
Set-Alias -Name open -Value Invoke-Item

REM This is where you would install the config
mkdir ~\Appdata\Local\nvim
```

Install Lua for windows [here](https://github.com/rjpcomputing/luaforwindows)

Setup GCC windows with instructions [here](https://cpp-lang.net/tools/standalone/compilers/setup-gcc-windows/).
Make sure to add to the path.

Install Grep for Telescope
```cmd
REM scoop installation
scoop install ripgrep

REM Winget installation
winget install BurntSushi.ripgrep.MSVC
```
For Settting up Networking:
```cmd
winget install nmap
```

#### Customization
To make windows terminal look better, use Oh-my-pop

Finally, to use nvim

## Debugger
Will have to manually `:MasonInstall <debug_adapter>`

## Plugins
- [Alpha-nvim](https://github.com/goolord/alpha-nvim) - Fast and customizable greeter/dashboard for Neovim
- [Auto-session](https://github.com/rmagatti/auto-session) - Automatic session management with directory awareness
- [Catppuccin](https://github.com/catppuccin/nvim) - Soothing pastel theme for Neovim
- [Cheatsheet.nvim](https://github.com/sudormrfbin/cheatsheet.nvim) - Searchable cheatsheet for Neovim keybindings
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) - Smart and powerful comment toggler
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Collection of snippets for various languages
- [GitHub Theme](https://github.com/projekt0n/github-nvim-theme) - GitHub's Neovim themes collection
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim) - Git integration with signs, blame, and diff highlighting
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - LSP source for nvim-cmp
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion engine with multiple sources
- [Indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) - Indentation guides and scope highlighting
- [Lazy.nvim](https://github.com/folke/lazy.nvim) - Modern plugin manager with lazy loading
- [LazyGit](https://github.com/kdheepak/lazygit.nvim) - Terminal UI for Git commands integration
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine written in Lua
- [Lualine](https://github.com/nvim-lualine/lualine.nvim) - Fast and configurable statusline
- [Mason](https://github.com/williamboman/mason.nvim) - Package manager for LSP servers, linters, and formaters
- [Mason LSPConfig](https://github.com/williamboman/mason-lspconfig.nvim) - Bridge between mason.nvim and lspconfig
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer with Git integration and modern UI
- [Noice](https://github.com/folke/noice.nvim) - Enhanced UI for messages, cmdline and popupmenu
- [None-ls](https://github.com/nvimtools/none-ls.nvim) - Language server for formatting and diagnostics
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Automatic closing of brackets, quotes, and tags
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) - Debug Adapter Protocol client for debugging
- [nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python) - Python debugging extension for nvim-dap
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) - UI for nvim-dap with debugging interface
- [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text) - Virtual text support for nvim-dap
- [LSPConfig](https://github.com/neovim/nvim-lspconfig) - Quickstart configurations for built-in LSP client
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Auto close and rename HTML/XML tags
- [Plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - Lua utility functions library
- [Render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) - Markdown rendering with treesitter
- [Symbols-outline](https://github.com/simrat39/symbols-outline.nvim) - Tree-like view for symbols using LSP
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder for files, buffers, and more
- [Telescope UI Select](https://github.com/nvim-telescope/telescope-ui-select.nvim) - Telescope interface for vim.ui.select
- [Todo-comments](https://github.com/folke/todo-comments.nvim) - Highlight and search for todo comments
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting and code parsing
- [Vim-godot](https://github.com/habamax/vim-godot) - Godot engine support and integration
- [Which-key](https://github.com/folke/which-key.nvim) - Popup that shows keybindings as you type
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - File type icons for Neovim
- [toggleterm](https://github.com/akinsho/toggleterm.nvim) - Terminal

## Pictures
![image](https://github.com/yemibox51/Yim/assets/19742642/3a0a1fa4-67a8-45ca-a498-19a9871e0e2d)

![image](https://github.com/yemibox51/Yim/assets/19742642/5876439d-e1c4-4e42-a6af-3ac5357f030c)

![image](https://github.com/yemibox51/Yim/assets/19742642/d28738a1-934c-4393-8460-643abf43ca13)
