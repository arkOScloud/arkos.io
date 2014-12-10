---
layout: post
title:  "Genesis v0.2 Released"
date:   2013-05-26 12:00:00
author: "Jacob Cook"
summary: "A quick overview of the features this new version brings."
---
The newest version of Genesis is now available in the arkOS repositories. Here is a quick overview of the features this new version brings:

 * Genesis v0.2 features the beginning of a brand new visual style which will be expanded and updated in future versions. This includes new menu popovers, visible in the upper right-hand corner. These popovers will give the user quick access to messages and alerts, system settings, user profiles and more. Presently, a settings menu, users menu and shutdown menu are included.
 * In addition to the popovers, the authorization page has been redesigned, and Genesis now uses of “iconfonts” rather than icons, to provide a smoother visual style and to prepare for the future addition of user-customizable themes. This also (lightly) reduces the amount of data to be cached by removing unnecessary images.
 * The First Run wizard has been entirely redone, to better reflect the user’s first experience with arkOS. Options such as choosing a timezone, allowing SSH access and resizing the SD card have been added. More changes will be coming to this wizard in the future.
 * Many bugfixes and miscellaneous additions.

To update your arkOS node to Genesis 0.2, run the following from the command line:

{% highlight bash %}
systemctl stop genesis
pacman -Syy genesis
systemctl --system daemon-reload
systemctl start genesis
{% endhighlight %}

A new install image has not been released, and will not be released until Genesis 0.3 is complete. New installs of arkOS will therefore still be shipped with Genesis 0.1 and should upgrade in the same manner above.

This release does not add many new features, but the next version (0.3), targeted for late June/July, will feature new plugins including for the popular personal cloud system ownCloud. To see a full list of changes made in version 0.2, check out the [changelog](/dev/changelogs).
