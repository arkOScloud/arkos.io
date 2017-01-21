---
layout: post
title:  "Conclusions and Comments on our First Survey"
date:   2014-05-27 12:00:00
author: "Jacob Cook and Tom Atkins"
summary: "Thanks to everyone who gave their input on our very first user survey!"
---
First off I’d like to thank everyone who gave their input on our first user survey. Over 380 people completed it, giving us a very good read of what our users are interested in and how they feel we should best be supporting ourselves. This kind of input is critical to our mission of building a quality self-hosted data platform that all individuals have complete control and input over. **Thank you!**

![Map of survey responses by country]({{ "/static/img/20140527001.png" | prepend: site.baseurl }})

(We received survey input from all over the world (top spot once again was Germany!)

Many of you took the time to write helpful additional comments on a wide variety of subjects. We really appreciate your input and have read every single comment. We will to take on board as many recommendations as we can.

### Why are you interested in arkOS?
The results of this survey have been very encouraging. You told us that you want to use arkOS because it is important for you to be able to **own your own data** and ensure it’s **privacy and security** above all else. We will continue our focus on making sure that arkOS stays fully open source, secure, and safe to use.

### What do you want to use your arkOS server for?
A significant majority of people would use arkOS as a **file sync** server before anything else, followed by easy-to-use **calendar and contacts**, **file shares**, and **email hosting**. Because of this, we are putting a renewed focus on building a quality File Sync plugin for arkOS, one that can handle many different types of files competently and securely. We hope to have more news on this and improvements to other plugins for Genesis version 0.7.

### Hardware and subscription services
When it comes to the option of buying hardware from us (an imagined 'arkBox'), the answers were pretty clear. Nearly half of you are happy with the hardware you already have or plan to build your own. That being said, just over 50% of people are interested in buying dedicated hardware, so we will certainly explore this option in the future.

Subscription services, (offsite backups, DNS services and renting a VPS in a data centre) show similar results. Around half of you have no interest in such services. The other half are mostly unsure, with a smaller percentage showing a positive interest. Quite a few people explained in the comments that they put 'Maybe' for these choices as they'd need more information on pricing and how the service would work before making a decision.

### We are committed to staying open and free
Many of you voiced your confusion or worry regarding subscription services. I think it’s important to be very specific regarding what we are looking to do so I’d like to take this opportunity to clarify some of our rationale.

First, any services added will be entirely **optional**. The operating system itself and all of its installed plugins will always be completely free of charge for people to use as they see fit. They will be created with the utmost concern for our users’ privacy rights and the security required to ensure them. They will also continue to be available on a wide array of hardware platforms, no matter what kind of alternatives we end up offering. This is non-negotiable, as it is central to our vision of building an OS and platform that people have real choice over and trust with their data.

So what does this mean for the options we’ve proposed thus far? The system in the works to make connecting to arkOS servers easier, **DelugeDNS** (dynamic DNS / port proxy), is once again completely **optional**. Many people are simply unable to get static IP addresses, which normally are required when hosting services. So rather than allow these people to give up the idea of self-hosting altogether, we want to give them an option to assist them with the process. This implies a small degree of centralization to aid the otherwise decentralized architecture. Our position is that, if you require 10% of centralized architecture to make a 90% decentralized architecture work, then there is still a significant end benefit to the user. This same principle holds true when you consider the privacy/security aspects of such a tool (when HTTPS is used with your own domain, for example, we have no ability to decrypt your communications even if you are using DelugeDNS).

The same philosophy holds true for the encrypted backup service **Drydock**. All backups will be encrypted on your own hardware, making the offsite storage location nothing more than a kind of “dumb warehouse” that just stores gibberish. So even in the remote case that the warehouse is broken into (so to speak), the contents would still be illegible to the attacker. Furthermore we don’t plan on “rolling our own”: the software backend would most likely be a dependable and secure solution that already exists, like Tahoe-LAFS or another similar system.

Our motivation for creating services like this is to take decentralized self-hosting to the masses: bringing the privacy and security implications of self-hosting together with the convenience you want and need for your services, without seriously compromising on either side of this equation.

We are looking for simple ways in which we can support our operations and the development we are doing on arkOS as a whole. We see ourselves as a bit of an “anti-startup”: making a new technology platform that isn’t backed by venture capitalists or shareholders, and therefore not subject to conflicts of interest or the ever-expanding “privacy slide” that large corporations often find themselves in. Our users must have the say when it comes to the things we do, period. So in proposing a nominal charge for these services, they can be a significant part of how we sustain the people we now have, putting their time and energy into making a great system for you, instead of working to constantly maximize profit at your expense.

I hope the above helps you understand our motivations with regards to these services. We realize that not everyone will want or need to use them. For the people who need them, or would find value in them, we want to make them available. If that enables us to support our operations, it will be a benefit to everyone that uses arkOS since we will be more able to sustain continued development. If you want to help support us without using these services, [donations will always be accepted](https://donate.citizenweb.io).

Thanks for your continued encouragement and participation in arkOS!

Jacob Cook
Executive Director, The CitizenWeb Project
