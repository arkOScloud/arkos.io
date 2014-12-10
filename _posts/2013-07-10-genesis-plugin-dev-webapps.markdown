---
layout: post
title:  "Genesis Plugin Dev: Webapps"
date:   2013-07-10 12:00:00
author: "Jacob Cook"
summary: "A brief introduction to developing a new webapp plugin in Genesis."
---
**Note** that this post describes a Beta feature for Genesis, and as such is subject to change over the coming weeks. Once it is hammered down, full documentation will be provided. Feel free to submit comment on this process!

As a platform, arkOS can be made to work with whatever type of application or server you decide to throw at it. With some time and some skill in Python, you can interface your application with the Plugins API and manage its settings through the Genesis framework.

Here I will explain the brunt of the work required for a new webapp plugin in Genesis. But first, if you aren’t familiar with how Genesis plugins work, here is a brief introduction.

### What are Genesis Plugins?

Genesis is a modular framework for interacting with plugins, which are written in Python. These individual plugins do the work of configuring applications based on user input. There is a Plugins API with classes and functions that these plugins can reference, making the creation of complex yet streamlined visual interfaces very simple and functional.


### What is a ‘webapp’ then?

Webapps are any application that you use that is web-based (i.e. must be served over a webserver like Nginx), and that handles the configuration of most of its settings itself. A good example of this is WordPress. WordPress is a powerful and capable content management system (CMS) used for administering blogs and websites. WordPress has its own interfaces for changing settings, installing WordPress plugins, themes, and so on. We do not want to replicate that, so all Genesis needs to do is to install the app, configure an address for it, allow the user to visit this address, then the webapp will handle the rest of the job. At a later date, the user can change the address through Genesis, or delete the app entirely.


### Writing a Webapp Plugin

Writing a webapp plugin is done in Python. I will walk you through the basic steps of webapp plugin development. This post won’t cover everything, but for that you can check the Plugins API documentation here on the website. A section for Webapps API will be complete in the coming days.

To begin, you will want to define a class and have it registered like so:

{% highlight python %}
class WordPress(Plugin):
	implements(apis.webapps.IWebapp)
	name = 'WordPress'
	dpath = 'https://wordpress.org/latest.tar.gz'
	icon = 'gen-earth'
	php = True
	nomulti = True
{% endhighlight %}

We start by declaring a few variables that Genesis must receive in order to properly process the plugin. The name, the path to download the plugin, the icon class (see the documentation for iconfonts, coming soon), if the application uses PHP or not, and if the app should only have one instance installed at a time. This latest option is useful for webapps like ownCloud, which already have their own multiuser system.

Next up, we prepare a string with any special options that should be written to the Nginx serverblock.

{% highlight python %}
addtoblock = (
	'	location = /favicon.ico {\n'
	'		log_not_found off;\n'
	'		access_log off;\n'
	'	}\n'
)
{% endhighlight %}

Note that Genesis already does the work of adding the port, servername, root path, and index file to the serverblock. You just need to provide additional things that might be helpful or unique to your app.

Now the real fun begins. There are three functions that every Genesis webapp needs: an installation function, a removal function, and an information store. We will start with the install function, which is run immediately after the package is downloaded and extracted. (Genesis already takes care of downloading and extracting the package, passing the `path` variable to your install function.)

I will show you some of the options I used for the WordPress webapp plugin’s install function.

{% highlight python %}
dbase = apis.databases(self.app).get_interface('MariaDB')
{% endhighlight %}

Genesis has a simple Database API that you can use to quickly create databases and users, and register them with your app. Right now, only MariaDB and SQLite3 are supported, with more coming in future versions. Use this function to get the class of your desired database plugin. Here we’ve passed it MariaDB because we want the MariaDB/MySQL backend.

Once we have this class, we simply create a database…
{% highlight python %}
dbase.add(dbname)
{% endhighlight %}
… create a user to go with it…
{% highlight python %}
dbase.usermod(dbname, 'add', passwd)
{% endhighlight %}
… then grant permissions on our new database to our new user.
{% highlight python %}
dbase.chperm(dbname, dbname, 'grant')
{% endhighlight %}

And that’s it! We now have a MariaDB database and user for our WordPress app. Now we have to write WordPress’ standard configuration file with this information
{% highlight python %}
f = open(os.path.join(path, 'wp-config.php'), 'w')
f.write('<?php\n'
		'define(\'DB_NAME\', \''+dbname+'\');\n'
		'define(\'DB_USER\', \''+dbname+'\');\n'
		...
{% endhighlight %}

You might ask yourself, what if I have extra options I want to pass to the user at installation time? Genesis takes care of this for you too. By default, the install takes the internal Site Name, the desired web address for the app to respond on, and the desired port. You can add any additional options you wish by including a special XML form with your plugin (see the User Interface and Plugin Structure documentation). These options will automatically be displayed to the user. All options on install are passed to the installation function, so you can parse those and take action as necessary.

Once we are done setting the new site up, the work is done! We will later write a removal function, which is basically just a few calls to the Database class to remove what we created earlier. (Remember that Genesis automatically removes the app directories and serverblock, doing the work for us!) Lastly, there’s the information function, which returns a dict with info to be displayed in the “Add Website” screen seen below.

{% highlight python %}
def get_info(self):
	return {
		'name': 'WordPress',
		'short': 'Open-source CMS and blogging platform',
		'long': ('WordPress started as just a blogging system, '
				'but has evolved to be used as full content management system '
				'and so much more through the thousands of plugins, widgets, '
				'and themes, WordPress is limited only by your imagination. '
				'(And tech chops.)'),
		'site': 'http://wordpress.org',
		'logo': True
	}
{% endhighlight %}

At that, we can install or remove our webapp on any arkOS system! If you’d like to learn more about building a webapp plugin for Genesis, you can take a look at the source code for the WordPress plugin as an example here. Full documentation will be available shortly.

Get ready to try out these features soon! Genesis 0.3 will be ready by July 15th.
