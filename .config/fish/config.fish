powerline-daemon -q
function fish_greeting
    fortune -a
end
function fish_promt
    powerline-shell --shell bare $status
end

kitty + complete setup fish | source

alias ls lsd
alias cp advcp
alias mv advmv
alias vi nvim
alias vim nvim
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/stumpi/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
