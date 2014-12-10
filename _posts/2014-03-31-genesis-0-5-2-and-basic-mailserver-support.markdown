---
layout: post
title:  "Genesis 0.5.2 and Basic Mailserver Support"
date:   2014-03-31 12:00:00
author: "Jacob Cook"
summary: "This has been one of the most tricky obstacles to overcome, but a release candidate is finally available for testing."
---
I’m happy to announce that arkOS has basic mailserver support! This has been one of the most tricky obstacles to overcome, but a release candidate is finally available for testing. This system uses Postfix (MTA) and Dovecot (MDA), two well-known and well-used tools for processing and storing mail. Domains, mailboxes and forwarding aliases can be managed in Genesis via its graphical interface.

**DISCLAIMER – THIS IS VERY IMPORTANT FOR ALL TO READ AND UNDERSTAND BEFORE YOU ATTEMPT TO USE THE MAILSERVER PLUGIN:**

This is an Alpha plugin in Alpha software, meaning that it is NOT ready for consistent production use. You are hereby highly discouraged from making arkOS your chief mail service provider at this time. Please be patient and wait for at least beta versions of Mailserver and Genesis, which should be ready by summertime. Also please note that this plugin does not yet do anything fancy with email transit, encryption or caching: you will still need to know how to set up MX and SPF records on your own domain, as well as having proper and consistent Internet connectivity and port availability. Each one of these issues will be resolved by arkOS in time, through either core features or additional service offerings. But we aren’t quite there yet – your testing of this alpha version of the Mailserver is necessary to help us get there!

–

In other news, Genesis 0.5.2 has been released and uploaded to the repository. This release fixes a problem preventing the use of the Security pane with new versions of Fail2Ban, as well as a few very minor fixes to other parts of the core.
