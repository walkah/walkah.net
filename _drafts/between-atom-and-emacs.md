---
layout: post
title: "Between Atom and Emacs"
summary: I'm trapped between two text editors and the new kid is winning me over.
image:
tags:
- emacs
- atom
---

I have been an [Emacs](https://www.gnu.org/software/emacs/) user since the late 90's. Over the years, I've tried (sometimes harder than others) to switch to something newer or fancier. Heck, I've even [blogged about it](http://walkah.net/blog/walkah/komodo-4-0-im-trying/)... [more than once](http://walkah.net/blog/walkah/komodo-ide-take-two/). Nothing else ever stuck... until now.

I mentioned a few posts ago that I consider [Atom](https://atom.io/) to be an important part of my [static blog toolkit](http://walkah.net/blog/my-static-blog-toolkit/). It's true: I'm writing this post with it, using the live Markdown preview. But, I've also been using it for day-to-day coding. I've been getting actual work done with it. And I've been enjoying it!

Atom can be extended by packages written in [coffeescript](http://coffeescript.org/) - something I use currently for work - vs. [elisp](https://en.wikipedia.org/wiki/Emacs_Lisp) which I haven't done much with since University. The truth is, though, I haven't written any Atom packages (yet?). I'm not even sure that I will.

Because I love lists of threes, here we go:

### Three Emacs Things I Miss

1. [Magit](http://magit.vc/) - Having version control (i.e. git) built-in is handy. I've been trying [Github for Mac](https://mac.github.com/), but mostly just using the git command-line.
1. [Flymake](http://flymake.sourceforge.net/) - I didn't realize how much I'd come to rely on my flymake setup for writing typo-free (ish) code. I've been following and using the [Linter](https://atom.io/packages/linter) package, which will hopefully become a suitable atom equivalent.
1. Years of tuning - my [emacs.d](https://github.com/walkah/emacs.d) configuration has been on github since 2011, in SVN and CVS before that. The regular tweaking has made emacs so comfortable for me that it's gotten hard to use other things.

### Three Atom Things I Love

1. `atom` - Given my project-switching habits, I've long envied the Textmate/Sublime users launching a project (with tree view!) from the command-line. I can now start working on a project by typing `atom ~/Projects/<name>` and it even remembers which files were open. [Projectile](https://github.com/bbatsov/projectile) has similar project-focused features, but I'm loving a window per-project.
1. Status Bar - It's amazing how useful a clean, clear status bar can be. Icons! Colours! Not to mention nice plugins like [Travis CI Status](https://atom.io/packages/travis-ci-status). I'm finding it far more useful than my emacs [mode line](http://www.emacswiki.org/emacs/ModeLine).
1. `apm` (and stars) - Package management for *years* was a major pain for emacs. While it's gotten much better lately (and I have enjoyed [Cask](http://cask.readthedocs.org/en/latest/)), `apm` is proving to be far more useful. Moving between machines? Star the packages you use on atom.io and run `apm stars --install`.

I don't know that I'll ever give up Emacs completely (and I actually use Vim for quick edits), but I have a new, free, cross-platform editor that I like to use - and it's not even 1.0 yet.
