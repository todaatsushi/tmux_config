#!/bin/bash
tmux new-session -d -s "wabsite" -n "server"

tmux send-keys -t wabsite:server "cdg website" Enter
tmux send-keys -t wabsite:server "clear" Enter
tmux send-keys -t wabsite:server "badger_up" Enter

tmux neww -n "container"
tmux send-keys -t wabsite:container "cdg website" Enter
tmux send-keys -t wabsite:container "sleep 5" Enter
tmux send-keys -t wabsite:container "clear" Enter
tmux send-keys -t wabsite:container "badger_local_image" Enter
tmux send-keys -t wabsite:container "clear" Enter

tmux neww -n "editor"
tmux send-keys -t wabsite:editor "cdg website" Enter
tmux send-keys -t wabsite:editor "nv" Enter

tmux attach -t wabsite:editor
