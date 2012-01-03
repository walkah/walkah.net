--- 
layout: post
title: Mac OS X from the command line
created: 1186083889
permalink: blog/walkah/mac-os-x-command-line
tags: 
- mac os x
- cli
- adduser
---
<p>Dear Apple, I love you, but sometimes you drive me up the wall.</p>
<p>I've been playing around with a little project to set up sandbox drupal sites on a mac mini (more details on that later) ... that's easy stuff, but the annoying part is: I'd like to share directories via <a href="http://www.samba.org/">Samba</a> which needs system accounts. The trick is, I want to add all of this via a simple little shell script. No problem right? Simple one line call to <code>useradd</code>... right?! Noooooooooo. Not in OS X. No, in OS X <em>this</em> is how you <a href="http://developer.apple.com/documentation/Porting/Conceptual/PortingUnix/additionalfeatures/chapter_10_section_9.html#//apple_ref/doc/uid/TP40002856-BBCDBFBD">add user accounts from the commandline</a> (which, of course, is under "Porting unix/linux applications"):</p>
<pre>
# dscl / -create /Users/portingunix
# dscl / -create /Users/portingunix UserShell /bin/bash
# dscl / -create /Users/portingunix RealName "Porting Unix 
# dscl / -create /Users/portingunix UniqueID 503
# dscl / -create /Users/portingunix PrimaryGroupID 1000
# dscl / -create /Users/portingunix NFSHomeDirectory /Local/Users/portingunix
# passwd portingunix
</pre>
<p>I dunno... I think that's just annoying. Perhaps NetInfo has some beauty that I'm just don't understand, but, couldn't Apple at least ship with some standard <code>useradd</code> wrappers or something?</p>
