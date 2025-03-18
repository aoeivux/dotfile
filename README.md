# Personal workflow

### Windows
```shell
scoop bucket add extras
```

```shell
scoop bucket add main
```

```shell
scoop install z gcc eza fd ripgrep fzf nodejs make cmake luarocks yazi lazygit
```

### Ubuntu
```shell
sudo apt install build-essential xclip tmux zsh vim neovim neofetch fd-find ripgrep tmux fzf exa ranger python3-pip cpanminus nodejs npm unzip
```

### MacOS
```shell
brew install  zsh neovim neofetch vim rainbarf lazygit node fd ripgrep tmux fzf exa wget z yazi
```

#### lazygit
Default path for the global config file:

Linux: `~/.config/lazygit/config.yml`
MacOS: `~/Library/Application\ Support/lazygit/config.yml`
Windows: `%LOCALAPPDATA%\lazygit\config.yml` (default location, but it will also be found in `%APPDATA%\lazygit\config.yml`

#### Windows yank win32yank

`scoop install win32yank`

#### Install the latest neovim on ubuntu
(unstable is the latest version)
`sudo add-apt-repository ppa:neovim-ppa/unstable` &&
`sudo apt update` &&
`sudo apt install neovim`

#### miniconda3
`bash Miniconda3-latest-Linux-x86_64.sh`

#### oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

#### python neovim
`pip install neovim`

#### tmux (ubuntu needs cpan) 
`put tmux into ~/.config/ and .tmux.conf into ~/ or you can rename min_tmux.conf to .tmux.conf and mv into ~/`
then run 
`cpan -i App::rainbarf`

#### nvm
`wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`

#### wezterm
put the .wezterm.lua in `$HOME/`
