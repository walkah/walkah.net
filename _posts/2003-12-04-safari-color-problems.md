---
layout: post
title: safari color problems
created: 1070556480
permalink: blog/walkah/safari-color-problems/
tags:
- mac os x
---
i came across something very odd recently while trying to futz my way around photohop. i was trying to create an image for a <a href="http://www.sudden-thoughts.com/">site</a>, and thus was using the hex code from the site background for the image background. However, when the resulting image was viewed on a PC (with IE 6 or Mozilla) the colors did not match.  after trying the same image with <a href="http://www.gimp.org">the gimp</a>, the colors matched successfully on windows browsers (and even moz et. al on linux). *however*, they didn't match under safari (and still don't).
it appears that photoshop and safari (at least) seem to share some image rendering code that is applying some broken color "correction". the (not very) good news is that it appears i'm not the only one experiencing this... <a href="http://trainedmonkey.com/entry/1252">here</a> is at least one other documented case.
if anyone knows of a fix/workaround/etc i'm all ears! (i've already tried other colorsync profiles in system prefs, and yes my display is set to millions of colors).
