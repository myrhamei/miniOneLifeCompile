#!/bin/bash
set -e
cd "$(dirname "${0}")/.."

repo=$1
repoURL=$2

cd $repo


### remove all remotes and local branches, add new origin and track all remote branches in new origin
# git checkout --detach
# git remote | xargs -r -n1 git remote remove
# git branch | grep -v \* | xargs -r git branch -D
# git remote add origin $repoURL
# git fetch --all
# for remote in `git branch -r | grep -v /HEAD`; do git checkout --track $remote ; done
# git remote show origin | sed -n '/HEAD branch/s/.*: //p' | xargs git checkout

### remove local branches, change origin, track all remote branches in new origin
git checkout --detach
git remote | grep origin | xargs -r -n1 git remote remove
git branch | grep -v \* | xargs -r git branch -D
git remote add origin $repoURL
git fetch origin
for remote in `git branch -r | grep origin | grep -v /HEAD`; do git checkout --track $remote ; done
git remote show origin | sed -n '/HEAD branch/s/.*: //p' | xargs git checkout

### remove all remotes and local branches
# git checkout --detach
# git remote | xargs -r -n1 git remote remove
# git branch | grep -v \* | xargs -r git branch -D

