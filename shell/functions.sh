function tmux-resurrect-reset-last() {
    cd ~/.tmux/resurrect && \
            ln -f -s $(/bin/ls -t tmux_resurrect_*.txt | head -n 1) last && \
            /bin/ls -l last
}

function aws-envs() {
  if ! aws sts get-caller-identity --profile "$1" &> /dev/null; then
    aws-prof "$1"
  fi
  AWS_ENVS=$(aws2-wrap --profile "$1" --export)
  eval "${AWS_ENVS}"
}

# real curl
function rcurl(){
    /usr/bin/curl $@
}

# real dig
function rdig(){
    /usr/bin/dig $@
}

# real df
function rdf(){
    /usr/bin/df $@
}


# real du
function rdu(){
    /usr/bin/du $@
}
