#!/usr/bin/env bash

YESTERDAY=`date -d "yesterday" '+%Y-%m-%d'`
TODAY=`date '+%Y-%m-%d'`
todaybranch=feautre-auto-commit-${TODAY}
yesterdaybranch=feautre-auto-commit-${TODAY}
gitfiles=`find /home/leo/workspace/bitbucket /home/leo/workspace/bamboo -maxdepth 2 -type d -execdir test -d {}/.git \; -print`

for file in $gitfiles
do
    echo "git repo is ${file}"
    cd $file
    git add .
    git commit -m "auto commit in ${TODAY}";
    current_branch=`git rev-parse --abbrev-ref HEAD`
    git pull -r origin $current_branch
    git push origin $current_branch
done
