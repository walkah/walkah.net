---
layout: post
title: Every Drupal Site is an Install Profile
created: 1305902690
permalink: blog/every-drupal-site-install-profile/
tags:
- drupal
---
I've been working with this hypothesis while working on [Drupal 7](http://drupal.org/) sites. I don't think it's necessarily revolutionary, but I would like some feedback. Currently, I'm approaching every Drupal site build as its own install profile.

Back when we were running [Bryght](http://bryght.com/), we recognized the need for "Installation Profiles" as a way to focus the highly configurable, but largely baffling initial experience with Drupal into making sense. We had lofty dreams of catering to various verticals with streamlined, elegant experiences that took the immense power of Drupal and made it *make sense* for new users. That was Drupal 4.5... we were maybe ahead of our time. Needless to say, a lot has happened with Drupal since then.

With the release of Drupal 7, one of the things people aren't talking about as much are the vast improvements to install profiles. For the first time ever, Drupal core ships with more than one install profile, which has also meant that for the first time people are consciously aware that such things actually exist. In D7, install profiles behave much more like other Drupal packages (i.e. modules and themes). They have .info file and .install files. They are far easier to create than ever before.

Clearly, I'm not the only one who sees the importance. [Development Seed](http://developmentseed.org/) and now [Phase2 Technology](http://www.phase2technology.com/) have invested a lot in install profiles such as [OpenAtrium](http://openatrium.com/). For creating Drupal products such as Atrium, install profiles are important and central. What I am talking about, however, is to create an install profile for every Drupal site you build. In updating this very blog to D7, I created an install profile for my site to test (and tinker with) my theory.

### The theory

What is a Drupal Site? Well, once you've determined a version, core remains unchanged across most sites (you know, [don't hack core](http://www.flickr.com/photos/schmidtgergely/3212038247/) and all). So what makes a Drupal site your Drupal site is: 1) a theme 2) your selection of contrib modules and 3) any custom code / modules you may have written. If we dig a bit deeper, the things unique about a Drupal site are typically: 1) a theme 2) any custom code and 3) the *list* of contrib modules / libraries in use. It just so happens that an install profile can nicely encapsulate this information for us. So why bother?

1. A Drupal site rarely only gets installed in one place. Best practice suggests that we use development, staging and production for our websites. If we work on a team, "development" will actually be a separate install for each developer on the team. Being able to reliably install and replicate your site will actually make things much easier - whether it's just you or your whole team.

2. [Drush Make](http://drupal.org/project/drush_make) works well like this. Your profile can have its own makefile (as [openatrium](http://drupal.org/project/openatrium) does). Drush make will recursively make install profiles, and will add all contrib modules and libraries into your profile's directory. Maintaining nice separation.

3. Make the most of multi-site. Since your core version remains constant (at least for major versions) across all the sites you work on, why do you keep installing core? In my development environment (which I will write more about soon), I have 2 virtual hosts d6.dev and d7.dev. All of the sites I'm working on fall under one of the two. Thanks to drush make, I can have a single makefile for each major version that recursively grabs each profile (i.e. site or group of sites) that I'm working on for that version. The same can be used in production *or not* - the install profiles can move independently to production.

The end result is, I have very small custom repositories - containing usually a drush make file, a custom module or two and a custom theme. Checkouts are a breeze and I have a clear manifest of any other other code I'm using.

### Objections

Now, historically this isn't how people have approached Drupal sites. Historically it's not even how I've approached it. Generally, we have single repositories with all of core, our modules etc. Generally, a single repository containing all of the core, contrib and custom code - for years in subversion and now folks are transitioning to git. An argument for continuing this way (I received from [webchick](http://webchick.net/) herself), is that a single repository makes it easy to see things like if someone has made changes directly on production (?!?!) or that just by having a single checkout all developers / installations have the exact same code.

While I think "hot fixes" in production are a bad idea (no matter how small the site), the latter objection (exact same code) is worthy of a little more discussion. Keeping things in sync with Drush Make is a bit more work (always pin your versions!), I think it's a worthwhile habit to establish. Yes, git is fast enough that those long, painful svn checkouts are largely a thing of the past so having all of your code in a repository isn't as punishing.  For me, the hosting considerations above are significant, but another thing came up for me recently:

If you build a lot of Drupal sites, chances are good that there is some overlap. Say there is a patch that you need for a favourite contrib module, drush make means that you can explicitly apply the patch (and maintain it outside of your repository - or pull directly from the issue queue). Similarly, using independent [feature module](http://drupal.org/project/features) features allows for similar mixing and matching. Each module (or theme) should have a single, canonical source and a Drupal site is simply the combination or collection of them.

It seems to me there are real gains in being explicit with makefiles, being smart about hosting and re-using core, and being modular in our repositories (using drush make to pull it all together).

Am I crazy?
