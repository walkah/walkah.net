--- 
layout: post
title: using drupal's blogapi with MarsEdit
created: 1101761694
permalink: blog/walkah/using-drupals-blogapi-with-marsedit
tags: 
- drupal
---
<p>i have noticed some rumblings (<a href="http://drupal.org/node/6195#comment-16529">like here</a>) about people having trouble posting to <a href="ttp://drupal.org/">drupal</a> powered sites using <a href="http://ranchero.com/marsedit/">MarsEdit</a>. specifically, MarsEdit recognize drupal's category support. here's how to make it work:</p>
<ol>
<li>make sure you have Drupal 4.4 or later (preferably at least 4.5), and that blogapi.module is enabled and that your user account has 'edit own blog' permissions.</li>
<li>add a new account in MarsEdit</li>
<li>edit the settings on the account. MarsEdit's drupal setting doesn't currently enable all of the features that recent drupal versions support. change the "Software" setting to be "Movable Type".</li>
<li>click "OK" and refresh the blog.</li>
</ol>
<p>MarsEdit should now post as expected. feel free to leave a comment here if you're still having troubles.</p>
<p><em>(this post brought to you by MarsEdit 1.0b12)</em></p>
