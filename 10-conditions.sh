#!/bin/bash

echo "all variables : $@"
echo "Number of Variables : $#"
echo "current directory: $PWD"
echo "user running directort: $USER"
echo "script name: $0"
echo "home directory: $HOME"
echo "PID of the script: $$"
sleep 10 &
echo "Last PID running in background: $!"