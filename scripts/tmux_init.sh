#! /bin/bash

SESSION_NAME="system"
tmux has-session -t $SESSION_NAME &> /dev/null

if [ $? != 0 ]
then
  tmux new-session -s $SESSION_NAME
fi

tmux attach -t $SESSION_NAME
