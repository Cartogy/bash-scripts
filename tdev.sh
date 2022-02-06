#!/bin/sh
session_name=$1
dir=$2

if [[ -z "$1" ]] 
then
	session_name=dev
fi

if [[ -z "$2" ]]
then 
	dir=$PWD
fi

echo $dir

tmux new-session -d  -c $dir -n $session_name -s $session_name
tmux new-window -d -a -c $dir -n 'cmd' -t $session_name
tmux attach-session -d -c $dir -t $session_name 
