---
layout: post
title:  "Dealing With Potential Vulnerabilities in arkOS"
date:   2014-06-09 12:00:00
author: "Jacob Cook"
summary: "We take all claims of security problems in arkOS seriously, no matter how vague they may be."
---
We have been made aware of rumoured vulnerabilities in several components of arkOS, namely the Genesis web-based management system and the Beacon client for the arkOS Network Browser. The individuals responsible for uncovering these alleged vulnerabilities have **declined to [responsibly disclose](https://en.wikipedia.org/wiki/Responsible_disclosure) them**, meaning that we have next to nothing to go on when it comes to fixing these alleged problems. We are not even sure if these are legitimate problems that they are referring to: it could just be suggestive trolling. The highly irresponsible behaviour by these individuals does a disservice to the security community as a whole, and we condemn their refusal to follow industry practice.

To prevent against potential misuse during the development period, **Genesis and Beacon should both be made *only* accessible on your local network, which can easily be done via the Security pane.** This is the best way to contribute to the security of your arkOS server at the present time.

We take all claims of security problems in arkOS seriously, no matter how vague they may be. Because of this, we would like to emphasize the following highly important points to keep in mind when using arkOS at this time:

* **arkOS is a work-in-progress**, and should be considered Alpha, only usable for testing and development purposes. There is a reason why this is plastered all over our website: we are moving quickly building the core of arkOS to reflect our goals for the platform, large parts of it have been kept unchanged from old versions of software it depends upon, and some items may remain unfixed or poorly implemented until we achieve stable status.
* **At this stage, security updates from upstream may be delayed**. As a derivative of [Arch Linux ARM](http://archlinuxarm.org), we depend on them for security updates to certain packages. But as we are in such early stages, we do not update our repositories every day: certain packages may be held back due to temporary compatibility issues, or lack of resources. As the project progresses toward stability, we will make improvements in how this is handled.
* The discovery of bugs, problems and vulnerabilities are normal and to be expected over the course of software development. They will be fixed when they are encountered.
* Security vulnerabilities should be described in detail and sent to [jacob@citizenweb.io](mailto:jacob@citizenweb.io) ([PGP key here](http://pgp.mit.edu/pks/lookup?op=get&amp;search=0x8F00446AE49F2D26)) so that we can fix them for our users as soon as possible.

Even in these early days, the well-being of our users is foremost in our mind, and we have done our best to make the state of the software at present clear to everyone. We hope that this post will help you understand should potential issues come to light in the coming weeks.

Thank you.
