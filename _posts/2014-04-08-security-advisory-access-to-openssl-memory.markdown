---
layout: post
title:  "Security Advisory – Access to OpenSSL Memory"
date:   2014-04-08 12:00:00
author: "Jacob Cook"
summary: "A critical vulnerability has been found in the popular open source SSL library OpenSSL."
---
A critical vulnerability has been found in the popular open source SSL library OpenSSL. Nicknamed **"[Heartbleed](http://heartbleed.com/)"**, this vulnerability allows attackers to exploit a flaw in OpenSSL to read portions of process memory. As such, it is a very serious flaw as it could potentially lead to exposure of a large amount of information being stored by the system in question, not just for Genesis but also for most services you are hosting.

**arkOS servers are vulnerable to this bug and should be updated immediately.** To update, run the following command via the command line:

`sudo pacman -Sy openssl`

Then restart your system. Once updated, your OpenSSL version (`pacman -Q openssl`) should match “1.0.1.g-1″. If you run a web service and would like to test if your system is vulnerable to the bug after its fix, check out [this web application](http://filippo.io/Heartbleed). For maximum assurance, if you are using self-generated certificates, you should also consider deleting your CA and all certificates via the Certificates pane, then regenerating and assigning new ones.

All arkOS services, including the website/forums, development servers, software repositories and the like, have been patched and are not vulnerable to this bug.
