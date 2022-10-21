#!/bin/bash
local cmd_file="/usr/bin/git-credential-manager"
touch $cmd_file
# pipe command to file
"'/mnt/c/Program Files/Git/mingw64/libexec/git-core/git-credential-manager.exe' $@" >> $cmd_file
sudo chmod +x /usr/bin/git-credential-manager

# updates the git config to use git-credential-manager by default
git config --global credential.helper manager
