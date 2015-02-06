---
layout: post
title: blogapi.module updates
created: 1092670140
permalink: blog/walkah/blogapi-module-updates/
tags:
- drupal
---
so, i managed to squeak a big <a href="http://cvs.drupal.org/viewcvs/drupal/modules/blogapi.module?r1=1.20&#38;r2=1.21">blogapi.module patch</a> in just before the <a href="http://drupal.org/node/view/10094">4.5 code freeze</a>. essentially, this patch completes support for <a href="http://www.movabletype.org/docs/mtmanual_programmatic.html">movabletype's xmlrpc api</a>. now, i'm sure it won't completely please absolute MT purists, but i think it does a good job compromising the differences between movabletype and drupal and allows users to take full advantage of sweet clients like <a href="http://ecto.kung-foo.tv/">ecto</a>.

i also really wanted to get this in for 4.5 because it allows you to take advantage of the new "input format" stuff that will be part of that release. that should at least make <a href="http://www.jluster.org/">jonas</a> happy :)
