--- 
layout: post
title: macports vs fink?
created: 1184435973
permalink: blog/walkah/macports-vs-fink
tags: 
- mac os x
- macports
- fink
---
<p>In setting up a new mac os x machine for development, I seem to fiddle with the various choices out there. In one respect, I really like linux for having 'one way' (per distribution of course) for installing all of your system packages. On the mac, however, there are a couple choices:</p>
<ul>
<li>Install everything from source: most control, biggest hassle</li>
<li>Install things from various binary packages: least control, hassle monitoring updates & upgrades from different sources. Packages like <a href="http://www.mamp.info/en/index.php">MAMP</a> lessen some of this burden, but I still need other tools like subversion, etc.</li>
<li><a href="http://finkproject.org/">Fink</a> : installs a debian-like apt-get system</li>
<li><a href="http://www.macports.org/">MacPorts</a> (formerly DarwinPorts): uses a freebsd-like ports system for managing packages.</li>
</ul>
<p>Traditionally, I've used Fink - as I generally use <a href="http://debian.org/">Debian</a> on servers, so I'm very familiar with apt-get, dpkg, etc. However, fink, perhaps like debian proper, seems to lag with packages in stable, and you typically have to use the ports-like <code>fink</code> command anyway.</p>
<p>This time around, too, I noticed that MacPorts is now hosted by <a href="http://www.macosforge.org/">Mac OS Forge</a>: making it a (semi-)official Apple project. This probably bodes well for it's future and longevity. There's a port for php5, apache2 and mysql5... so I've decided to give it a whirl.</p>
What are others using?
