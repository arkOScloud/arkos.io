---
layout: post
title:  "Reorganization"
date:   2017-01-16 19:00:00
author: "Jacob Cook"
summary: "Slimming down to make things easier."
---

First of all, I'd like to wish all arkOS fans a very happy New Year! Best wishes to you and your loved ones in 2017. I spent the holidays with my own family and took a little break from this project. I also spent the holiday thinking about what I can do to improve how my own personal projects are run. Here are some of the decisions I arrived at.

There have been certain issues that the project has encountered since 2015 that have prevented it from developing at the pace it should be developing at. These issues mostly revolve around the fact that arkOS is largely the result of the work of one developer, and this developer no longer works full-time on the project, but instead has other jobs and contracts and cannot commit as much time to the project as it deserves. The project has had a very wide scope and a large footprint for awhile. For example, we have our own Gitlab instance, our own Gitlab CI testing server, a worldwide network of servers for download mirrors, and many other goodies. This infrastructure was set up after the crowdfunding campaign and designed to handle a large amount of developer contributions at once in order to move the project forward quickly.

It's become clear that, not only has the project's large footprint been ultimately unnecessary, but it has also become a hindrance preventing things from moving forward as quickly as they could. It's also been very expensive for me to maintain &mdash; the amount of donations the project receives is far lower than the average monthly cost of all of this.

So in light of these elements, arkOS will be making the following changes to modernize and streamline its operations, and to hopefully jumpstart meaningful development.


## Github

The project will be moving from its current primary home on [Gitlab](https://git.coderouge.co) back to its [GitHub organization](https://github.com/arkOScloud). I spent a few hours this weekend moving repos back and making sure they were updated and ready for use.

Moving back to Github will provide additional exposure to developers and interested users, for more easily submitting issues and pull requests. (While the Gitlab instance was linked to Github OAuth, meaning you could use your Github account with the Gitlab instance, this was still a notable hindrance to people who could not find the repositories or were put off by the nominal effort required to get started there.) The project will also go back to using Github issues and milestones to organize project work. We may also experiment with other features like project kanbans. The move back to Github will also save the project money and server resources.

The Gitlab instance will be wound down and will no longer be used for arkOS projects as soon as we have set up a Jenkins instance (see below). If you have forks of any arkOS repos on the Gitlab instance, please re-fork them from Github accounts as soon as possible.


## Jenkins and Project Automation

In line with the above move back to Github, I plan to use [Jenkins](https://jenkins.io) for builds, testing and deployment instead of Gitlab CI.

We've started the slow process of improving our test coverage in arkOS and getting automated merge testing set up. This work will be continued and extended to include automatic production of builds. This way people can register to test development builds, an important prerequisite before we get to 1.0.

The icing on the cake will be an automated deployment system. Merges to master and version tags will generate new packages and update the software repositories, resulting in automatic deployment to users and reducing a significant time sink for project developers.


## Distro Independence

Up until now, it's been necessary to use just one Linux distribution with arkOS, and that is Arch Linux. Back when this project was founded, systemd was still a new thing and it wasn't entirely possible to create a cross-distro project with such deep roots into system management. Now that systemd is being extended to other platforms (notably Debian Jessie), it is possible to liberate arkOS from being an Arch-only project.

Making arkOS a distro-independent project will coincide with the end of the production of full disk images. Installing arkOS on embedded devices like the Raspberry Pi will require the installation of Raspbian or ALARM images, then the execution of a simple shell command to get things going, similar to the Arch Linux installation script available from the Downloads page. In the future, a visual installer will be made available, to run on the same device. A special PPA repository will be provided for arkOS packages on Debian-based systems.

It's difficult to overstate just how much time and effort it takes to independently cross compile and produce each image. That is why images often go so long without being updated. By fully decoupling arkOS from the individual Linux distributions, we will be able to significantly reduce our server footprint as well as the amount of time it takes to fully update users with new code. We will also go a long way towards appealing to users that want to choose their own operating environment but still wish to try arkOS.


## Development process

We are knee-deep in a long transition to a new way of developing arkOS. With the introduction of unit testing across the platform and automated deployment strategies (as mentioned above), the project will be less reliant on one person to drive the development process forward.

It is important that we continue to work on these points, as some have brought forward the complaint that the project's current structure leads to a "bottleneck effect", where a problem is introduced and can't be fixed in a timely manner because the authoritative source (me) cannot push fixes fast enough. Contrary to popular opinion, this occurs not because I am way too busy to review small changes, or because I am incapacitated and cannot do so. It happens because these small changes often introduce more problems than they solve, because they can not be adequately tested in the right environments. So I have to review each line of code in a very tedious manner, and that is what I am not able to do at every hour of the day. To address this, I will be implementing some changes in the development process for arkOS in addition to the important changes to coding and deployment mentioned above.

First, recognized contributors will have the ability to push to development branches of the software without having to make a pull request first. This will create automated builds through Jenkins that can be subsequently tested via unit testing and integration testing systems. Provided these tests pass, it will be much easier for project administrators like myself to merge in development and patching branches without having to review every line of code for errors, as has been the issue leading up to this point. These changes can also be rolled out to people running actual development versions of arkOS, allowing for more profound testing than can be performed using the automated infrastructure.

Second, when we have the development infrastructure in place, and a development contributor has proven they can be trusted to approve pull requests and make production releases at the patch and minor-release level, they will be given the rights to do so.

Additional changes will be reviewed and implemented as necessary, pursuant to consultation with the community.


## Skylark

[Skylark](https://skylark.cloud) was announced last November and, while it's still early days, we're really happy to see what's become of it so far. We led a successful preorder campaign and I'm happy to report that several users have signed up and are now using a modified and hosted version of arkOS as an independent, personal cloud. These users will provide us with insight to how both Skylark and arkOS can be improved, and what direction these projects should be heading in.

More importantly, Skylark will provide a direct lifeline to new features for arkOS. The mid- to long-term plan for Skylark is to be able to fund the work of additional developers to provide features that can be backported to arkOS. As an essentially paid version of arkOS, Skylark can act as other open-source companies do with "community editions" of their software.


## Conclusion

I'd be happy to hear any opinions from you on these points, or additional ways in which arkOS can become a more streamlined operation, attract more developer contributions, and in general become a more active and technologially advanced project for everyone to enjoy.

Thanks for your continued support and best wishes!
