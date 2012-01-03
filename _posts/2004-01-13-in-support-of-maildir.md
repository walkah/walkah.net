--- 
layout: post
title: in support of maildir
created: 1074014940
permalink: blog/walkah/in-support-of-maildir
tags: 
- geek
---
<a href="http://www.off.net/~shaver/diary/">shaver</a> - i would definitely support the move to maildir (from mbox). i made the switch over a year ago (or was it two?) and have been very happy. the thing that killed mbox for me was locking... any imapd will lock the whole mbox file which means when i'd leave client running at home, i'd have to ssh in and kill it from work (read pain in the arse). i also find webmail a bit snappier with maildir (others even formally <a href="http://www.courier-mta.org/mbox-vs-maildir/">benchmark</a> crap like that).
my current mailhosting setup (and i've rolled it out in a couple locations) consists of postfix, procmail (using maildir), courier-imap and spamassassin. works for me(tm).
however, as far as doing the conversion... i looked at a couple scripts but just ended up doing it by hand with mutt. i get nervous easily when messing with people's mail :P
