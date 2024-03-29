alias h='history'
alias ~='cd ~'
alias ..='cd ..'
alias n='nvim'
alias python='python3'
alias t='tree'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias t4='tree -L 4'
alias lg='lazygit'
alias c='clear'

if [ -z "$SSH_AUTH_SOCK" ]; then
	eval $(ssh-agent -s)
    ssh-add
fi
