--- 
layout: post
title: DiSo for Drupal
created: 1212084815
permalink: blog/walkah/diso-drupal
tags: 
- drupal
- openid
- diso
- oauth
- microformats
---
<p>I had an interesting e-mail exchange yesterday with <a href="http://factoryjoe.com/blog/">Chris Messina</a> and a handful of folks from the <a href="http://diso-project.org/">DiSo project</a> about "DiSo for Drupal". For those of you who haven't heard of it DiSo is:</p>
<blockquote>DiSo (dee • zoh) is an umbrella project for a group of open source implementations of these distributed social networking concepts. or as Chris puts it: “to build a social network with its skin inside out”.</blockquote>
<p>See, Chris recently started a new job <a href="http://factoryjoe.com/blog/2008/05/13/im-joining-vidoop-to-work-on-diso-full-time/">working on DiSo full-time</a> at <a href="http://www.vidoop.com/">Vidoop</a>. With the announcements of <a href="http://www.facebook.com/news.php?blog=1&story=108">Facebook connect</a> and Google's <a href="http://www.google.com/friendconnect/">Friend Connect</a>, there is a battle raging for control of your identity and your relationships. DiSo, in many respects, is the free open answer for the rest of the internet. It combines several free, open standards that already exist in the wild like <a href="http://openid.net/">OpenID</a>, <a href="http://oauth.net/">OAuth</a>, and <a href="http://microformats.org/">Microformats</a> for exchanging identity and "friend" information.</p>
<p>So, Chris reached out a handful of us Drupal folks about getting on board. The good news is: we, the Drupal community, are already well on our way:</p>
<ul>
<li>OpenID (in Drupal 6.x core)</li>
<li>OpenID Provider : http://drupal.org/project/openid_provider</li>
<li>OpenID Attribute Exchange : http://drupal.org/project/openid_ax (in progress via Google SoC)</li>
<li>OAuth : http://drupal.org/project/oauth</li>
<li>Atom : syndication only - http://drupal.org/project/atom  - might be nice to have a basic envelop generator/parser implementation</li>
<li>XMPP : http://drupal.org/project/jabber , http://drupal.org/project/xmpp and http://drupal.org/project/xmpp_server (the latest of which is maybe the most promising)</li>
<li>vCard / hCard : http://drupal.org/project/vcard</li>
</ul>
<p>The big holes at the moment (from a DiSo perspective) are <a href="http://www.hueniverse.com/hueniverse/2008/03/announcing-xrds.html">XRDS-Simple</a> support and better support for microformats - specifically <a href="http://gmpg.org/xfn/">XFN</a>.</p>
<p>From the list of Drupal modules above, you may notice that this is an area of interest of mine :-P I look forward to working with the rest of the DiSo project and the Drupal community on this stuff!</p>
