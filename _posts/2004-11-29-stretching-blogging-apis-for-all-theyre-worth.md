---
layout: post
title: stretching blogging APIs for all they're worth
created: 1101760366
permalink: blog/walkah/stretching-blogging-apis-for-all-theyre-worth/
tags:
- drupal
---
<p>
for those of you that don't know, i'm "<a href="http://walkah.net/MAINTAINERS.txt" title="drupal maintainers list">officially</a>" the maintainer of the blogapi.module for <a href="http://drupal.org/" title="drupal content management framework">drupal</a>. therefore, i took it upon myself to look into an <a href="http://drupal.org/node/6195">old request</a> to support editing multiple node types via blogapi.module . i was not particularly fond of the original approach, as it tied folks to only submitting either "blog" nodes or "story" nodes. however, a very clever community member recently <a href="http://drupal.org/node/6195#comment-16521" title="teradome's idea">made a suggestion</a> on how to make this feature possible using the <a href="http://www.blogger.com/developers/api/1_docs/">currently</a> <a href="http://www.xmlrpc.com/metaWeblogApi">available</a> <a href="http://www.movabletype.org/docs/mtmanual_programmatic.html">apis</a> - the trick is to use the (formerly unused) "blogid" parameter to differentiate between node types. please feel free to <a href="http://drupal.org/node/6195#comment-16756">try my patch</a>, and i'll try to get it in for the next drupal release.
</p><p>
this patch, though, highlights my biggest frustration with the current state of the APIs: they are just not flexible enough. so many of the things in the current blogapi.module consist of compromises to make things work in a reasonably sensible manner in drupal.
</p><p>
so, as an author of the "software at the other end", consider me officially <a href="http://inessential.com/?comments=1&#38;postid=2984" title="Brent Simmons - author of MarsEdit">agreeing with brent</a> (of Mars Edit) that we need to get together with the likes of <a href="http://ecto.kung-foo.tv/" title="ecto">Adriaan</a> et. al and fix this thing.
</p>
