#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'Initial Commits'
git push -f git@github.com:LHong168/Personal-Portfolio.git:gh-pages

cd -