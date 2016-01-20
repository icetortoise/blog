#!/bin/bash

echo "######## Have you undraft your post?"
echo
echo "### push to blog repo now"
echo
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
git add -A
git commit -m"blog update"
git push origin master
echo
echo
echo "### generate content to public folder and publish to github"
hugo --theme=hyde
cd public
git add -A
git commit -m"blog update"
git push origin master

echo "ALL DONE NOW!"
