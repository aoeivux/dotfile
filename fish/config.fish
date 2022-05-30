alias ra="ranger"
alias cs="clear"
alias vi="nvim"
alias vim="nvim"
alias ff="fzf"
alias qq="exit"
alias bsource="bass source"
alias s="neofetch"
alias tm="tmux"
alias lvim="bass bash ~/.local/bin/lvim"
alias we="curl 'https://wttr.in/?lang=zh-cn'"


export EDITOR=/usr/bin/nvim
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source 
# <<< conda initialize <<< export SHELLDER_KEEP_PATH=1 



#the theme of fish  ---->> bobthefish 
set -g theme_display_hostname no
set -g theme_display_vi no
set -g theme_display_ruby no
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_user no
set -g theme_newline_prompt '>>> '

# autoload the tmux

# bsource ~/.config/fish/some_sh/tmux.sh

