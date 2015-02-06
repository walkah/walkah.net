---
layout: post
title: drupal_not_found
created: 1071611580
permalink: blog/walkah/drupal-not-found/
tags:
- drupal
---
so, a little side effect of my changing my site around as much as i have is that there are some links out there in the wild that reference content that no longer exists. this is not the end of the world, but i typically like to keep track of them. (i.e. which pages aren't found). well, since sometime around drupal 4.2 there has been support for a feature known as 'clean urls' , which involves apache mod_rewrite, but essentially makes every requested path a valid one as far as apache is concerned. this means drupal should handle when requests are not found. and i wasn't the only one who <a href="http://drupal.org/node/view/2102">thought so</a>.
anyway, after much <a href="http://lists.drupal.org/archives/drupal-devel/2003-12/msg00451.html">back and forth</a> between myself and the other developers, i managed to get a patch into drupal core that rectifies this. what's even better is that in addition to sending a proper 404 header and logging the not found request in watchdog... you can also specify a custom 404 page.
thanks to <a href="http://www.buytaert.net">Dries</a> and <a href="http://www.natrak.net/">Kjartan</a> for accepting the patch and making sure it was sane. :)
