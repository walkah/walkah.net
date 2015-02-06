---
layout: post
title: Keeping myself in sync
created: 1173909630
permalink: blog/walkah/keeping-myself-sync/
tags:
- mac os x
- thunderbird
- google
- sync
- ical
- ldap
- calendar
---
<p>Here's what I want: ubiquitous access to my important personal data (schedule, contacts, etc). Now, currently this typically means using web applications for storing and editing your data. This has been working fairly well for me in the case of Google Calendar. The big issue with the web is sometimes I need this data when I'm offline - which, yes, sometimes happens. To circumvent this, I've been using gcal's <a href="http://en.wikipedia.org/wiki/ICalendar">iCal</a> feed to see things in Apple's iCal (always loved that naming ambiguity). This has the added advantage of allowing me to sync this data to my phone. But, here's my complaint (you knew there'd be one): updates only happen one way. That means I can't add a new meeting from my phone, or even from iCal - I have to do it all from google calendar - which means I have to be online to do it. The situation is worse for contacts because I have yet to find a nice address book tool that will write to LDAP (my centralized store of choice). That said, here are some interesting things I'm playing with now:</p>
<p><a href="http://www.spanningsync.com/">Spanning Sync</a> is currently my favourite and what motivated me to blog this - and timely as today they <a href="http://blog.spanningsync.com/2007/03/spanning_sync_v_1.html">released v1.0</a>.  I've been playing with it for the last few beta releases. It's worked really well and is *exactly* what I want. The downfall is a $25/year subscription fee (or $65 one time). However, I like it enough that I might just bite the bullet for this one.</p>
<p><a href="http://www.addressbookserver.com">Address book X LDAP</a> automatically sync's your OS X address book to an LDAP server - built to work with OpenLDAP (yay!). I haven't tried this one yet - it's also not free- but I've used AddressBook4LDAP (from the same author) in the past, so I have high hopes for this.</p>
<p>Both of these are OS X only tools (both using the iSync framework), but until I take action on my moving back to regular linux desktop usage - perhaps I should stop making such a big deal out of that fact.</p>
<p>Now, really, it would be nice if iCal and AddressBook (or maybe some elegant replacements from the mozilla community or elsewhere) worked like this out of the box. Sort of like how Mail.app and IMAP work together. I want a server that stores my data (ideally that has a web-based interface for the off time I don't have my own computer handy) with an offline mode. We have LDAP and CalDAV for server technologies... Dear Apple, I say pretty please. Am I the only one? What are other folks using?</p>
