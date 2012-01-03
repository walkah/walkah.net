--- 
layout: post
title: Oh noes! walkah got pwned!
created: 1178558694
permalink: blog/walkah/oh-noes-walkah-got-pwned
tags: 
- site
- drupal
- security
- downtime
---
<p>So, faithful readers, as you may have noticed if you tried to visit this site - I got "hacked". All of the sites hosted here had their index.php files replaced with a defacement message reminding us, amongst other things, that "Hack is not a crime". Since lots of folks have asked - specifically if it was drupal related - and since the information might be generally useful for the internets, I've decided to post a brief recap here.</p>
<p>First off: in a move I'd never seen before, the guys removed *all* log files from the system which makes figuring out exactly what happened pretty darned tricky. In fact, they had removed anything with 'log' in the name - things like logwatch and logrotate binaries were also removed. So, what I say here is largely speculation based on the few remaining traces I found left behind. As such, here is my theory (perhaps the cracking team will be nice enough to post comments with clarifications ;):</p>
<p>The only real clue how they got in was the following in /tmp:
<code>
drwxr-xr-x  3 www-data www-data 4.0K Apr 28 16:24 .sc/
</code>
That might not mean a whole lot - except that the datestamp is right and the directory is owned by www-data : the uid of my apache process. This strongly suggests a web-based exploit. Since pretty much all that runs on my server is Drupal it looks like we've got a problem...</p>
<p>I had an old Drupal 4.4 site still running on this server (sudden-thoughts.com - down until further notice). Drupal 4.4 is susceptible to the (fairly) infamous <a href="http://drupal.org/files/sa-2005-004/advisory.txt">XML-RPC</a> hole. I had manually removed xmlrpc.php from this site, however, it was back - it looks like in a brain cramp moment by yours truly I had cvs up'ed the directory which brought the file back (as part of my routine drupal site maintenance on my server).</p>
<p>Now, that part is speculation, but a likely guess. Without my apache logs I can't even accurately guess which site was targetted... but 'statistics' module is enabled on most sites and showed nothing suspicious in accesslog or watchdog... thus suggesting xmlrpc as a likely candidate. All other sites run Drupal 4.7 or 5 - with all security updates applied. So, if it wasn't that site, then there is a new remote-execution vulnerability in drupal that we've not yet heard about on the Drupal security team. Possible, but unlikely given that the other glaring hole was available.</p>
<p>Remote code execution is a serious problem, but usually containable from a web application if you run apache as a non-privileged user (as i do). So, how then were they able to overwrite all the index.php files?</p>
<p>My server runs <a href="http://debian.org/">Debian</a> Etch (the latest release) with all security updates applied. So, again, unless they were using 2 un-resolved exploits - it leaves one likely option : the kernel. I was running an old, custom compiled 2.4 kernel - I mean *really* old, from 2003. Said kernel is vulnerable to things like <a href="http://secunia.com/advisories/8337/">a ptrace exploit</a> for privilege escalation. My theory is that something like this was used to gain root access. From there, they were able to overwrite all index.php files. They also installed the "shv5" rootkit - which modifies a bunch of system binaries (ls, ifconfig, nestat, etc) - detected by both <a href="http://www.rootkit.nl/">rkhunter</a> and <a href="http://www.chkrootkit.org/">chkrootkit</a>. More information on that available via google.</p>
<p>So, that's my theory and I'm sticking to it. So, is Drupal insecure? No. Not if you're good about running recent, maintained versions and keeping an eye on <a href="http://drupal.org/security">security announcements</a>. The problem here was more accurately due to lackadaisical administration on my part - both with the drupal version and the stale kernel. I know better ... chalk it up as a "shoemaker's son" scenario.</p>
<p>Thanks to <a href="http://acko.net/">Steven</a> who was the first to notify me (via SMS) that something was up. Of course, other speculations are welcome in the comments :)</p>
