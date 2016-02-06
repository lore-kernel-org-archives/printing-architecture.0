Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=eXfHrecqcAaVFxG/c/y7nMuowHdXmn2EfMXWUN0V+s0=;
	b=dY9Yn1Xu7nm89pGgVw2WJZ4mSbQaeEiWtW/pnLLQvYa0BGkLdo+wREpTIkCYe+Dif9
	5mb3/nFPJjsQC+a16Knhkh0fEbtwgHM98MF94TGQIF07Uzeql91HWxeXEXNKTEDUKiVD
	ciCGpvlaKuxM13YCP2M6aaKxZi4ES08co0ncfHRWa+oRb0Z4xlmFUH+KG5dqMiNUopbq
	Y5WNnkfohwJvZIH95iY1vUlS9Ql9E3IjuZ3MWnJz9NFlXGZv8GLs6uquG5OZEZ/c6X6f
	nSZGJB8TwSwihViY9o1fMtfR9Nmllf19xx2PWoDQIZXqJteZchaEbNSd3S5a1T+Bv5Ti
	tEdA==
References: <56B2760D.3020800@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <56B54CFF.2070503@gmail.com>
Date: Fri, 5 Feb 2016 23:31:43 -0200
MIME-Version: 1.0
In-Reply-To: <56B2760D.3020800@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Debian dropping the Linux Standard Base
 - Better way to supply distribution-independent printer driver packages?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

here are some first thoughts about how to distribute printer drivers in 
distribution-indpendent package without making use of the LSB:

First thought is to link the executables of the package statically to 
not depend on the presence and version of locally available libraries.

But static linking causes several problems, especially see

https://www.akkadia.org/drepper/no_static_linking.html

and

http://unix.stackexchange.com/questions/227910/will-my-linux-binary-work-on-all-distros

One problem is that libc uses dlopen() to link libraries dynamically and 
if you link in libc statically you need exactly the same libc on your 
computer so that the dlopen() works.

A possibility is to replace libc by specialized alternative, musl, when 
building the executables:

http://www.musl-libc.org/

musl only needs to be installed on the machine where the packages get 
built and there not even as the system's libc. So for statically linked 
executables this looks like a good possibility.

Another possibility is to link only some libs (libc, X11, openGL) 
dynamically and the rest statically:

http://blog.sagargv.com/2014/09/on-building-portable-linux-binaries.html

In general, we need to find the least complicated way which can be 
easily adopted by most printer manufacturers.

Another way to get universally working printers/drivers is keeping the 
level of complexity of the drivers as low as possible by dosigning 
printers (and drivers) the right way:


Level 0:

driverless printing, the standard Linux distributions bring already all 
software needed to print on the printer and the printer can get queried 
for all needed capability info, usually via Bonjour and/or IPP. A good 
example are IPP Everywhere printers.

Level 1:

Only data files, like PPDs are needed, all executable files are already 
contained in the standard Linux distributions. This can be done with 
PostScript, PCL, PDF, PWG Raster, ... printers.

Level 2:

Only executables are filters, meaning that the printer works with the 
backends supplied by CUPS and cups-filters and only needs a known PDL, 
usually PWG or CUPS Raster being converted to the printer-specific, 
proprietary language.

Level 3:

Backends are needed to make the printer work. Backends are more complex 
than filters as they have to implement a way of communication between 
the computer and a peripheral, via USB, network, ... so more resources 
of system libraries are needed which could make static linking or 
universally working binaries more difficult.

Extras:

Scanner driver (SANE):

For multi-function devices often a scanner driver is supplied. Scanner 
drivers are dynamic libraries which are linked by scanning clients, I do 
not know whether such a library by itself can get linked statically.

Scripting languages:

If a scripting language is used, it must be a standard one, usually 
Python, perhaps also Perl, and if libraries are needed they should be 
preferrably shipped with the package.

GUI:

Should be avoided whenever possible for a printer driver package because 
making this universally executable is even more complicated.


First step is a good printer design, ideally an IPP Everywhere printer. 
If the printer is already there and a Linux driver has to be designed, 
at first the level of complexity needs to be minimized. Especially if 
the printer follows a standard PDL (like PCL XL) or a standard 
communication protocol (like IPP-over-USB) but it does not work with the 
software of the Linux distributions, do not write your own, proprietary 
work-around filters and backends, but report bugs of feature requests on 
the existing software or better contribute patches.

Any thoughts and any additional hints to get distribution-independent 
printer driver packages without needing the LSB?

    Till

