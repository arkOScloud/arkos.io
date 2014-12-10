---
layout: post
title:  "Genesis 0.3 Released with WordPress and ownCloud Support"
date:   2013-07-16 12:00:00
author: "Jacob Cook"
summary: "A quick overview of the features this new version brings"
---
The newest version of Genesis is now available in the arkOS repositories. **This is a major release that adds new frameworks for installing popular web applications, including WordPress and ownCloud.** Here is a quick overview of the features this new version brings:

 * Genesis v0.3 features two new core interfaces: **Websites** and Databases. The Websites pane allows you to easily install popular web applications from the source, with minimal effort. Simply choose the site name, and the address you want it to respond to, and the application will intelligently install itself and maintain its own configuration. Your site is ready for viewing immediately after the installation is complete. The **Databases** pane allows users to administer databases from the visual interface: add/remove databases and users, execute commands, etc. If the website you are installing requires a database, don’t worry: it will automatically receive a proper database without any additional user interaction.
 * To launch these new interfaces, I’ve included plugins for two webapps: WordPress and ownCloud. Simply install the plugins via the Applications pane, then go to Websites to add new sites. Easy as that!
 * Two database types are supported at this time: MariaDB/MySQL and SQLite3. More databases can easily be added in the future.
 * From this release on, Genesis will automatically notify the user if a new Genesis update is available. They can easily be installed by going to Settings > Genesis Settings. New updates can also be checked for manually in this same space.
 * Many important bugfixes and stability improvements.

Developer note: Full documentation and a revised API/HOWTO section will be complete in the coming days. In many cases, new webapp and database types can be added in about 100 lines of code!

To update your existing arkOS node from an earlier version of Genesis, run the following from the command line:

{% highlight bash %}
systemctl stop genesis
pacman -Syy genesis
systemctl --system daemon-reload
systemctl start genesis
{% endhighlight %}

The good news is that this update gives the ability to check and install updates automatically, removing the need to update via the command line for future releases.

A new install image has also been released that includes Genesis 0.3 by default. Feel free to download and check it out for yourself!
