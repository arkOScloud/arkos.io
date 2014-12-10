---
layout: post
title:  "Genesis v0.4 Released"
date:   2013-10-06 12:00:00
author: "Jacob Cook"
summary: "This release marks the most extensive and important update to date, with two major new frameworks, dozens of bugfixes large and small, and some critical improvements to the core system."
---
Today is the day that Genesis v0.4 is finally ready to be released. This release marks the most extensive and important update to date, with two major new frameworks, dozens of bugfixes large and small, and some critical improvements to the core system, numbering a total of 127 commits.

Most important in this release are the new **Security** and **Certificates** frameworks. The Security framework registers all of the applications you use with Genesis, and is set up to ONLY allow those services to communicate with the outside world. You can set limited access to each individual service: allow all networks to access this service (provided they have the correct username and password, if required, to do so), make the service only available on your home network, or deny all access. This is helpful for those who would like to, for example, host a private ownCloud instance that they will just use at home, but they would also like to host a Jekyll blog that is available to the entire Internet. With the Security framework, this is now possible (and easy!). The Security framework also allows you to enable fail2ban for certain services, which is an intrusion detection system. Enabling fail2ban on a service is a one-click operation. Improvements to this service are to come in the future: more fine-tuned access controls, more fail2ban jails (only SSH works with it for now), and more. Comments are very welcome so that this service can be made as useful as possible for everyone.

The second new framework is the Certificates framework. This finally allows SSL to be used with Genesis plugins, webapps, and with Genesis itself. Certificates can be generated then assigned to a compatible service, which will then set itself up to use SSL and the new certificate. This gets rid of the trouble of generating certificates, figuring how just to assign them to each different plugin, and the hassle of editing files line-by-line. In the future, you will also be able to upload certificates purchased from an outside source, and use those with the different running services on your arkOS server.

Genesis v0.4 also includes many important bugfixes and improvements not mentioned here. To see a more complete list, [see the changelog here](https://github.com/cznweb/genesis/releases/tag/0.4).

A new image file has also been released and uploaded to the servers, along with updates for all out-of-date packages in the repositories. This new image includes two new tools mentioned before, **Logrunner** and **Beacon**, which are enabled by default.


### Upgrade Notes

If you are already using arkOS, there are a few things you need to know if you plan on upgrading to Genesis v0.4 without writing a new disk image.

 1. Make sure you upgrade to Genesis v0.4 before you install any updates to individual plugins. You can do this by clicking “Upgrade Now” in the Settings pane. If the update does not show up there (there was a bug just fixed here in the next release), go to the Package Manager plugin and upgrade Genesis through that.
 2. Once Genesis v0.4 is installed, you can install plugin updates as normal.
 3. In order for the firewall to work properly, you need to do a few things. First, go to the Security plugin, click the Settings tab and click Reinitialize. Once this is done, the firewall that Genesis updates will be automatically enabled. Second, run the following command from the Terminal: `systemctl enable iptables`. This will make your firewall activate and save its settings on every boot.
 4. To use the new Logrunner and Beacon utilities, you will need to install them via the Package Manager plugin, then enable them with `systemctl enable logrunner` and `systemctl enable beacon`. Then restart your Raspberry Pi for the changes to take effect.
