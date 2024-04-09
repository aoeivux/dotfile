# Personal Workflow with emacs and neovim.


### first of all

### C/C ++ compile tool chain

```shell
sudo apt install build-essential cmake
```

### WSL2 proxy

new file in ~/.proxy

```shell
#!/bin/sh
hostip=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
wslip=$(hostname -I | awk '{print $1}')
# 这里填写主机代理的端口
port=7890

PROXY_HTTP="http://${hostip}:${port}"

set_proxy(){
    export http_proxy="${PROXY_HTTP}"
    export HTTP_PROXY="${PROXY_HTTP}"

    export https_proxy="${PROXY_HTTP}"
    export HTTPS_proxy="${PROXY_HTTP}"

    git config --global http.proxy "${PROXY_HTTP}"
    git config --global https.proxy "${PROXY_HTTP}"
}

unset_proxy(){
    unset http_proxy
    unset HTTP_PROXY
    unset https_proxy
    unset HTTPS_PROXY
    git config --global --unset http.proxy
    git config --global --unset https.proxy
}

test_setting(){
    echo "Host ip:" ${hostip}
    echo "WSL ip:" ${wslip}
    echo "Current proxy:" $https_proxy
}

if [ "$1" = "set" ]
then
    set_proxy

elif [ "$1" = "unset" ]
then
    unset_proxy

elif [ "$1" = "test" ]
then
    test_setting
else
    echo "Unsupported arguments."
fi
```

run and test

```shell
source ~/.proxy set

source ~/.proxy unset

source ~/.proxy test

wget wwww.google.com
```

run the command bellow(packages needed)
#### ubuntu
```shell
sudo apt install tmux zsh vim neovim neofetch fd-find ripgrep tmux fzf exa ranger python3-pip cpanminus nodejs npm unzip
```

#### MacOS
```shell
brew install zsh neovim neofetch vim rainbarf lazygit node fd ripgrep tmux fzf exa ranger wget z
```
### windows yank win32yank

`scoop install win32yank`

### install the latest neovim on ubuntu

`sudo add-apt-repository ppa:neovim-ppa/unstable`
`sudo apt update`
`sudo apt install neovim`

### miniconda3
`bash Miniconda3-latest-Linux-x86_64.sh`

### oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### python neovim
`pip install neovim`

### tmux (ubuntu needs cpan) 
`put tmux into ~/.config/ and .tmux.conf into ~/`
then run 
`cpan -i App::rainbarf`

### nvm
`wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash`
