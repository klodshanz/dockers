alias cl='clear'
alias la='ls -ltr'
alias 'cd..'='cd ..'
alias dps='echo; docker ps --format "{{.ID}}  {{.Names}}\tCreated: {{.RunningFor}}\t{{.Status}}" | expand -t12;echo'
alias wipe-all='docker rm -f $(docker ps -aq) && docker rmi -f $(docker images -q)'
alias wipe-containers='docker rm -f $(docker ps -aq)'
alias wipe-images='docker rmi -f $(docker images -q)'

alias colb=/usr/local/bin/show-colors-basic.sh
alias colx=/usr/local/bin/show-colors-extended.sh

alias new='mkdocs new site; cd site; mkdocs serve'
alias py=python3.7
alias python=python3.7
alias pip=pip3

source ~/.prompt.sh
