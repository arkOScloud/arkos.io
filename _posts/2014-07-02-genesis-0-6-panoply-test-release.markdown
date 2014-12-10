---
layout: post
title:  "Genesis 0.6 \"Panoply\" Test Release"
date:   2014-07-02 12:00:00
author: "Jacob Cook"
summary: "We are pleased to announce the availability of Genesis 0.6 \"Panoply\" for arkOS testers! This latest release of Genesis brings us into the Beta phase of the project."
---

We are pleased to announce the availability of Genesis 0.6 "Panoply" for arkOS testers! This latest release of Genesis brings us into the Beta phase of the project. You will notice a completely new design, a new focus on stability and performance, as well as a ton of exciting new features.

The testing period will last from one to two weeks, giving people a chance to put Panoply through its paces. Once we’ve worked through the bugs uncovered during this period, we will then push Panoply to the package repositories and mark it as officially released.

### How to test Genesis 0.6 "Panoply"

It should be noted that Panoply downloads are for testing only! You shouldn’t use Panoply yet if you have sensitive data or anything that you can’t tolerate being broken irreparably during the migration process. We’ve done our best to make the process smooth but can’t plan for every eventuality yet.

If you don’t want to test Panoply or can't abide by the above statement, please wait a week or two until the official Panoply release has been pushed to the repos. Whether you are installing arkOS first from scratch, or upgrading from an existing Genesis version (0.5.x), SSH into your device first thing and run the following commands. Make sure you run the migrate script as downloaded, and pay attention to any possible errors:

{% highlight bash %}
systemctl stop genesis
wget http://pkg.arkos.io/resources/genesis-0.6.0-1-any.pkg.tar.xz
pacman -Sy
pacman -U genesis-0.6.0-1-any.pkg.tar.xz
wget https://raw.githubusercontent.com/cznweb/genesis/master/tools/migrate06.py
python2 migrate06.py
systemctl start genesis
{% endhighlight %}

**Users of the alpha Mailserver plugin, please note:** you will need to unassign your SSL certificate, delete your vmail database, click the Reinitialize button, reassign your SSL certificate, then readd your domains/users/aliases, *in that order*. The migration plugin will not do this for you. If you use the same usernames and domains, you shouldn't lose any mail stored on the device.
