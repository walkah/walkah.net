--- 
layout: post
title: Why Vagrant
created: 1309877603
permalink: blog/why-vagrant
tags: 
- drupal
- acquia
- devops
- chef
- vagrant
- veewee
---
Few things are as frustrating in the life of a (web) developer as those unfortunate times when, despite passing QA and testing, your latest feature, bugfix or completed task stops working when it gets to production. Nobody likes to have the sweet feeling of "go live" victory wasted. While any number of things can cause the embarrassment and wasted time, one way to significantly reduce the number of potential errors is to keep your development, staging and production environments as close to each other as possible. 

Lately I've been dealing with my own special, self-inflicted challenge: I have two machines (a thinkpad x201 and an older, pre-unibody macbook pro) that run two different operating systems (Ubuntu 11.04 and Mac OS 10.6, respectively). Now, why I do this is probably a longer discussion, but I do - and I like it. Just to add a little more (minor) variation, my personal projects, experiments (and in fact this blog) all run on [linode](http://www.linode.com/?r=3c5ce8caa09f2a260f8f696985dac260fcc01d5f) instances (running Ubuntu 10.04). The end result is, my development and "production" happens across 3 different OS versions. Standard package installations of development tools (regardless of which technology I'm exploring at the moment) are rarely ever the same release version. Throw in some subtle and potentially maddening differences between linux and os x (case insensitive filesystem, what?) and I've lost too much time debugging my own fixes. 

As it turns out, I do an okay job of emulating my own little development team (except in productivity, of course).

In a more real world scenario: I have been doing some work lately with [Myplanet Digital](http://myplanetdigital.com/) (a fun team located in Toronto - and they're hiring). One of their portfolio client projects is a fairly large, complex Drupal implementation. The production version is hosted on [Acquia cloud](http://acquia.com/products-services/managed-cloud) hosting, they host their own QA / CI / testing infrastructure, and their (ever-growing) development team uses a mess of mac os x and windows versions. They are continually looking for ways to streamline their development process - and avoid any needless debugging time.

### Vagrant Chefs to the rescue!

I've developed a growing interest in two tools to help solve this dilemma: [Chef](http://www.opscode.com/chef/) (for environment management and provisioning) and [Vagrant](http://vagrantup.com/) (for local, VirtualBox based virtual machine management). Vagrant is super easy to get running, like it says on the home page:

    $ gem install vagrant
    $ vagrant box add base http://files.vagrantup.com/lucid32.box
    $ vagrant init
    $ vagrant up

Assuming you have a reasonably functional ruby environment and have a recent version of VirutalBox installed, that's all there is to it! Chef (for provisioning), however, has taken me a bit more time to get my head fully around. You can see my experiments happening live(ish) on [my github](https://github.com/walkah) account.

### But I don't use lucid32!

One interesting thing about the Acquia managed hosting platform, is it's all built using Ubuntu Hardy (8.04). In Internet years, it's rather old but has some significant differences from Lucid (and most current packaged versions of the LAMP stack) - PHP 5.2 (vs. 5.3) and MySQL 5.0.x (vs. 5.1.x). To do this right - to actually replicate the production environment for development - it's important to have these versions in sync. There are subtle differences between these versions that can trip you up. Enter [veewee](https://github.com/jedi4ever/veewee). A few weeks ago, I provided a [pull request](https://github.com/jedi4ever/veewee/pull/53) for veewee that added a "hardy32" template - for building a vagrant box with the same version of Ubuntu found on Acquia hosting. For the lazy, I've posted the [base box](http://dl.dropbox.com/u/6091/hardy32.box) to my dropbox account.

Overall, I've found it requires a bit of tinkering (I'll try to share more as I go), but the result is that I can deploy code with a bit more certainty and that is worth it. I'm here tinkering, so you don't have to.

I should also mention, that all Drupal developers should checkout the [vagrant project](http://drupal.org/project/vagrant) on drupal.org for a nice general solution for Drupal apps.

Dev Ops!
