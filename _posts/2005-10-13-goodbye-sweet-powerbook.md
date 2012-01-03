--- 
layout: post
title: goodbye sweet powerbook
created: 1129187274
permalink: blog/walkah/goodbye-sweet-powerbook
tags: 
- mac os x
---
<p>i've been meaning to post this for a few days: it looks like my beloved 12" powerbook is destined for early retirement. a careful search of my "blog memory" reveals that "pollock" (as I'd named it) was just over <a href="http://walkah.net/blog/walkah/powerbook-shipped" title="powerbook shipped">two years old</a>. the problem started a week ago, when I started experiencing frequent kernel panics (if you've never seen mac os x's 4-language screen of death - it's not a happy place)....</p>

<p>(cue flashback music...)</p>

<p>i was in stuttgart, germany again (if you missed that it's a good indication of how sporadically I post here) - just finishing what turned out to be an intensely grueling 10 day sprint. my powerbook had essentially been running hard 18-20 hours a day for the 10 days, but it was the final day. i was happily working along (well, groggily at best), when it locked for the first time. odd i thought, but i rebooted and tried to continue. it locked up several more times, and i started getting the <a href="http://docs.info.apple.com/article.html?artnum=106227">"4 language screen"</a>.  eventually they became so frequent that I had to finish out the day standing at the rack in the (very well-cooled) server room to finish my tasks.</p>

<p>too tired to really try and diagnose it, i packed and flew home (spending most of the 8 hour flight completely comatose).</p>

<p>luckily, i was able to not really miss a step thanks to my little <a href="http://walkah.net/blog/walkah/a-tale-of-two-macs">mac mini</a> and my diligent use of version control and/or rsync. finally, on friday I took the time to look a bit deeper into the issues. after much googling, i finally decided to try running "the apple hardware test" - since all signs pointed towards a hardware failure. I had also been keeping panic.log output (which if you don't know is located in /Library/Logs/panic.log).  The panic.log looked like my video card might be to blame:</p>
<pre>
Unresolved kernel trap(cpu 0): 0x300 - Data access ...
Latest crash info for cpu 0:
   Exception state (sv=0x3C191500)
      PC=0x00A31B24; MSR=0x00009030; DAR=0x3D38134E; ...
      Backtrace:
0x00A31C20 0x00A187DC 0x00A32AB8 0x00A132C8 0x005C04FC 0x005BB9AC 
         0x005BBE6C 0x005BBD14 0x0003C738 0x000A9694 
      Kernel loadable modules in backtrace (with dependencies):
         com.apple.GeForce(4.0.6)@0xa12000
</pre>
<p>note the "com.apple.GeForce" reference. so, sure enough, I run the hardware test and i get a failure in the video ram with the following error code:</p>
<pre>2NVD/1/4:2069</pre>
<p>(i actually typed that code from memory). feeling that I was armed with enough information to address an apple tech - and knowing that my laptop was outside the standard warranty period - I called my local apple service shop. The guy on the phone said he wasn't a tech and had no idea what was involved to fix that error - and that the service department was a week behind. *sigh*</p>
<p>so, i called apple's 800 service number. the guy on the phone was fairly helpful - he seemed to appreciate that I'd at least done my homework - and he suggested that apple had a flat rate service fee of $300-something dollars (US) and that in a roughly 2 week period they could return a working laptop. i thought to myself, "that's nice, but I'd really like to have my laptop sooner". so i asked the guy if the <a href="http://walkah.net/blog/walkah/apple-store-yorkdale-first-in-canada">apple store yorkdale</a> would be able to do the repair - for the same rate. he said "yes".</p>

<p>on saturday sandi and I headed to the mall, waited in line at the "genius bar" and - armed with my error code - i pulled out my powerbook and explained the situation. after some digging, the "genius" made a nasty looking face... *apparently* on the powerbook errors in the video ram (which he confirmed this was) - are treated as a logic board replacement. essentially, to repair it they would replace the entire logic board and charge me $1400 CAD (plus tax)!!!! AND it was going to take them a week to get the part in!</p> 

<p>i mentioned the flat rate fee - and the "genius" responded that they do in fact offer that, but basically when the powerbook got to the apple techs in california, I would have received a notice that there were going to be additional charges. can't argue with a genius, right?</p>

<p>now here i am - with a basically unusable machine. and while i don't seem to have a clear answer as to exactly how much money and how long a fix would take, all signs point to "ouch".</p>

<p>i've spent some time sobbing ... i've also been trying to get my brother's old dell inspiron 2650 in a workable state (more on that later). it looks like my best bet will be to eventually replace my powerbook - but i need to do some saving and decide what exactly i want to do next...</p>

<p>please if you have suggestions / recommendations / condolences  - leave a comment. free beer to anyone who knows a simple/cheap fix that I've been unable to dig up :)</p> 
