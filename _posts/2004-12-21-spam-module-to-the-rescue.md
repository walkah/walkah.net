---
layout: post
title: spam.module to the rescue
created: 1103647741
permalink: blog/walkah/spam-module-to-the-rescue/
tags:
- drupal
---
<p>
perhaps it's a sign that this humble little site has "arrived" - but i've finally become inundated with blog comment spam. my first reaction was to simply turn on comment moderation for anonymous posters. and, yes, that did the trick - sort of. the problem is, that drupal doesn't (yet) provide an easy way to fire through the approval queue. you have to "yay" or "nay" each message individually. well, when dealing with 100+ comment spam messages, this can get tedious. also, since i run CVS HEAD on walkah.net, i noticed some bugs in the comment stats updating for stuff from the queue.
</p><p>
these minor things aside, however, i don't really want to have to worry about the queue - and having to approve messages individually is a drag for casual visitors - i.e. they take the time to post a comment, and it doesn't actually show up.
</p><p>
so, i finally took the time to install and play around with <a href="http://drupal.org/node/11104" title="Jeremy Andrews' spam module for drupal">spam.module</a>. i figured it would be good (given the general quality of jeremy's <a href="http://drupal.org/project/user/409" title="Drupal Modules for Jeremy Andrews">other modules</a>). well, i'm here to report : so far so good. i quickly trained the system on a couple of my queued spam messages and it has since caught 8 spam comments successfully.
</p><p>
got comment spam? get spam.module.
</p>
