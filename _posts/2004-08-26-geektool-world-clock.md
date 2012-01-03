--- 
layout: post
title: geektool world clock
created: 1093536838
permalink: blog/walkah/geektool-world-clock
tags: 
- mac os x
---
while this isn't directly <a href="http://www.bryght.com/">bryght</a> related, one of the things that we've been trying to adjust to is the fact that we span 3 time-zones - which makes coordinating our efforts tricky. i know that <a href="http://www.bryght.com/about/the-team/adrian">adrian</a> bought a couple extra clocks to help himself keep track. i, however, am far too cheap for that, so i half-heartedly checked around for a platform-independent "world clock" tool. after some searching, i discovered a tool in debian called "<a href="http://packages.debian.org/stable/utils/tzwatch">tzwatch</a>" - which turns out to just be a simple shell script that simply uses date(1). of course! if you set $TZ before calling date, that is the timezone used. after getting over feeling dumb, i threw the following into a little shell script:
<code>
TZ=Canada/Pacific date +"Vancouver: %I:%M %p %D"
TZ=Africa/Johanessburg date +"Africa:    %I:%M %p %D"
</code>

so, i can now easily see the local time of my coworkers. however, i was reading <a href="http://www.jluster.org/node/253">jonas' post</a> about <a href="http://projects.tynsoe.org/en/geektool/">geektool</a> and thought "perfect". so i downloaded and installed geektool on my powerbook, and set it up to use my little "script". the result looks like this:

<img src="http://walkah.net/files/geektool-clock.jpg" height="61" width="295" alt="geektool-clock.jpg" title="geektool-clock.jpg" />

