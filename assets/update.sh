#!/bin/bash

crtdir=`pwd`
repo_file="${crtdir}/repo_mode.txt"
conf_file="${crtdir}/repo_config.txt"
> $repo_file

for i in `ls -d ./repo_mode/*`; do
    cd $crtdir
    cd $i
    urltmp=`git config --get remote.origin.url`
    echo $urltmp >> $repo_file
done

cd $crtdir

> $conf_file

for i in `ls -d ./repo_config/*`; do
    cd $crtdir
    cd $i
    urltmp=`git config --get remote.origin.url`
    echo $urltmp >> $conf_file
done

cd $crtdir
