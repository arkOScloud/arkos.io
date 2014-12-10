---
layout: post
title:  "Genesis v0.1 Framework Released (And Other News)"
date:   2013-04-21 12:00:00
author: "Jacob Cook"
summary: "Genesis, the framework for the server manager I’ve been working on, is ready for public testing and developer input."
---
Today I’m pleased to announce that Genesis, the framework for the server manager I’ve been working on, is ready for public testing and developer input. Genesis is the crowning feature of arkOS, forked from another server manager called [Ajenti](http://ajenti.org/), and will allow users to easily manage and update their decentralized web services from any computer. **This is just a beta release of the framework**, substantial work needs to be done before it is ready for general use, and it is not even close to where it needs to be. That being said, I hope everyone will take a look at how awesome it is. :)

Keep in mind that Genesis is a modular server manager. That being said, nearly all modules that actually relate to running server software (nginx, email, etc) are not yet complete. This release is just for the Genesis framework, and the core/management plugins that come with it, like Network Connections, Firewall, Terminal, etc.

Genesis is installed by default when you install an arkOS image. Today’s new install image contains Genesis by default, so all you have to do is install it to an SD card, plug it into a network-connected Raspberry Pi, and get going. If you already have arkOS installed, you can install Genesis by running `pacman -Sy genesis` and `systemctl start genesis` from the command line. Information for users on how to get started with Genesis’ framework can be found on the [newly-revamped Getting Started page](https://arkos.io/doc/getting-started). If you want to learn more about Genesis, see [the teaser page](https://arkos.io/genesis).

Developer documentation will be completed over the course of the next week. This documentation will feature all aspects of Genesis’ Plugin API, which allows you to write simple Python modules as bridges between Genesis and your applications. Follow us by one of the many methods listed on the sidebar to get further updates. Information on Genesis’ various plugins and how to use them will also be put up in the coming days.

If you have any input, be sure to share it, and submit those bug requests when they happen!

### Other News

 * **The site has been revamped, and information has been substantially improved.** This includes [Getting Started](/getting-started), [What Is arkOS](/what-is-arkos), and two new pages: [Free The Cloud](/cloud) for sharing with your friends what arkOS is all about, and [Genesis](/genesis), which should be self-explanatory. It also includes site theme changes on the front page and expansion of the Bootstrap features we use to give a good interactive experience to each page of the site. Please let me know if you find that the information is not clear or lacking in certain areas, I would love the input.
 * **New install image released.** This image was compiled today (April 21st) and has the latest versions of all new applications for arkOS. Chief among these are Genesis (mentioned above) and Arch Linux’s new network management system, netctl. You can download this image via the arkOS Installer or .IMG file on [the Downloads page](/download).
