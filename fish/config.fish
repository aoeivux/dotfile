if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias ra="ranger"
alias cs="clear"
alias vi="nvim"
alias vim="nvim"
alias ll="exa -l"
alias ls="exa"
alias ff="fzf"
alias qq="exit"
alias bsource="bass source"


export EDITOR=/opt/homebrew/bin/nvim
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source 
# <<< conda initialize <<< export SHELLDER_KEEP_PATH=1 



#the theme of fish  ---->> bobthefish 
set -g theme_display_vi no
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_user yes
set -g theme_newline_prompt '>>> '

#  fzf
export FZF_DEFAULT_COMMAND='fd --hidden --follow -E ".git" -E "node_modules" . /etc /home'
export FZF_DEFAULT_OPTS='--height 90% --layout=reverse --bind=alt-j:down,alt-k:up,alt-i:toggle+down --border --preview "echo {} | ~/.config/fish/fzf_preview.py" --preview-window=down'



