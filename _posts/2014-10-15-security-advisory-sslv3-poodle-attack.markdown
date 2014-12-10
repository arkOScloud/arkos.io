---
layout: post
title:  "Security Advisory – SSLv3 POODLE Attack"
date:   2014-10-15 12:00:00
author: "Jacob Cook"
summary: "Details have emerged concerning a vulnerability in version 3.0 of the SSL encryption protocol."
---
Details [have emerged](http://googleonlinesecurity.blogspot.ca/2014/10/this-poodle-bites-exploiting-ssl-30.html) concerning a vulnerability in version 3.0 of the SSL encryption protocol. This vulnerability allows attackers who have control of a user’s connection to decrypt and access data from session cookies, allowing them to potentially access websites and services as if with your username and password.

**This vulnerability is not nearly as serious as the other big-name ones (Heartbleed, Shellshock) that have preceded it.** Nevertheless it is still important to secure yourself against potential threats and to make sure the best practices are consistently being followed.

Websites added in arkOS (that have SSL certificates added to them) include support for SSLv3 as well as for the newer TLSv1, TLSv1.1 and TLSv1.2. SSLv3 is mainly kept around to continue support for older versions of the Internet Explorer browser (6.0 and earlier). The easiest way to mitigate this problem is to disable support for SSLv3 in your sites, which you can do manually with the following steps. Do note that you will not be able to access your sites with Internet Explorer 6.0 and below; though that can be fixed by properly updating your client computer to a newer browser.

**To disable SSLv3 in your websites:**

 1. For each site you have set up, edit its server block file at `/etc/nginx/sites-available/sitename`, replacing sitename with the name of the site in question.
 2. Search for a line that begins with ssl_protocols, and in this line, remove the mention of `SSLv3` and leave the rest intact. Save and exit.
 3. Repeat steps 1 and 2 for each site that you have.
 4. Restart the Web Server (NGINX) process via the Status button in Genesis.

It is important to highlight that, through a mechanism known as a downgrade attack, **even newer browsers are susceptible to this attack** so even if you don’t use old versions of Internet Explorer, you should undertake to disable SSLv3 support right away.

A bugfix release of Genesis (0.6.2) will be coming out within the next two weeks to address this as well as other minor problems. It should also be mentioned that Genesis 0.7 and above will include a priority updates channel allowing fixes like these to be applied automatically. Hopefully that will help us all cope with the problems that seem to be cropping up like wildfire these days. :)
