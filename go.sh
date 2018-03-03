#! /bin/sh

d=$(date +%s)

git checkout -b rp-$d
git branch --set-upstream-to=origin/master

echo "HO " >> README.md

git add -A
git commit -m "Committed"
git push origin rp-$d

hub pull-request -m "Pull requested"

