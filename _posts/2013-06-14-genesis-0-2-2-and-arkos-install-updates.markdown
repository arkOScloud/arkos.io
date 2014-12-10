---
layout: post
title:  "Genesis 0.2.2 and arkOS Install Updates"
date:   2013-06-14 12:00:00
author: "Jacob Cook"
summary: "This image includes updates to many core packages, as well as including some new support packages by default."
---
A new installation image for arkOS has been released, and according updates have been pushed to the package repositories. This image includes updates to many core packages, as well as including some new support packages by default.

To **install** the image for the first time, simply download it from the [Downloads page](/download), or use the arkOS Installer for Linux available from the same page.

To **upgrade** from an existing install image, you will have to perform some special steps. Arch Linux changed the preferred storage location for some binary files, meaning that downstream we will have to make the same changes. Instead of simply running `pacman -Syu` as you might normally do, or installing package updates through the package manager in Genesis, you must run the following commands in order:

{% highlight bash %}
pacman -Syu --ignore filesystem,bash
pacman -S bash
pacman -Su
You can run these from the terminal via SSH, or you can use the Execute plugin in Genesis.
{% endhighlight %}

**An interim update for Genesis has also been released.** This update contains a few minor bugfixes, including for the System Monitor disk usage widget not working, and for the First Run wizard releasing authentication at the wrong time. You can update this via your usual means. If you run the above upgrade procedure, the update will automatically be installed.
