#!/bin/bash

### special variables###
echo "All argus passes to script : $@"
echo "Numbers of vars passesed to script: $#"
echo "script name : $0"
echo "present directory: $PWD"
echo "who is running : $USER"
echo "home directory of current user : $HOME"
echo "pid of this Script: $$"
sleep 100 &
echo "PID of recently executed background process: $!"
echo "all grgs passed to script: $*"
