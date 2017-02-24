#!/bin/bash
mkdir -p ~/.vnc
x11vnc -storepasswd $VNCPASS ~/.vnc/passwd
unset VNCPASS
history -c
x11vnc -forever -usepw -create 
