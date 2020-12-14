#############k
## ALIASES ##
#############

# vim
alias vim='nvim'

# "pwd"
alias path='readlink -f'

# python
alias pip='pip3'

# neofetch
alias config='neofetch'

# kubernetes
alias ka='kube-auth -a'
alias kn='kubens'
alias kx='kubectx'
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgd='kubectl get deploy'
alias kgds='kubectl get daemonset'
alias kgcm='kubectl get configmaps'
alias kgrs='kubectl get replicasets'
alias kgn='kubectl get nodes'
alias kgs='kubectl get secrets'
alias kgsv='kubectl get service'
alias kgsvc='kubectl get service'
alias kgst='kubectl get statefulset'
alias kgsts='kubectl get statefulset'
alias kgpv='kubectl get persistentvolume'
alias kgpvc='kubectl get persistentvolumeclaims'
alias kgi='kubectl get ingress'
alias kg='kubectl get'
alias kssh='~/.dotfiles/kssh'
alias kubesudo='~/.dotfiles/kubesudo'

# bat
alias cat='bat'
alias yaml='bat --theme TwoDark -p -l yaml'

# curlie
alias curl='curlie'

# dog
alias dig='dog'
alias rdig='dig'

# lsd
alias ls='lsd -lah'

# duf
unalias duf
alias df='duf'

#terraform
alias tf='terraform'

# sh
alias chmox='chmod +x $1'

# aws
alias aws-mfa='aws-mfa --duration 129600'

# git
alias g='git'
alias gp='git pull'
alias gsh='git show'
alias gcl'git clone --recurse-submodules'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gp='git pull'
alias gps='git push'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gaa='git add -A'
alias gs='git status -sb'
alias gh='cd $(git rev-parse --show-toplevel)'
alias gl='git log --graph --abbrev-commit --decorate  --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)"'


# clipboard
alias copy='xclip -selection clipboard'
alias paste='xclip -selection clipboard -o'

### Bind
bindkey '^H' backward-kill-word
bindkey '5~' kill-word

# Ninja shit
alias clean="yq eval 'del(.metadata.resourceVersion, .metadata.uid, .metadata.annotations, .metadata.creationTimestamp, .metadata.selfLink, .metadata.managedFields)' -"

# zsh
alias zshrc="code ~/.zshrc"