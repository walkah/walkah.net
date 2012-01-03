--- 
layout: post
title: loving thunderbird
created: 1131566400
permalink: blog/walkah/loving-thunderbird
tags: 
- mozilla
- thunderbird
---
<p>with the 1.5 release of <a href="http://www.mozilla.org/products/thunderbird/">thunderbird</a> upon us (currently <a href="http://www.mozilla.org/products/thunderbird/releases/1.5.html">1.5rc1</a>), coupled with my foray back into linux on the desktop, i've been giving it another go. looks like most of my issues from my <a href="http://walkah.net/blog/walkah/the-quest-for-a-perfect-mail-client">previous post</a> have been addressed: specifically on-the-fly spellchecking and being able to create saved searches for flagged messages (big win!).</p><p>so, i'm currently using thunderbird full time on all my machines - complete with LDAP for my addressbook, and i'm liking it a lot. the multiple identity support in *one* account is great (since I have all my various mail forwarded to one place) - it means I can have a per-identity .signature (which since I maintain those in CVS - means they're uniform across machines). but, of course, it wouldn't be a blog post if i didn't complain about *something*. So here it is, my 2 big thunderbird feature requests:</p><ol><li>LDAP entry editing. If my dn has write access, I want to be able to edit LDAP addressbook entries from thunderbird. Please :)</li><li>sender faces support. i have really grown to love this part of mail.app. Having people's pictures show with the headers in a mail message is a hugely effective visual cue (way to go apple!). i've got the <a href="http://tecwizards.de/mozilla/messagefaces/">MessageFaces</a> extension installed which helps for people that actually send X-Face headers (which more or less nobody actually does)... and you can specify a local directory for images. but here's what i *really* want: search my LDAP directory for jpegPhoto entries that match and use those. that would rule.</li></ol><p>mostly though, i'm pretty happy, especially after putting the following in my user.js file:</p>
<pre>
user_pref("mail.check_all_imap_folders_for_new", true);
user_pref("mailnews.show_send_progress", false);
user_pref("mailnews.reply_header_type", 2);
</pre>
<p>The other big tip i have for those of you as addicted to <a href="http://www.growl.info/">growl</a> as I am is to grab the <a href="http://globs.org/articles.php?lng=en&pg=9">YAMB</a> extension which allows you to use <a href="http://growl.info/documentation/growlnotify.php">growlnotify</a> for new messages.</p><p>Anyone else have some good thunderbird tips?</p>
