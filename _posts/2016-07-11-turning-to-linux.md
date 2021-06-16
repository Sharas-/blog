---
layout: post
title: "Turning to Linux - first steps"
tags: "learn linux"
---

As an ex Microsoft sellout, I welcome you, comrad, to the next level of your professional growth. Here's a path I took to make that transition.

1. Learn basic console commands.
----
Stop worying and learn to love the console. Can you imagine using Ms Windows as your IDE? No? Well [linux is your IDE][linux ide]. An interactive program running on your console called shell puts you in control. Not only of your OS, but through shell you get to harness most of that [treasure chest of tools][debian packages] one [apt-get] away from you.
For day-to-day use of linux on your desktop, there are quite a few choices of GUI interfaces, from [window managers] to full blown [desktop environments]. Servers, on the other hand, mostly run in [headless deploy] mode: meaning, console is the only interface you get. It is the natural interface for all nix systems, so you should get comfortable with it. Go through some basic [shell tutorial]s while practicing on a linux VM, live CD/USB or [Cygwin].

2. Read a comprehensive hands-on book.
----
Linux is about 25 years old now, and it is based on unix, which is over 50 years old. Nix systems have their [philosophy][nix philosophy] and tradition. So as you might suspect, tutorials will not cut it for you all the way. After you got a feeling of taking charge through console, I highly recommend you read [UNIX and Linux System Administration Handbook][nix book]. It covers basics and has enough technical depth, all conveyed with hands-on mindset (it is for admins after all). The whole book is a worthy read, but for a beginer, I'd say chapters one through eight plus chaper twelve are most valuable. Again, keep getting aquainted with the level of control and power linux gives you through practicing what you read on your linux VM.

3. Assemble your linux
----
Linux is all about choices, choices you din't get to make before. Welcome to the big girs club. There are two major parts to what we call Linux OS. First there's [kernel] - the part that manages your hardware. Then there's user land tools and apps sitting on top of kernel. The packaging of those two parts plus a way to install them is called a linux distribution (you get to call it "distro" after you install it). So here's a major first choice for you: chose your distro. Every distro has its inclination, utility and yes, even philosophy. I would categorize them into three groups:  

>Enthusiast/Academic: Purity, minimalism and DIY mindset. E.g.: [Slackware], [Arch Linux].  
>Server: Minimalism, stability and tooling for pros. E.g.: [Cent OS], [Debian], [Ubuntu Server].  
>Desktop: Novelty, ease of use and plenty of multimedia tooling. E.g.: [Ubuntu Desktop], [Debian]  

Course: https://www.edx.org/course/introduction-to-linux-linuxfoundationx-lfs101x-2

[linux ide]:http://blog.sanctum.geek.nz/series/unix-as-ide/
[apt-get]:http://en.wikipedia.org/wiki/Advanced_Packaging_Tool
[debian packages]:https://packages.debian.org/stable/
[window managers]:http://www.linux.org/threads/various-window-managers.6292/
[desktop environments]:http://www.techspot.com/guides/865-popular-linux-desktop-environments/
[Cygwin]:https://www.cygwin.com/
[shell tutorial]:dd
[nix philosophy]:http://www.linfo.org/unix_philosophy.html
[nix book]:http://www.amazon.com/Linux-System-Administration-Handbook-Edition/dp/0131480057
[kernel]:https://www.kernel.org/
