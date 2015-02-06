---
layout: post
title: "Looking Ahead to Octopress 3.0"
date: 2015-02-06T10:49:53-05:00
summary: "How I've tweaked my jekyll blog without a real promise to blog more."
image:
tags:
- site
- jekyll
- octopress
---

When you've got a blog and haven't posted for a very long time, it's hard to post something without pointing out how long it's been or making a promise to start blogging more. I haven't blogged in a long time and I hope to start doing so more regularly again.

There.

So, what's the first thing that a nerd does before blogging again? Tinker with blogging software, of course.

### What's wrong with Jekyll?

Nothing, really. In fact, I managed to hack together some emacs config and rake tasks that more or less did things the way I wanted them done: easily start a new draft, publish said draft and mindlessly publish (via rsync). It worked pretty well, at least for this blog. (More big claims: I might start other blogs this year).

### But there's Octopress!

When I first converted this blog from Drupal to Jekyll, I remember looking at [Octopress](http://octopress.org/). Aside from the "Kubrik of Jekyll" theme, the thing that always bugged me was "start by cloning this repository" as instructions.  I want my blogging tool to be a package I install and commands I use to manage my blog.

Apparently, [back in October](https://github.com/walkah/walkah.net/commit/9e50301564d5530eb3fc1e740bcd1320b8c4f184), I stumbled across the next generation of Octopress. I don't even remember how. (Yes, this post has been a long time coming). A few weeks ago, the [official teaser post](http://octopress.org/2015/01/15/octopress-3.0-is-coming/) came out and nicely summarized some of the features. Essentially, Octopress 3 does the things I want and more. Things I dig so far:

1. It's now a gem with `octopress new draft` and `octopress publish`, etc.
1. My rsync rake task is cleanly replaced by `octopress deploy`
1. Octopress "ink": allows for installable themes (no more "clone this repo").
1. You can work on just your current post with `octopress isolate` which is great when your blog (however sporadically used) dates back over a decade.

Maybe nicer tools won't make for better writing habits, but it definitely won't hurt.

Here's to writing more, in public, at my own domain in 2015.
