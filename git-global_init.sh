#!/bin/sh
git config --global color.ui auto
git config --global remote.origin.push HEAD
git config --global push.default current

git config --global core.editor vim
git config --global merge.tool meld
#git config --global merge.renamelimit 999999

git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.br branch

git config --global alias.log-timeline log --format='%h %an, %ar - %s'
git config --global alias.log-local log --oneline origin/master..HEAD
git config --global alias.log-fetched log --oneline HEAD..origin/master
git config --global alias.hist log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short

