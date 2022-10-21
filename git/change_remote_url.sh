#!/bin/bash
git remote set-url origin $1
git push --set-upstream origin $2
