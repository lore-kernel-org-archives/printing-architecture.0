Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=W2v1PuQXg/iBwsA4TG3RtSW1RtQOuZkMMGROFT2mtfU=;
	b=adbKik50yt0kLw+a+4aE0KbV0QOv/pqsjeJDiYuslFGVift2kJhouzkcRcju7SEKUh
	3WUjkmJDT1RBmuP+GCd36VH1KDrmOQx3Y8HvUwqN58nOluW7OMiCkvPYVp3bT3iUlNpA
	ds1+jYacsuh2PfjrvST0/IIKKDp1sHbNEwFA+jUAzXO3vJVevIKzBfHQkReoItE9Nye1
	SsvBgFkMz/ROwPbvOvm75uAA6fg2rwME+JGlOwXNKBaPJ73Aeq/PjOPYDNMjnAoYiMlo
	EmB4h9oIIMDjjsvbOGMgpHk47aDm2R9kDX1Lb+gtswoJJfLKSeHKAgNS6dZjoHgE/qvX
	KX+A==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <56B2760D.3020800@gmail.com>
Date: Wed, 3 Feb 2016 19:50:05 -0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Debian dropping the Linux Standard Base -
 Better way to supply distribution-independent printer driver packages?
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

after looking through participants and achievements of the first 
OpenPrinting Summit in spring 2006 in Atlanta I got in contact with Mats 
Wichmann about the LSB and ended up googling and found this one:

https://lwn.net/Articles/658809/

An article at LWN about Debian having decided to quit the LSB.

The LSB was created to allow software vendors to make 
distribution-independent binary software packages, based on the 
resources which the distributions have in common. It got a huge, awkward 
collection of libraries, functions, commands, and interfaces about which 
the upstream developers of the LSB have found out that the major Linux 
distributions for corporate users provide them and there are actually 
very few software vendors actually making use of it, leading to the fact 
that no one actually wants to invest time in the LSB.

Several years ago I was seeing an opportunity in the LSB to make 
distribution-independent binary driver packages and I wrote up design 
guidelines and packaging instructions for manufacturers, created a 
mechanism for looking up such packages by querying the printer's 
IEEE-1284 device ID on the OpenPrinting database and automatically 
downloading and installing the packages with system-config-printer. All 
this I also presented on several OpenPrinting Summits and Epson actually 
put up such packages, but no one else. OpenPrinting (and Epson) got one 
of the few users of the LSB that way.

The dropping of the LSB by Debian was leading to the auto-download of 
LSB-based packages to break in Ubuntu (which syncs the LSB packages of 
Debian):

https://bugs.launchpad.net/ubuntu/+source/lsb/+bug/1536353

IPP Everywhere will soon be formally approved by the PWG (Printing 
Working Group) and so we will have an open standard for driver-less 
printing, but this does not necessarily mean that in a few months all 
printers sold are IPP-Everywhere printers and there are still lots of 
legacy printers.

So printer drivers are still needed and therefore we need a way to 
package and distribute them, ideally so that they work correctly on all 
currently available Linux distributions. It would be great if one could 
do so without needing the awkward ballast of the LSB. What about static 
or semi-static linking? Restricting interfaces as much as possible, only 
allowing CUPS-Raster-based rasterto... filters for raster-based 
printing, allowing backends for awkward communication protocols, 
allowing PostScript, PCL, PDF only with the filters of the cups-filters 
package, ... Working without the LSB could perhaps also simplify things 
and make more manufacturers doing distribution-independent packages.

Should we discuss possibilities here on the list? Or on the Summit?

    Till






