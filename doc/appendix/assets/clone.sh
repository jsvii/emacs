#!/bin/bash

crtdir=`pwd`
repo_dir=$crtdir/repo_mode/

while read repo;  do
    cd $crtdir
    dirname=`echo $repo | grep -Po '([a-zA-Z\-]+)(?=\.git)'`
#    $dirname
    if [[ -d $clonedir ]]; then
        echo 'exist!'
    else
        cd $repo_dir
        git clone $repo --depth=1
    fi
done < repo_mode.txt
