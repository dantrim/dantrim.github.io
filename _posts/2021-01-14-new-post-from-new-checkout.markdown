---
layout: post
title: "New Post From New Checkout"
date: 2021-01-14T17:14:22-08:00
---

These are the steps to create and deploy a new post after a fresh checkout
of the repository hosting the Octopress blog:

```shell
git clone git@github.com:dantrim/dantrim.github.io.git
cd dantrim.github.io
git checkout source # work on source, deploy to master
octopress new post <post-name>
# edit post
octopress deploy
```

In order to build and preview the built site, do:
```shell
$ bundle exec jekyll build
$ bundle exec jekyll serve
```
And go to `http://127.0.0.1:4000/` on your web-browser.
