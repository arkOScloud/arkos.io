---
layout: post
title:  "arkOS on Slashdot: The Top Five Questions"
date:   2013-10-04 12:00:00
author: "Jacob Cook"
summary: "Resolving some ongoing questions about the project."
---
This morning [an interview I did](http://www.techworld.com.au/article/528273/arkos_building_anti-cloud_raspberry_pi_/) with Rohan Pearce of Techworld Australia was posted on Slashdot, which has generated a significant amount of interest in arkOS. Seeing the reception that the project is getting in diverse media is very exciting and encouraging! Thank you all for the support, it is definitely helpful when trying to work through a project of this magnitude.

Along with the compliments and show of support, there are some parts of the project that have been met with (well-deserved) skepticism. Trying to accurately explain a rather complex system in a set of soundbytes isn’t easy. In the interest of being as clear as possible, I will try to sum up these “frequently asked questions” and then respond with how arkOS intends to deal with these issues. Hopefully this will help people resolve some ongoing questions they have about the project.


### 1. “I imagine <insert-ISP-here> will have something to say about this…”

Many internet service providers (ISPs) do not allow their customers to host server software. Some explicitly ban hosting in their Terms of Service (ToS), others simply make it difficult to host but leave the possibility open. Some even will actively block commonly-used ports for hosting services (such as port 25 for email transmission, port 80 for website hosting, etc). Many won’t allow you to purchase static IP addresses, restricting such things to business accounts only. It sucks to have to use one of these providers, but many people simply don’t have a choice; noncompetitive ISP monopolies are far from uncommon in most countries.

I would like to make clear: **arkOS does not explicitly encourage you to break the Terms of Service of your internet service provider.** Whatever decision each individual user chooses to make is wholly their responsibility. And, of course, this will be stressed to anyone before they do something that may be against the terms they have agreed to.

However, arkOS does intend to provide services that make self-hosting software easier for people on home connections, such as integrated dynamic DNS service, port proxies, etc. These will be provided to assist people that choose to use them, regardless of the obstacles each individual faces.


### 2. “It’s only a matter of time before someone hacks this / finds a vulnerability / etc., then they will all be compromised.”

There is always the risk of any piece of software having a security vulnerability. I welcome people to try to break the security of arkOS devices, then to let me know if they find any problems with it. The end result is that the software will ultimately be stronger and more agile.

However this comment may represent a misunderstanding of how arkOS really works. No management services used by arkOS are designed to operate in a peer-to-peer or meshed way. That’s not to say that you can’t host P2P applications with arkOS – this simply means that arkOS does not create a sort of “parallel internet” with inter-communicating devices that can easily be manipulated. The likelihood of creating a “botnet” by exploiting a vulnerability in arkOS is extremely remote. There may be the opportunity to explore direct inter-device communication in the future, but like I said above: literally every piece of software in development faces the same problem. arkOS is no different, and that is not a reason to assert that the project is any less capable.


### 3. “Running &gt;insert-service-here&lt; is extremely complicated and high-maintenance, so how do you expect that to be possible for non-Linux people?”

My response to this generally goes like this: There is no technical reason why running &gt;insert-service-here&lt; has to be complicated. The fact that we have email servers that have onerous spam filters, complex configurations and management, sometimes don’t play well with other processes or other types of servers, etc. is not inherent to the possibility of hosting email. This is simply because they have developed in an uneven way, over a long period of time, and with many thousands of different developers looking at the code and patching it with new features every so often. Email, as venerable and useful as any tool out there, isn’t immune to modification and improvement.

arkOS intends to do things right. Email will be set up properly the first time. If it isn’t, the user will be notified and they will have the opportunity to reconfigure the system if need be. If a vulnerability is found, users can be updated immediately and new patches can be pushed. The system will monitor specific indicators and alert the user if problems are detected, which can prevent the grand majority of problems that an email server runs into.

Like I said in the article: there is no technical reason why self-hosting has to be complex and a pain in the rear. It’s just developed that way. Just as well, there is no good reason why we can’t build accessible tools that demystifies the process. We shouldn’t be afraid of trying to make it better.


### 4. “Running <insert-service-here> on a Raspberry Pi is crazy: performance will be terrible!”

This is a very important point: **arkOS is NOT married to the Raspberry Pi.** Development is focusing on the Raspberry Pi from the start to give a serious focus on performance, usability and compatibility with all platforms in the future. It is just the starting point for a much broader array of platforms and architectures.

People will be able to run arkOS on their virtual private server (VPS), their dusty old i386 in the attic, a shiny new BeagleBoard Black, or any other piece of hardware. So if a service seems like it might be too much for a Raspberry Pi to handle: watch, you may be surprised. But in case you are right, you always will have the opportunity to run it on another platform that is more capable. Just as soon as support is extended to those platforms, that is.


### 5. “This will never work for hosting data because it will kill your bandwidth / it can’t work for more than one person / etc.”

arkOS on the Raspberry Pi is only intended for light to medium personal use. If your website gets many thousands of hits per day, then you probably should be hosting it on a more robust piece of hardware. That being said, if you have a personal blog that you share with members of your family or your close-knit tech niche, then performance on the RPi will be more than enough. The same goes for hosting your own calendar and contacts server, to keep it in sync with all of your other devices. Of course you wouldn’t host a calendar server for a workgroup of 1,000 employees on a single RPi. In using the RPi, I’m expecting people to use their judgment. Also, see #4 above. You can use arkOS for much more once support is extended to other platforms.

Most high-speed internet connections can deal with hosting personal services without breaking a sweat. If you are using your connection to download dozens of movies and video games per month, and you have a data cap, then yes, you should be a bit more prudent in how you use your data, and you’ll have to keep a close eye on it. But this won’t be a problem for the vast majority of people.

— 

I hope this was able to answer some of your questions. As always feel free to [send a message](/contact) or to tweet with #arkOS to have more say.
