---
layout: post
title: "Vagrantcloud, Test Kitchen and My New Workflow"
summary: On my new devops workflow using test kitchen and vagrantcloud
tags:
  - vagrant
  - chef
  - devops
---

Just when I thought I'd settled into the "[Berkshelf Way](http://www.getchef.com/blog/chefconf-talks/the-berkshelf-way-jamie-winsor/)" for virtualizing and automating everything I do, things changed. This week, [Vagrant 1.5 was released](http://www.vagrantup.com/blog/vagrant-1-5-and-vagrant-cloud.html) which broke the [already end-of-life'd](https://sethvargo.com/the-future-of-vagrant-berkshelf/) `vagrant-berkshelf` package. While I could've happily stayed with vagrant 1.4 (at least for a while), it got me thinking about how I use these things.

### Two types of Vagrant

What I realized is that I have two ways that I use vagrant (and, of course chef):

1. For local development (generally for PHP-based stuff) where I want to simulate the production environment.
1. To test chef-based deployment of apps (generally anything non-PHP) that I'm developing "locally".

The first use case requires a lightweight way for me to boot up the environment while I'm working. The later just needs verification that it's working, but isn't intended for local use.

### The new plan

I still start with `berks cookbook` for a project. However, instead of running  `vagrant provision` over and over until my cookbooks converge nicely, I've started to make use of [test-kitchen](http://kitchen.ci/). If you haven't yet, check it out. It provides automated testing to make sure my cookbooks work (packages installed properly, services running, etc).

The best part is: this cleanly supports my second use case as is.

However, test-kitchen isn't designed to be used for my "develop in the VM" scenario. The reality is that those VMs don't (and shouldn't) change frequently. Also, from project to project, they tend to be very similar (particularly, say, between Drupal projects).

The best part is: along with Vagrant 1.5 came [VagrantCloud](https://vagrantcloud.com/). This allows me to easily share (and version!) packaged vagrant boxes. My first one is an [ubuntu box for drupal development](https://vagrantcloud.com/walkah/drupal-precise64) which is built from my [chef-drupal](https://github.com/walkah/chef-drupal) repository. So now things look like:

1. Write my "application" cookbook
2. Test / verify with test-kitchen
3. Vagrant package the box
4. Release the new box on vagrantcloud
5. Start a new project with `vagrant init walkah/box-name`

No more cloning repositories for similar projects. No need to converge/provision over and over to do development. Yet, I can still keep projects cleanly updated. I like it!
