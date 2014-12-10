---
layout: post
title:  "arkOS Development Image released"
date:   2013-03-08 12:00:00
author: "Jacob Cook"
summary: "Hello World!"
---
The first image of the arkOS distribution has been uploaded to the server today. This will allow you to run the development version of arkOS that I am working on perfecting for release. It is a basic image and not much of it will need to be changed in future versions. However it is still “development” until I can confirm that most bugs are squashed, and until it is shown to work well with the installer that is in the works.

[Here is a direct link for download](http://pkg.ark-os.org/arkos-2013-03-08.zip). Follow the instructions below to get it onto your Raspberry Pi.


### Installing the Image

Download the ZIP file and extract the .IMG file from the container. Insert a fresh SD card into your computer’s SD card port.

On Linux, all you need to do is run `dd bs=1M if=/path/to/arkos-2013-03-08.img of=/dev/sdX`, replacing the “/dev/sdX” with the device identifier of your memory card. If you don’t know the device identifier, insert the memory card and run `fdisk -l`.

On Mac OS X, get the device identifier with `diskutil list`. From there, make sure it is unmounted with `diskutil unmountDisk /dev/sdX`, making sure to replace the “/dev/sdX” with the proper identifier. Then you can run the same command to actually copy the image, `dd bs=1M if=/path/to/arkos-2013-03-08.img of=/dev/sdX`, again making sure to use the right device identifier.

On Windows, it’s a bit more difficult, as we don’t have access to those neat commands that do the work for us. You will need to install and use [Win32DiskImager](https://launchpad.net/win32-image-writer). Once you have it, select the image file you previously extracted, select the drive letter of your memory card, then click Write.

### Getting Started

Log in with username root, password root. Provided that you booted up the Pi connected to your home router, it will automatically configure itself via DHCP. And from here, it’s just like using any other Arch Linux type distribution. Install packages with [pacman](https://www.archlinux.org/pacman/pacman.8.html), change system services with [systemctl](http://www.dsm.fordham.edu/cgi-bin/man-cgi.pl?topic=systemctl). It’s that easy!

### Contribute

If you see any bugs, please report them at the [GitHub issues page](https://github.com/cznweb/arkos/issues). Also file an issue there if there is a package you need that is not yet in the repositories. The first priority with this project is making sure the repositories are up-to-date, functional and indexed properly. From there, development will continue on the Installer and Node Manager. And, as always, send your thoughts to the Contact page above!
