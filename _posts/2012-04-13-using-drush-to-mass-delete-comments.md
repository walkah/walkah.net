---
layout: post
title: Using Drush to Mass Delete Comments
tags:
- drupal
---

Like many kind, good-natured geeks, I (yes, I was talking about me) host a number of small sites for friends. Many of those sites run Drupal and several don't get a lot of attention. That is, until spammers find their way around [Mollom](http://mollom.com/). I've seen this happen a few times, but most recently on a Drupal 7 site. In this particular case, the spam comments had been trickling in over a few weeks undetected. Following a burst of recent activity (enough to notice via monitoring), I checked in to find > 60,000 spam comments.

If this has ever happened to you: you're not alone. At this number of comments, using Drupal's interface (50 comments at a time) isn't really usable. Also, these things tend to happen in bursts - so chances are good there's a block of comments that are all spam (i.e. there haven't been any legitimate comments that you want to save since it started). So, I whipped up a small script here:

{% gist walkah/2379996 %}

Here's how to use it:

1. Place the code in a file (say, `comment-rm.php`) in your Drupal directory.
2. Find the `cid` of the first spam comment (exercise left to the reader) and set `$first_comment` to that value.
3. Run `drush scr comment-rm.php` and go grab a coffee.

Hope that helps someone, but at least now I can find it again next time.

*Beware*: This deletes comments forever, be careful.
