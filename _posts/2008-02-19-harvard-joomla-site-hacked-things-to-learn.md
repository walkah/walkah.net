--- 
layout: post
title: "Harvard Joomla site hacked: things to learn?"
created: 1203456343
permalink: blog/walkah/harvard-joomla-site-hacked-things-learn
tags: 
- drupal
- openid
- security
---
<p>There have been <a href="http://cmsreport.com/node/1617">reports </a> that Harvard recently had a <a href="http://www.joomla.org/">Joomla!</a> based website compromised, and the database contents have been made available via BitTorrent. Of interest - the compromise was apparently via the usage of an insecure password. From the <a href="http://torrentfreak.com/harvard-website-hacked-080218/">Torrent Freak article</a>:</p>
<blockquote>
A file included with the release labeled password.txt carries a message:

    Thomas gatton….stupid people, you don’t use a secure password

</blockquote>
<p>While it's not entirely clear whether it was an insecure system password or an insecure Joomla! password used - it does highlight an important aspect of security.</p>
<p>Ensuring that you write secure code is only (a small) part of the security problem. With our recent <a href="http://drupal.org/drupal-6.0">Drupal 6.0</a> release, we have tried to incorporate several changes to help our users be more secure:</p>
<ul>
<li><strong>Password strength checker</strong>: when selecting a password now in Drupal, users are advised when their passwords are "weak". Encouraging tougher to crack/guess passwords <em>particularly</em> for admin and privileged users.</li>
<li><strong>OpenID support</strong>: Even a strong (hard to guess / crack) password can be compromised by a clever attacker if you consistently log in without SSL (i.e. when you're at that internet cafe). Also, remembering several (hundreds!) of complicated, strong passwords can be daunting and frequently leads to poor password choices. By including OpenID authentication support, Drupal users and administrators no longer have to remember passwords to every site they administer. They can use their OpenID - which in turn can implement stronger authentication methods to limit potential vulnerabilities. Development Seed has a <a href="http://www.developmentseed.org/blog/2007/dec/14/hello-openid-new-drupal-tool">great article</a> on how they use OpenID to avoid sharing passwords for admin accounts.</li>
<li><strong>Update module</strong>: One of the biggest security challenges is keeping you site up to date. Drupal sites tend to be a combination of Drupal core and several (10 - 50) contributed modules - keeping them all up to date is a complicated task. It's also a crucial security precaution.</li>
</ul>
<p>The point being: writing secure code is one thing, but there is a much trickier, critical task in <em>educating</em> users and administrators. It's something we're working towards within the <a href="http://drupal.org/node/32750">Drupal Security Team</a> and within the community in general. We're not done yet, and welcome your feedback and suggestions!</p>
