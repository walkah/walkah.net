--- 
layout: post
title: Facebook apps and the importance of Identity 2.0
created: 1180139549
permalink: blog/walkah/facebook-apps-and-importance-identity-2-0
tags: 
- openid
- identity20
- facebook
- web20
- f8
---
<p>Those who have seen me speak about OpenID lately have noticed that I have become very fond of using "inspiration" from <a href="http://blame.ca/">Dick Hardt's</a> *awesome* <a href="http://identity20.com/media/OSCON2005/">Identity 2.0 presentation</a>.  One of the key points Dick makes in his talk is to point to Web 2.0 to drive Identity 2.0 forward. With the blogosphere a buzz (all a-twitter?) this week over the launch of <a href="http://developers.facebook.com/">the facebook platform</a> (or "f8"), I think this reality is about to blow up in the spotlight.</p>
<p>This may date Dick's presentation (OSCON 2005), but in it he points to the issue of then social networking golden child <a href="http://www.friendster.com/">Friendster</a> and their feature for adding your amazon wishlist to your profile. The key point being: you gave Friendster your username and password to amazon - thus implicitly releasing full access to your amazon account to Friendster. So, in keeping things current, I have been using <a href="http://www.facebook.com/">Facebook</a> as my example social network - specifically their feature to import contacts from Gmail/Hotmail/etc:</p>
<p><img src="http://walkah.net/sites/walkah.net/files/facebook-email.png" alt="facebook email" /></p>
<p>We can all see the problem here, right?</p>
<p>So, enter the Facebook platform and a whole slew of developers and service providers anxious to take advantage of that amazing Facebook user base. So now we get things like this:</p>
<p><img src="http://walkah.net/sites/walkah.net/files/facebook-twitter.png" alt="facebook twitter" /></p>
<p>To enable <a href="http://www.twitter.com/">twitter</a> support (as Facebook tells me 12 of my friends have already done), I have to give facebook my twitter account details?!</p>
<p>Now, the point of this post isn't to harp on Facebook. It's a great service and I use it and enjoy it. And really, they don't have a choice (do they?)- they want to offer great features and there needs to be some way to link user accounts across these multiple services. This is exactly (one of) the problems that <a href="http://identity20.com/">Identity 2.0</a> aims to solve.</p>
<p>The problem here is that we, the users, don't own our identity on the internet. There are walled gardens and data silos of information about us. Twitter and Facebook both have directory entries - a username and a password - that they use to identify me but there is no correlation that the directory entries match. I can't verify that they do without giving one system <em>full access</em> to the other to verify that the username on each system actually correspond to the same person. <strong>This</strong> is where we need user-centric identity. This is "why <a href="http://openid.net/">OpenID</a>".</p> 
