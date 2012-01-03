--- 
layout: post
title: translate_node.module
created: 1074873060
permalink: blog/walkah/translate-node-module
tags: 
- drupal
---
so one of the main challenges in building 'canadian' websites is the whole 2 official national language thing. to add to the complexity, it is customary for government sites to have a language 'toggle'  that takes you from any page to an identical page in the other language. so, i've written a small module to try and cope with this issue (so that node/view/$nid shows you the appropriate translation based on your currently selected $locale value).
<a href="http://cvs.drupal.org/viewcvs/contributions/sandbox/walkah/translate_node/">translate_node.module</a> (although still a bit rough around the edges) in conjunction with core's locale.module can allow drupal-based sites to fulfill this requirement.
i also have a 'language toggle' patch that I'll be posting as well when i get the chance.
