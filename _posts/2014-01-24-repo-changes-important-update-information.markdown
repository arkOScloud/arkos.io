---
layout: post
title:  "Repo Changes: Important Update Information"
date:   2014-01-24 12:00:00
author: "Jacob Cook"
summary: "A series of updates to arkOS packages have been pushed that make it compatible with new changes to the software repository structure."
---
A series of updates to arkOS packages have been pushed that make it compatible with new changes to the software repository structure. These updates are very important as the future repo structure will not be backwards compatible.

If you are using an existing installation of arkOS, please make sure you follow the below steps to ensure that you continue to receive updates and can use arkOS as intended. Future installations of arkOS using the new image (to be released soon) will not need to follow these steps.

#### Updating via Genesis

 1. In Genesis, open the Package Manager plugin
 2. Search for “pacman” and click Install to add it to the list
 3. Search for “pacman-mirrorlist” and click Install to add it to the list
 4. Click Apply to effectuate the changes
 5. Open the Notepad plugin
 6. Open the file located at `/etc/pacman.conf` and verify that the following lines are present near the bottom:
{% highlight ini %}
[arkos]
Include = /etc/pacman.d/mirrorlist
{% endhighlight %}

#### Updating via the command line

 1. Connect via SSH or the Terminal plugin of Genesis
 2. Run: `sudo pacman -Sy pacman-mirrorlist`
 3. Run: `sudo pacman -S pacman`
 4. Open the file located at `/etc/pacman.conf` and verify that the following lines are present near the bottom:
{% highlight ini %}
[arkos]
Include = /etc/pacman.d/mirrorlist
{% endhighlight %}

If these settings are performed properly, you should have no problems receiving further updates. Please send a message in IRC or on the forums if you experience problems during this process.

Thank you!
