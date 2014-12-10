---
layout: post
title:  "Genesis v0.5 Released"
date:   2014-02-06 12:00:00
author: "Jacob Cook"
summary: "The end of a development cycle that has been in progress for four months and over 130 commits."
---
Genesis v0.5 has been released, marking the end of a development cycle that has been in progress for four months and over 130 commits. This is an important update that breaks backwards compatibility, setting the foundation for many larger features to come in the future. It contains important updates and bugfixes to the plugin infrastructure, as well as Databases, Certificates and Webapps frameworks. It also *finally* allows uploading/downloading of files and folders via the File Manager, and the use of externally-purchased SSL certificates!

There has been a bit of a shift in the development timeline – Genesis v0.5 is being released now so that many fundamentally new features will be able to be pushed to those who have ordered SD cards in the funding campaign without significant hassle. However you will notice that v0.5 lacks quite a few promised features, such as XMPP plugin, email support, etc. These features have been shifted to version v0.5.1, due in late February or early March. So the timeline for rolling these features out hasn’t changed much, only the number attached to the version in which they will be made available.

So keep an eye out for these new plugins in the near future – they will probably be pushed directly to the Genesis Plugin Repositories – and enjoy the new Genesis 0.5 today: faster, more stable and less buggy than any version prior :)

### Last Alpha Release!
One of the benefits for putting (nearly) all the breaking things in this release: this is the last major release of arkOS to be considered Alpha. Starting with Genesis v0.6 coming out this Spring, arkOS/Genesis will be in BETA phase. This means that the development timelines will be a bit longer, but overall more stable, with release candidates being prepared before new versions coming out. More info about what this means for you will come when v0.6 is ready.

### New Disk Image Released
In keeping with tradition, a new disk image has also been released that uses Genesis v0.5 by default. It also includes changes to the repo structure as highlighted in an earlier blog post. The downloads page and Installers have all been updated to use this image by default. If you are installing a new version of arkOS today to an SD card, you will not need to follow any manual upgrade procedures – you will have the newest version of everything, ready to go.

*Note that if you are using a mirror other than New York, you will need to wait until 0130 GMT on 06 Feb 2014 before the image will be properly updated for download!*

### Upgrading to Genesis v0.5
If you are planning to upgrade to Genesis v0.5 from an existing arkOS install running Genesis v0.4.1 or earlier, you should **follow the following procedure** to upgrade:

 1. First, make sure you have [followed the steps outlined in this prior blog post](https://arkos.io/2014/01/repo-changes-important-update-information/)
 2. SSH into your arkOS server, or connect a TV to your Raspberry Pi
 3. Stop Genesis with sudo systemctl stop genesis
 4. REMOVE old plugins with `sudo rm -r /var/lib/genesis/plugins/*`. This will NOT remove your plugin settings, nor will it disable/remove any websites you have. These will still be available after the upgrade.
 5. Upgrade Genesis with `sudo pacman -Sy genesis`
 6. Restart Genesis with `sudo systemctl --system daemon-reload` and `sudo systemctl start genesis`
 7. Open Genesis and reinstall all your plugins via the Applications window as normal.
