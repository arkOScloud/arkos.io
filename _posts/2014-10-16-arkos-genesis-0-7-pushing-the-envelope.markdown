---
layout: post
title:  "arkOS Genesis 0.7: Pushing the Envelope"
date:   2014-10-16 12:00:00
author: "Jacob Cook"
summary: "We're shifting our focus to what a stable and secure future for the platform will look like."
---
Summer is well over for many of us, and the season of colder weather and “getting back to work” has come. Here at The CitizenWeb Project we spent our summer [working hard](https://arkos.io/2014/07/genesis-0-6-panoply-released/) at developing Genesis, and slowly but surely implementing the many features we promised during our crowdfunding campaign.* We’ve had the chance to give users an important first look at the wide variety of solutions we intend to provide through arkOS, and the response has been very positive. We’ve also announced some [exciting new initiatives](https://arkos.io/2014/08/new-services-skylark-and-arkos-connect/) to come in the near future that make the self-hosting process even easier. Now that autumn is here we’re shifting our focus to what a stable and secure future for the platform will look like. I wanted to take the time to explain some of the exciting things we are working on the OS side of things for the next version!


### Splitting the Atom

As it currently stands, Genesis is a single Python application that runs on top of the operating system. Genesis is the web application that you use to install new apps and websites, but it is much more than that. Inside Genesis are a whole manner of libraries intended to manage different aspects of the system; from generating SSL certificates to managing network connections, checking for package updates and updating internal firewall rules. Think of it as a sort of Python API for your entire computer!

For version 0.7, we intend to split Genesis into different components. This will have several advantages: primarily it will reduce complexity of the web application and increase its reliability and performance, in terms of both processing power and memory use; it will also allow for the development of a modular and semantic command line utility for managing most aspects of your system if Genesis is unreachable or you just don’t want to use it. (Can you say “arkos security allow owncloud”? Then you can manage your server from the command line!) You will still be able to access and manage the exact same components via Genesis.

The bulk of Genesis will be extracted into a core daemon and set of libraries (“arkos-core”) which will include, among other things, a central communication bus to handle interaction between constituent parts of arkOS, as well as reliably handle updates, which we’ll get to now!


### Simplifying and Securing

Presently the way arkOS handles package updates and availability has been very touch-and-go. Arch is intended as a “rolling release” distribution, meaning that there is no such thing as major versions and updates come as they are released (which is why we have only really versioned individual components like Genesis). However due to the mechanisms we have put in place not scaling very well, we have only pulled new packages from upstream for critical security fixes and for when we are making new disk install images. This has been beneficial in ensuring that components of Genesis don’t randomly break when a specification or API changes, but takes a lot of work and is by far not the best way to solve such a problem.

Our deployment flow will therefore be different from now on. First, the base package groups will be fetched directly from Arch Linux ARM (or Arch Linux for x86/64 machines) instead of just through us, bringing us closer in line with other derivative distributions and making important updates available faster. Second, we are developing a primary updates channel that all devices will have access to. This channel will be able to get instant and automatic updates for things like security patches (when issues like Heartbleed or Shellshock arise), new arkOS features, and more. Devices will periodically receive the latest update information and can either act on this automatically or can notify the user if action is necessary on their part. This will also enable us to deploy fixes to arkOS components quickly: if an upstream update breaks compatibility we can simply push an update patch and your device will have it in short order. The primary updates channel will be optional and fully configurable.


### Improving Genesis

As it is, Genesis is hosted via a simple internal HTTP server provided via Python’s gevent. The web application’s main pages are generated internally via XML templates and sent client-side via AJAX calls. This setup is decent in most circumstances but can be complex and slow when dealing with synchronous operations, which Genesis does more and more, such as downloading and installing an entire website from source. Our goal with 0.7 is to move Genesis to a more modern implementation based on Websockets, as well as moving more of its rendering capabilities into JavaScript. This, combined with the offloading of certain functions to different external processes like mentioned before, will ease load and reduce those long waiting times you might be used to on slower ARM boards.

arkOS (and Genesis by extension) will also be equipped with a smart centralized user store for credentials and low-level settings. This store will also be compatible with certain external services like Windows (SMB) file shares and the Mailserver app, meaning no more doubling up of usernames and passwords across most of your services.


### Extending arkOS

The 0.7 releases will come with a completely redesigned Beacon. For those of you who aren’t familiar with it, Beacon is a small utility that runs on your arkOS server and allows it to be found on the network, as well as executing shutdown/reboot/reload commands remotely when Genesis is inactive. I’ve spent a lot of time thinking about how Beacon can be made more useful and more secure, and the result will be the first limited API for arkOS servers. The API will be REST and JSON compatible and will securely expose certain operations to official client-side applications in development. This marks an important step to making arkOS more open for developers, and allows the possibility for exciting new utilities like third-party clients and notification services.

0.7 should also mark full integration for the arkOS CONNECT launch services, DelugeDNS and Drydock. That will make hosting websites from local connections and making secure data backups even easier! It will also allow for easy in-app purchases of domain names and SSL certificates.


### Let Us Know!

As always our vibrant community is a very important part of this project. We are always looking for insight for future releases and the things we should be working on. If you have comments or suggestions on things you want to see in 0.7 (including ideas for new plugins) please feel free to get in touch with us. The best way is via the forums — a copy of this post will be in the Development section for discussion.


Thank you!


* (*BTW, We’ll have a retrospective on our work from the crowdfunding campaign later this year!*)

