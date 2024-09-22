#!/bin/bash

SESSION="dev"

# If script flag is -r, restart the session
if [ "$1" == "-r" ] ; then
    tmux kill-session -t $SESSION
fi

# If script flag is -k, kill the session
if [ "$1" == "-k" ] ; then
    tmux kill-session -t $SESSION
    exit 0
fi

tmux has-session -t $SESSION 2>/dev/null

if [ "$?" -ne 0 ] ; then
    # Nvim window
    tmux new-session -s $SESSION -n editor -d
    tmux send-keys -t $SESSION:editor "nvim" C-m
    # Console window
    tmux new-window -n console -t $SESSION
    # BTM/H(B)top window
    tmux new-window -n top -t $SESSION
    tmux send-keys -t $SESSION:top "btop" C-m
    # Switch to editor window
    tmux select-window -t $SESSION:editor
fi


tmux attach-session -t $SESSION
