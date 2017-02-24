#!/bin/bash
mkdir -p ~/.vnc
x11vnc -storepasswd $VNCPASS ~/.vnc/passwd
x11vnc -forever -usepw -create 
