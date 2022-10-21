#!/bin/bash
# piping to /dev/null silences any outputs from grep
if apt list --installed | grep -c "python3-venv" > /dev/null
then
    echo "Found python3-venv, setting up venv"
else
    echo "python3-venv not installed, starting installation..."
    apt-get update
    apt-get install python3-venv -y
fi
python3 -m venv .venv
if [ ! -f ./requirements.txt ]
then
    echo "requirements.txt not found, skipping"
else
    python3 -m pip install -r requirements.txt
fi
