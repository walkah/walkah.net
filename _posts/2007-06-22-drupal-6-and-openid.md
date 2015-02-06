---
layout: post
title: Drupal 6 and OpenID
created: 1182496085
permalink: blog/walkah/drupal-6-and-openid/
tags:
- drupal
- openid
---
<p>Well, it's been a couple days and <a href="http://drupal.org/node/152893">the news</a> has been on the front page of <a href="http://drupal.org/">drupal.org</a>, but I am very excited by the fact that the Drupal 6 will officially support <a href="http://openid.net/">OpenID</a>. It's taken a lot of work, so it feels really really nice to have it done. I wanted to post to (hopefully) answer some common questions that I've received and seen about the module:</p>
<p>From an OpenID perspective: the module implements OpenID Auth 2.0 Implementer's Draft 11 (i.e. latest spec at the time of this writing) - which means it should work against *any* OpenID provider currently "in the wild" - including those that only implement version 1.x of the spec. Only relying party support (for now) is in Drupal core.</p>
<p>The implementation is all Drupal native code - no third party libraries were used. This point has been <a href="http://openid.net/pipermail/general/2007-May/002357.html">discussed</a> several times and I'm not about to rehash that here. However, the final code footprint for openid.module (including css/js/etc) is ~1100 lines of code - compared to the JanRain PHP library which is over 10 times that size.</p>
<p>There is work towards OpenID provider code for Drupal as well ... I will be posting more here as that code shapes up for Drupal 5. There are also some  code on it's way to implement some of the OpenID extensions (i.e. Simple Registration and Attribute Exchange).</p>
<p>I'd like to say thanks to <a href="http://buytaert.net/">Dries</a>, all my colleagues at <a href="http://www.bryght.com/">Bryght</a> and everyone in the community for their support, encouragement and code reviews. I really believe OpenID - and digital identity - is an important part of moving the web forward and it's great to have the support of so much of the Drupal community in that. To <a href="http://drupal.org/cvs?commit=70639">quote Dries</a>:</p>
<blockquote>
Let this be the day where we help revolutionize the online society, and the way websites and web services interoperate.  Or something.
</blockquote>
<p>Rock.</p>
