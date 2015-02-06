---
layout: post
title: geektool bloglines notifier
created: 1112799111
permalink: blog/walkah/geektool-bloglines-notifier/
tags:
- geek
- mac os x
---
<p>
so, i've started using <a href="http://www.bloglines.com/">bloglines</a> for my RSS reading lately (again). i must say, it's one of those "web applications" that I actually find enjoyable to use. I'm a <a href="http://ranchero.com/netnewswire" title="Netnewswire RSS Reader">netnewswire</a> owner, and like it a lot - but keeping "read" status across machines is pretty critical when you're trying to keep your "finger on the pulse". I already use the <a href="http://www.bloglines.com/about/notifier?tip=2#moz">mozilla notifier extension</a> in <a href="http://www.mozilla.org/products/firefox">firefox</a> which is great, but only shows when you've got unread stuff.
</p><p>
so, to follow the wild success of my <a href="http://walkah.net/node/96">geektool world clock</a>, i've present the geektool bloglines notifier:
</p><p>
simply add a geektool entry of type "shell" with the following command:
</p><p>
<code>echo "bloglines: $(wget -O - -q "http://rpc.bloglines.com/update?user=YOUREMAIL&#38;ver=1"|sed -e 's/|//g')"</code>
</p><p>
obviously replace <code>YOUREMAIL</code> with your bloglines account address.
</p><p>
you'll then have an up-to-date unread count on your desktop - great for knowing how far behind you really are in your RSS reading. One note: to be nice to the good folks at bloglines - update the "refresh" setting to be something more like 600 (every 10 minutes).
</p><p>
kudos for bloglines for a great product and super simple <a href="http://www.bloglines.com/services/api/notifier" title="Bloglines notifier web service">web services</a>.
</p>
