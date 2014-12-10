---
layout: post
title:  "Differences between arkOS and FreedomBox"
date:   2013-04-01 12:00:00
author: "Jacob Cook"
summary: "A clear comparison as I understand the two projects."
---
Over the past few days I have received many questions from interested users asking exactly how arkOS compares to FreedomBox. Here I will try to lay out a clear comparison as I understand the two projects.

For those that are not familiar with [the FreedomBox project](https://www.freedomboxfoundation.org/), it is a foundation started by Eben Moglen and James Vasile in 2011. Its goal is to work with plug computers (small specialty boards like the Raspberry Pi) to create a revolutionary new way of communicating, serving content and routing traffic on the Internet. From [their Goals page](https://www.freedomboxfoundation.org/goals/index.en.html), let’s take a look at the specifics of what they hope to achieve:

 * Safe social networking, in which, without losing touch with any of your friends, you replace Facebook, Flickr, Twitter and other centralized services with privacy-respecting federated services;
 * Secure backup: Your data automatically stored in encrypted format on the Freedom Boxes of your friends or associates, thus protecting your personal data against seizure or loss;
 * Network neutrality protection: If your ISP starts limiting or interfering with your access to services in the Net, your Freedom Box can communicate with your friends to detect and route traffic around the limitations. Network censorship is automatically routed around, for your friends in societies with oppressive national firewalls, or for you;
 * Safe anonymous publication: Friends or associates outside zones of network censorship can automatically forward information from people within them, enabling safe, anonymous publication;
 * Home network security, with real protection against intrusion and the security threats aimed at Microsoft Windows or other risky computers your network;
 * Encrypted email, with seamless encryption and decryption;
 * Private voice communications: Freedom Box users can make voice-over-Internet phone calls to one another or to any phone. Calls between Freedom Box users will be encrypted securely.

These goals do offer some possibility of self-hosting content, but they mostly deal with issues of creating mesh networks and overcoming censorship via special routing techniques. arkOS simply allows you to self-host your content in a clear and straightforward way, while FreedomBox changes how the content is made available to the Internet, and how you use the Internet itself.

 1. **arkOS seeks to follow the Unix philosophy of “Do one thing well.”** While FreedomBox’s goals are laudable and I undoubtedly wish them every bit of success, it is my opinion that they are trying to do too much. arkOS is not trying to revolutionize how human beings communicate, nor is it seeking to reinvent the wheel. I am realistic enough to know that one must start small in order to realize these important goals. For this reason, arkOS seeks to do one thing well: to allow people to self-host their content in an easy and modular way. This content will be served by already-existing server systems (like nginx, Postfix/Dovecot, WordPress, tentd, and more) and will be easily managed via a graphical web-based Node Manager. Anything beyond that can be added in at a later stage with full input from the community.
 2. **arkOS is built specifically for the Raspberry Pi, and is geared for lightweight operation.** FreedomBox’s tools will be built to use the Debian operating system, allowing them to be used on any platform. arkOS is focused on the Raspberry Pi, with support for other similar platforms like the oLinuxino to be added at a later date. The uniformity that the Raspberry Pi’s hardware and software standards gives us is a big strength, as it allows us to significantly reduce the odd tech problems that have traditionally plagued novice Linux users.
 3. **arkOS is built with the end user’s experience in mind.** Because we are working to “do one thing well,” this will allow us to create a user experience that simply works. While you will be able to use arkOS and customize it to your heart’s content if you are an avid Linux expert with plenty of free time, arkOS is designed to give novice users with little to no Linux experience a command-line free way to host their own content and to “be their own cloud.”

**In conclusion:** arkOS will not focus on rerouting your Internet traffic. It will not focus on caching its data on other arkOS nodes. It will not be an attempt to ‘reinvent the wheel’ from the get-go. arkOS will simply focus on effortlessly self-hosting your data, and to ween users off of cloud-based services. More features might be added at a later date, including potentially some of the FreedomBox project’s initiatives, but this will only happen after our core goals are met.
