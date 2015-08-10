---
layout: post
title:  "arkOS 0.7 'Noah' Released"
date:   2015-08-09 21:00:00
author: "Jacob Cook"
summary: "About time!"
---

Hello everyone,

Without further ado, the first "stable" images for the 0.7 rewrite, codenamed "Noah", have now been posted on the [Downloads page](https://arkos.io/download). The first supported devices are the **Raspberry Pi**, the **Raspberry Pi 2**, **Cubieboard2** and **Cubietruck**. 

Since it seems the way to make the most progress these days is to work sequentially, some elements remain to be filled in over the next few weeks. First, only regular images are available at this time -- split boot images will come next weekend or the following one, along with images for the **BeagleBone Black** and the **ODROID-X Series**. Second, an upgrade script to migrate 0.6 users to 0.7 should be provided by next weekend. In the meantime, 0.6 users may not be able to reach system and app repo servers as the infrastructure is switched over to serve 0.7 users. Please be patient as the kinks are worked out, and make sure to update to 0.7 as soon as possible! Finally, people familiar with 0.6 will notice that 0.7 is not a perfect overlay -- by this I mean that 0.7 has more features than 0.6 already, but also is missing some. Either these missing features have been deprecated and will not be used going forward, or in many cases the features just haven't been perfected yet and will make it into a future release (like 0.7.1).

Here is the schedule for the project for the next few weeks:

 - Finish migration script from 0.6 to 0.7
 - Add split boot/data images and support for BeagleBone Black and ODROID-X Series
 - Mailserver App release
 - 0.7.1 release, with arkOS Connect integration
 - Rewrite of arkOS Assistant (Installer) for Windows, Mac OS X and Linux platforms

Please pop into the forums and comment if you have any questions or problems with the images to report. Thank you!
