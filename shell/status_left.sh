#!/bin/bash

# separator char:  


CURRENT_SESSION=$(tmux display-message -p '#S')

KUBE_TEXT=""
KUBE_NAMESPACE=""
if command -v kubectl &> /dev/null; then
  KUBE_CONTEXT=$(kubectl config current-context)
  KUBE_NAMESPACE=$(kubectl config view --minify -o jsonpath='{..namespace}')
  KUBE_NAMESPACE_COLOR="colour243"
  #Default non-prod colors
  KUBE_COLOR="colour33"
  KUBE_FOREGROUND="colour15"
  if echo "$KUBE_CONTEXT" | grep "prod" &> /dev/null; then
    # Default prod colors
    KUBE_COLOR="colour160"
    KUBE_FOREGROUND="colour15"
  fi
  if [ -n "$KUBE_CONTEXT" ]; then
    KUBE_TEXT="#[default]#[fg=$KUBE_FOREGROUND, bg=$KUBE_COLOR] $KUBE_CONTEXT #[default]#[fg=$KUBE_COLOR, bg=$KUBE_NAMESPACE_COLOR]#[default]#[fg=$KUBE_FOREGROUND, bg=$KUBE_NAMESPACE_COLOR] $KUBE_NAMESPACE #[default]#[fg=$KUBE_NAMESPACE_COLOR, bg=default]"
  fi
fi

FIRST_SEP_COLOR=$KUBE_COLOR
​
echo "#[fg=colour255, bg=colour0] $CURRENT_SESSION #[fg=colour0 bg=$FIRST_SEP_COLOR]#[default]#[bg=colour235]#[default]$KUBE_TEXT#[bg=colour235]"
