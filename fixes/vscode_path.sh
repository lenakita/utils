#!/bin/bash
newpath="/mnt/c/Users/${1}/AppData/Local/Programs/Microsoft VS Code/bin"
export PATH=$PATH:$newpath
echo $newpath
echo '${newpath}' >> ~/.bashrc
code $2
