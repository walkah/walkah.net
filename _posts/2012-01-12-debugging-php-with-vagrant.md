---
layout: post
title: PHP Xdebug with Vagrant
tags:
  - vagrant
  - php
  - xdebug
---
I've been asked a few times about getting [Xdebug](http://xdebug.org/) for PHP working in a [Vagrant](http://vagrantup.com/) environment. Most people tend to use Xdebug on localhost and IDEs are often able to configure themselves to work without much hassle in that environment. However, putting PHP in a virtual machine makes the setup a little trickier. 

Xdebug works by using a protocol known as [DBGP](http://xdebug.org/docs-dbgp.php) over TCP. What makes it slightly confusing, however, is the protocol flow happens in *reverse* from how most developers are used working: the server makes connections to your "client" (e.g. your IDE). Your debugger actually listens on a port (9000 by default), and Xdebug connects to that. Understanding that makes the setup make a little more sense.

Vagrant generally uses "Host-Only Networking" with an IP for the virtual machine of "33.33.33.10" (see the [documentation](http://vagrantup.com/docs/host_only_networking.html)). In this scenario, your host machine (i.e. where your debugger will be listening on port 9000) is accessible from the VM at 33.33.33.1. That means, we need to tell Xdebug to make it's connections to 33.33.33.1 on port 9000. This can be handled by the following php configuration:

<pre>
xdebug.default_enable=1
xdebug.remote_enable=1
xdebug.remote_handler=dbgp
xdebug.remote_host=33.33.33.1
xdebug.remote_port=9000
xdebug.remote_autostart=0
</pre>

I handle this configuration with this [xdebug.ini.erb](https://github.com/walkah/chef-repo/blob/master/site-cookbooks/drupal/templates/default/xdebug.ini.erb) template in my [chef-repo](https://github.com/walkah/chef-repo). 

I have found that this works quite well with my Emacs setup using [geben](http://code.google.com/p/geben-on-emacs/), but I've not yet tested it with other IDEs. 
