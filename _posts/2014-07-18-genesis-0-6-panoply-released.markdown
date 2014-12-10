---
layout: post
title:  "Genesis 0.6 \"Panoply\" Released"
date:   2014-07-18 12:00:00
author: "Jacob Cook"
summary: "Genesis 0.6 has been released through the main repositories, and new disk images for all supported platforms have been prepared."
---
Genesis 0.6 has been released through the main repositories, and new disk images for all supported platforms have been prepared. This release is named "Panoply", so named by one of the contributors to the arkOS Funding Campaign that completed late last year. In Genesis 0.6 you will notice a completely new design, a new focus on stability and performance, as well as a ton of exciting new features.

A testing release for 0.6 was uploaded a few weeks ago, allowing many community members to test out 0.6 and reduce the number of bugs before the general release. We'd like to thank our dedicated testers for helping us so much with this! Release notes can be found [on Github](https://github.com/cznweb/genesis/releases/tag/0.6.0).

Genesis 0.6 "Panoply" is a Beta release of Genesis and arkOS software, meaning the software is no longer in an exclusively-for-testing Alpha phase. This still however means that you will need to take precautions when using Genesis, and using it for sensitive or non-expendable data is not recommended. There is still a high likelihood that you will come across bugs, and we have yet to complete a lot of critical features (such as data backup and redundancy solutions). Still we think you will notice the significant improvements over past versions!

### Upgrading to Genesis 0.6

New installs of arkOS can simply install via the instructions on the [Downloads page](https://arkos.io/download) and do not need to follow the steps below.

If you are running **Genesis 0.5.x** or earlier, you will need to download and execute an upgrade script before you can begin using the software. This must be done via the command line, either via a TV connected to your device, or login via SSH:

{% highlight bash %}
systemctl stop genesis
pacman -Sy genesis
wget https://raw.githubusercontent.com/cznweb/genesis/master/tools/migrate06.py
python2 migrate06.py
systemctl start genesis
{% endhighlight %}

If you are running a testing version of **Genesis 0.6**, you can easily update to the full release with: `pacman -Sy genesis` and accept the reinstall.
