#!/bin/bash

REPO='git-demo'

if [ "$1" == "" ]
then
    echo $0 DIRNAME
    exit 1
fi

echo "$1"
mkdir $1
cd $1

mkdir $REPO
cd $REPO
git init

echo "[user]
	name = Foo
	email = foo@code-maven.com
" >> .git/config

echo "First line" > README
git add .
git commit -m "first line"

echo "Second line" >> README
git add .
git commit -m "second line"

echo "Third line" >> README
git add .
git commit -m "third line"

# Create branch and make some changes there
git branch add-button
git checkout add-button

echo "One" >> BUTTON
git add .
git commit -m "button 1"

echo "Two" >> BUTTON
git add .
git commit -m "button 2"

gitk --all

git checkout master

gitk --all

# Make changes on "master" as well
echo "Fourth line" > README
git add .
git commit -m "fourth line"

gitk --all

git checkout add-button
git rebase master

git checkout master
git merge add-button -m "Merge add-button"

gitk --all

git branch -d add-button

gitk --all


