# For Windows WSL2  Users

## first
users for windows wsl2 users with  debian 11
In windows system I use [Keyboard Manager](https://github.com/microsoft/PowerToys/releases/download/v0.53.3/PowerToysSetup-0.53.3-x64.exe) remapping the key download it from web or Microsoft Store

## fish 
```bash 
sudo apt install fish
```

## for ranger

```shell
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo
```


```shell
chsh -s /usr/bin/fish # your fish_bin_home
```
## oh-my-fish 
```bash
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```
## theme-bobthefish of fish
```bashe
omf install bobthefish
``` 

## extensions 
```shell
sudo apt install fd-find git ranger neovim 
```

## exa 
```shell
sudo pacman -S exa
```

## bat (for fzf) 
```shell
sudo pacman -S bat
```

## download the dev-based
*  for arch 
```shell
sudo pacman -Sy base-devel
```

* for ubuntu and debian

```shell
sudo apt-get install build-essential
```


## Neovim

```shell
sudo pacman -Sy node
```


* or you can run if you need
```shell
pip3 install neovim
```

* for c cpp lsp needs ccls 

```shell
sudo pacman -S ccls
```

*  for golang needs gopls
```shell

# in neovim you need
:GoInstallBinaries

sudo pacman -S gopls

```

* use a fish plugins manager--->fisher
```shell
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

* tmux

```shell
sudo pacman -S tmux
```

```shell
tmux source-file ~/.tmux.config
```

Neovim通过checkhealth检查问题

```shell
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo
```

```shell
sudo apt install build-essential openjdk-11-jdk python3 python3-pip
```

node\cargo

```shell
curl https://sh.rustup.rs -sSf | sh
```

安装最新版的node和npm

```Ubuntu
sudo apt-get install curl
```

```shell
curl -sL https://deb.nodesource.com/setup_17.x | sudo -E bash -
```

```
sudo apt-get install -y nodejs
```

```shell
npm install -g neovim
```

安装rg、fd支持telescopelive grep,否则会报错

```shell
sudo apt instal ripgrep fd-find
```
- java jdk client exit 1and signal 0 问题解决
  - 将jdk升级到11
    

# 分割线------最近将shell从fish换回了zsh,并通过一些插件完成了fish一样的功能，同时，将lsp服务换成了基于coc.nvim的配置，同时也保留了lspconfig的配置

## Coc.nvim配置
- 根据官网下载Coc.nvim
  
- 安装必要的插件，因为是通过json管理插件：
  

```
:CocInstall coc-json coc-tsserver
```

- 查找对应的语言配置language server configration
  

       [Language servers · neoclide/coc.nvim Wiki · GitHub](https://github.com/neoclide/coc.nvim/wiki/Language-servers)

- 通过命令打开配置文件
  
  ```shell
  :CocConfig
  ```
  

- 安装其余可选（插件市场）
  
  ```shell
  ConInstall coc-marketplace
  ```
- 通过CocList marketplace打开

## Oh My Zsh
### plugins
#### zsh-autosuggestions
  1. download into ~/.oh-my-zsh/custom/plugins/....

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  2. Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc)
    plugins=( 
    # other plugins...
    zsh-autosuggestions
)

#### zsh-syntax-highlighting
  1. download into ~/.oh-my-zsh/custom/plugins/....

    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

  2. Add the pligin append in the zshrc
  plugin=(
  .....
  zsh-syntax-highlighting
  )

#### zsh-completions

  1. download into ~/.oh-my-zsh/custom/plugins/...

    git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

  2. Append to the plugins
     plugin=(
    .....
    zsh-syntax-highlighting
    )



## alacritty themes selector
download with npm
```shell
  npm i - g alacritty-themes
```


