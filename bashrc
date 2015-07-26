# add .local/bin path required for powerline to work
PATH=$PATH:.local/bin

# define term
#export TERM=screen-256color

# run powerline-daemon
powerline-daemon -q

# run powerline for bash, unused atm
#. .local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# required for ssh-agent to work
eval "$(ssh-agent)" >> /dev/null

# disable "Software Flow Control (XON/XOFF flow control)", allows to use
# various keybindings via ssh terminals like PuTTy
stty ixany
stty ixoff -ixon

export EDITOR='vim'

# fasd
eval "$(fasd --init auto)"

# start tmux by default
alias tmux="tmux -2"

