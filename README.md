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
brew install neovim # >= 0.9.4
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

Setup GCC windows with instructions [here](https://cpp-lang.net/tools/standalone/compilers/setup-gcc-windows/).
Make sure to add to the path.

#### Customization
To make windows terminal look better, use Oh-my-pop

Finally, to use nvim

## Debugger
Will have to manually `:MasonInstall <debug_adapter>`

## Pictures
![image](https://github.com/yemibox51/Yim/assets/19742642/3a0a1fa4-67a8-45ca-a498-19a9871e0e2d)

![image](https://github.com/yemibox51/Yim/assets/19742642/5876439d-e1c4-4e42-a6af-3ac5357f030c)

![image](https://github.com/yemibox51/Yim/assets/19742642/d28738a1-934c-4393-8460-643abf43ca13)
