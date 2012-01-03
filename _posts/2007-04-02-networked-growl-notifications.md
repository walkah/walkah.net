--- 
layout: post
title: Networked growl notifications
created: 1175551406
permalink: blog/walkah/networked-growl-notifications
tags: 
- mac os x
- growl
- itunes
---
<p>I finally experimented with a neat feature in one of my favourite apps for mac os x, <a href="http://growl.info/">growl</a>. There is a very promising looking "Networking" tab in the preference pane for growl. I've often thought that this could be a cool feature, but it was non-obvious how to make it work. Essentially, I have found that it's easiest to play my music off of my mac mini - it has my 100gb collection mounted locally and is directly connected to my speakers - but I'd still like the song-change notification from growl when working on my powerbook (silly, perhaps, but I like it). So, with a little help on IRC from <a href="http://trac.adiumx.com/wiki/the_tick">The_Tick</a>, here's how:</p>
<ul>
<li>On my powerbook (the growl "client"), I checked "Listen for incoming notifications"</li>
<li>On my mini (the growl "server"), I checked "Forward notifications to other computers"</li>
</ul>
<p>That's it. It is that easy. The part that had me stuck was I was expecting the "Add computer" button to do something on my mini. Not true. It's all automatically discovered via bonjour. I was warned that it can be buggy and you can create infinite loops if you try to do two-way notification, but otherwise it's pretty cool if you ask me.</p>
