#!/bin/bash

echo "Have you undraft your post?"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
git add -A
git commit -m"blog update"
git push origin master
hugo --theme=hyde
cd public
git add -A
git commit -m"blog update"
git push origin master

echo "ALL DONE NOW!"
