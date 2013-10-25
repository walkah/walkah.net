---
layout: post
title: Like the Nerdiest Boy Scout
tags:
  - geek
  - hardware
  - readycase
  - iphone
---

With this week's release of Apple's latest [OS X](http://www.apple.com/osx/) (aka "Mavericks"), I finally took the time to complete a nerdy little project of mine. 

### It starts with the ReadyCase

I was an Indiegogo backer of the [ReadyCase](http://ready-case.com/) which I recommend (although, my first-run case needed a little modification to work with my Belkin dock, YMMV). One of the biggest attractions is that it comes with a USB stick - something I never seem to have on me when I need it. Now, as long as I have my phone on me (i.e. *always*), I have my USB stick.

### Partition It

As an early adopter, I got a 16gb version (the max now is 8gb). I split my drive into two partitions: 1 for the Mavericks installer (aka "Mavericks") and a second partition for "important" files (aka "Data"). It was super simple to set this up using `Disk Utility`:

* Both partitions are "Mac OS Extended (Journaled)"
* I'm using the GUID Partition scheme (available under "Options") - required for install disks
* I made the 2nd partition encrypted, just in case.

I am thinking of potentially adjusting this into 3 partitions, though: Installer, Secret files (encrypted) and Scratch (for temporary transfers, etc). 

### Mavericks Installer

It wasn't too tricky before, but Mavericks includes a nice little utility for creating "install media". Once you've downlowded the Mavericks installer from the app store, just run:

    /Applications/Install\ OS\ X\ Mavericks.app/Contents/Resources/createinstallmedia --volume /Volumes/Mavericks --applicationpath /Applications/Install\ OS\ X\ Mavericks.app

### Important Files

So far, my "Important Files" drive includes my ssh private key and a few other handy backups. However, I'm working hard so that more and more of my configuration is automated via my [chef-workstation](https://github.com/walkah/chef-workstation) setup. Between that and all of my "in the cloud" data, I can pretty easily bootstrap a new machine in an emergency.

I am prepared.

