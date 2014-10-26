#! /bin/bash

dir=$(pwd)
session=$(basename "$dir")

tmux rename-session "$session"
tmux rename-window shell

tmux new-window   -n vim -d
tmux send-keys    -t vim "cd ." C-m  
tmux send-keys    -t vim "vim ." C-m  

tmux new-window   -n log -d
tmux send-keys    -t log "cd ." C-m
tmux send-keys    -t log "tail -f log/development.log" C-m

tmux new-window   -n console -d
tmux send-keys    -t console "cd ." C-m
tmux send-keys    -t console "rails console" C-m

# tmux new-window   -n db -d
# tmux send-keys    -t db "cd ." C-m
# tmux send-keys    -t db "rails dbconsole" C-m

tmux new-window   -n rails -d
tmux send-keys    -t rails "cd ." C-m
tmux send-keys    -t rails "rails server --binding=127.0.0.1" C-m

tmux swap-window  -s vim -t shell

