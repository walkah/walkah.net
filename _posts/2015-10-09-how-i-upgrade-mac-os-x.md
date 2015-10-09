---
layout: post
title: How I Upgrade Mac OS X
date: 2015-10-09T09:56:27-04:00
summary: Fresh installs every year, (almost) fully automated. Overkill? Yup.
image: /images/2015/el_capitan.jpg
image_source: https://flic.kr/p/dkTQ9k
tags:
- chef
- devops
---

Last week saw the release of [El Capitan](https://en.wikipedia.org/wiki/OS_X_El_Capitan) the latest version of Mac OS X. Over the weekend, I did fresh installs on both of my machines. With minimal effort, I had both workstations ready to work, configured the way I like them.

tl;dr It's nerdy and totally overkill.

### chef-workstation

A few years ago, I read a blog post by [Josh Timberman](https://twitter.com/jtimberman) titled [OS X Workstation Management with Chef](http://jtimberman.housepub.org/blog/2012/07/29/os-x-workstation-management-with-chef/). This was in the height of my early exploration with [chef](https://www.chef.io/) and "DevOps". I loved the idea of keeping my desktop machine configuration in sync and set out to create my own version.

The result is my  [chef-workstation](https://github.com/walkah/chef-workstation) repository used in conjunction with a [hosted chef](https://manage.chef.io) instance.

I use this daily to keep my configuration in sync, but also it means I can reliably rebuild a machine from scratch with minimal effort (and without relying on backups).

### Just 5 simple steps!

For my annual upgrade, I like to start fresh. I run the installer from a USB key and re-format my hard drive. This year I tried to note the steps I took following my initial login after the clean install:

1. Update the hostname (Sys Prefs > Sharing). (I also turn on SSH access while I'm here).
1. Install [chef-dk](https://downloads.chef.io/chef-dk/) - this handy package includes all the chef-related tools I need.
1. Install xcode command line tools: `xcode-select --install`
1. Create my `/etc/chef` directory. In the past, I've removed my old node and created a new one (using my validator key, kept on a usb drive). This year, I just copied the directory from a backup.
1. Run `sudo chef-client`. This takes a long time.

### Almost perfect...

There are a few things left for me to do once the initial chef run is complete. I'd love to have them automated eventually:

* There doesn't seem to be a way to install apps from the Mac App Store programatically. So things like Keynote and Tweetbot have to get installed later.
* There's a lot of logging in required after the fresh install. I use [LastPass](https://lastpass.com/) (for passwords) and [Authy](https://www.authy.com/personal/) (for two factor auth), which both sync all the details, but I still need to re-authenticate everywhere.
* My `~/Projects` folder contains my, well, projects. I tend to re-create this (fresh clones, etc) manually. It helps weed out the cruft, but it would be nice to somehow automate.

Feel free to check out the [code](https://github.com/walkah/chef-workstation) and offer feedback, or fork it for your very own.
