git branch -r | awk -F/ '/\/bugfix/{print $2}' | xargs -I {} git push origin :{}
