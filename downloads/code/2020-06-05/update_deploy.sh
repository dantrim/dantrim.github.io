#!/bin/bash

git clone git@github.com:<repo>.git
cd <repo>
git checkout source # source is the working branch
mkdir _deploy
cd _deploy
git init
git remote add origin git@github.com:<repo>.git
git pull origin master # master is the public view of the blog
cd ..
