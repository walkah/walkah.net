--- 
layout: post
title: Local development for external APIs
created: 1282323370
permalink: blog/walkah/local-development-external-apis
tags: 
- geek
- oauth
- howto
- api
---
Lately I have found myself doing a *lot* of development against external APIs, several of which require those services to be able to access my dev site directly. Traditionally, I've set up my dev sites on a public server (usually my personal VPS), mirrored the site locally, and used [rsync](http://www.samba.org/rsync/) to push incremental changes from my local machine to the server.

This is a pain for two reasons: 

1. It means I have an extra step (to rsync) after each change. Yes, it's the same command over and over, but it gets repetitive. Also, if I forget, I spend a few minutes trying to figure out why the change I just made doesn't appear. 
1. I'm also left with old dev sites (that I generally forget about) out on the public web - generally not getting proper attention for security updates, etc. This leaves my VPS open to attack.

I also spend a *lot* of time tweaking my local environment to be just-how-I-like-it(tm).

Recently, I had an idea that, in hindsight, seems obvious. However, in talking with a few people, it seemed just novel enough to warrant the high bar of intellect that is a blog post. So here is the magic:

### What you need:

* A wildcard DNS entry (i.e. `*.home.example.com`). I'm lucky that my [home ISP](http://teksavvy.com/) allows me to have a static IP address, but a [DynDNS](http://www.dyndns.com/) or similar account would also work.
* A linux/mac computer attached to your home/office network that is *not* currently running a web server (i.e. port 80 is unused) - preferably connected via ethernet. I happen to have an old mac mini that serves as my "media server" at home that I'm using.
* Ports 22 and 80 forwarded from your router to the aforementioned computer. (This is left as an exercise to the reader).

### The "magic":

Given the above, the rest is really quite simple (and perhaps obvious to some). A simple ssh port forward does the trick. Here's the command I use:

    ssh root@home.example.com -R 80:localhost:80
    
For the unfamiliar, that says ssh into home.example.com as root and send all the traffic coming to port 80 at home to port 80 on my localhost. 

Voila! Now all requests to home.example.com will come to my local server and I can setup vhosts, etc accordingly. Also, if I just end my ssh connection, I no longer have to worry about the big, scary Internet accessing my dev sites.

### TODO

I'm not 100% happy about allowing root ssh into my home network, so I may spend a rainy Sunday afternoon and setup an HTTP proxy at home that forwards to something like 8080 on localhost (and perhaps gives a nice "we're not home" message if I'm not ssh'ed in). That way, I wouldn't need to ssh in as root (which is necessary to bind the "low number" port).

If you do much tinkering with remote services (particularly OAuth-based services or webhooks, etc.), I hope this makes life just a little bit easier for you.
