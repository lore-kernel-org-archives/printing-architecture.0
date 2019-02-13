Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=cPviPpUyHS+R3ZVxovq4Q6c3XW/SKNtmRxGttqSAygY=;
	b=jynVxcU+XXm93LQM8WYyYEe1o5D7BTjq7Ies543mr93SPGbSxcQhhXVWfzldVMq+Pt
	FjOvC95I2ESqzhowTCV4tF++wCI8wG13y7huDjtat3J083ZoaRks8I3DHoM9D2vJPRMF
	vXeHRLXseFDjj0MAcmTnnWhpUTN1AWIfJdGjByWQnNZBwBujHOJn3Z01sKHLUsvpe8nh
	S8+5iYyYISN2SpEPX9ajNrgtQRVrPG0+HqntmSYwm5nTAm/j+cRsc75zztdDhxk9KgIQ
	5tDGVOu6Cy6JKEO50RnRqof8//HKNOCGJ+fpuPl0cSrIsZys+svJG56D9R1XG/V7W0AY
	poKw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
Date: Wed, 13 Feb 2019 19:14:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

here is the newest development of the last month.

    Till

----------


Google Summer of Code 2019
--------------------------

The org application of the Linux Foundation is submitted and on Feb 26 
we will know whether we got accepted by Google.

Avahi
-----

Also Red Hat is bumping into the fact that Avahi is unmaintained 
upstream, see discussion as answer to our minutes from last month:

https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/thread.html
https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/003653.html
https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/003654.html
https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/003655.html
https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/003656.html
https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/003657.html
https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/003659.html

Michael Sweet writes:

----------
A bug was filed against CUPS last month requesting that we start 
supporting systemd's new mDNS resolver (which apparently is replacing 
the use of Avahi in systemd?!?):

     https://github.com/apple/cups/issues/5452

I pushed back since there does not appear to be a way to browse DNS-SD 
SRV records and there is no interface for registering services outside 
of systemd configuration files.  But that might be a future alternative 
to Avahi should they extend the current interfaces to support it...
----------

Zdenek Dohnal from Red Hat writes:

----------
I talked about both issues with Michal Sekletar, which is systemd and
avahi maintainer for RHEL and the situation is following:

1) systemd-resolved as successor of nss-mdns module:

     As far as Michal knows, systemd-resolved is not currently meant as
successor of nss-mdns module + avahi since it does not support service
browsing as Mike found out. If it will in the future, he does not know
right now (probably how avahi situation will turn up...).

2) Avahi upstream maintenance

    Michal and several other people tried to convince Trent to pass
ownership to someone else (Michal knew about two people, who would like
to take Avahi project at that time) about two years ago, because Trent
seemed to do not have time for the project. But Trent did not want to
give away the upstream project. Currently Michal fixes Avahi issues
downstream in Fedora/RHEL.
----------

My suggestion:

----------
As Debian does not accept carrying patches distro only with upstream not
taking them and also as it is very awkward if all distros have to carry
the same patch due to upstream not caring, and naturally also an
integral part of the OS needs solid upstream maintainership, this is an
unbearable situation.

It would be great if someone could convince Trent to accept a
co-maintainer who also can directly commit to and also issue releases of
Avahi. If Trent refuses this, I see as the only solution the forking of
the project. This is the usual way how one handles these situations.

The current official Avahi repo is

https://github.com/lathiat/avahi/

so it is under the personal domain of Trent and not a project domain as
for example

https://github.com/openprinting/

where cups-filters, ippusbxd and others are.

So I checked

https://github.com/avahi/

and there is something which has nothing to do with Avahi. We should ask
the owner whether he could move his GitHub activity to another name to
free avahi for us and then we put our fork of Avahi there.

If this does not work out I suggest to host the Avahi fork on GitLab.

Or should we fork Avahi under a new name then?
----------

According to Zdenek, Michal tried this with the co-maintainership already.

Seems that Trent is refusing any cooperation or completely ignoring the 
project.

My suggestion is to fork the project and use one of the locations 
suggested by me, but who should be the upstream maintainer then.


CUPS
----

No new releases.

When working on this cups-filters bug report

https://github.com/OpenPrinting/cups-filters/issues/22

I discovered that CUPS uses 4 different variants of the 
get-printer-attributes IPP request at 4 places, so for one and the same 
printer 4 different PPD files can get generated, depending on the method 
how one creates a print queue for the driverless IPP printer. I have 
reported this to CUPS as a bug and Mike has fixed it on both 2.2.x and 
2.3.x.

See

https://github.com/apple/cups/issues/5484


cups-filters
------------

Currently released is 1.22.0.

 From this release on the pdftopdf filter flattens interactive PDF forms 
and annotations internally, using QPDF, instead of calling external 
utilities. This especially eliminates slowing factors as additional 
piping of the data and unneeded use of PDF interpreters. Using external 
utilities for flattening is still possible in case of problems. In 
addition, a crash bug in cups-browsed got fixed and compatibility of the 
filters with Poppler 0.72 assured.

The form-flattening with QPDF was already planned 2 years ago as GSoC 
project, but the student did not complete his work. Jay Berkenbilt, 
upstream maintainer of QPDF, completed the work (the code is practically 
completely in QPDF), released a new version of QPDF with this included, 
and told me what to call from pdftopdf during the new-year break. Note 
that Jay is doing all that voluntarily. Also Tobias Hoffmann, former 
GSoC student and mentor, helped on this.

The next release will (1.22.1) will still happen before Ubuntu's Feature 
Freeze (Feb 21) and mainly switch the get-printer-attributes IPP calls 
to the way how CUPS does it now.

CHANGES IN V1.22.1

	- cups-browsed, driverless: When polling the printer's
           capabilities via get-printer-attributes IPP request for
           driverless printing, use the attributes "all" and
           "media-col-database". Without "all" some printers do not
           report "urf-supported" and without "media-col-database" not
           all paper size and marging info gets reported (Issue #22,
           Pull request #86, CUPS issue #5484).
	- braille: Document how to rework output before
	  embossing. Thanks to Samuel Thibault for this patch (Pull
	  request #90).

CHANGES IN V1.22.0

	- pdftopdf: Use QPDF for flattening interactive PDF forms
	  (Issues #2, #23, #36, Pull request #88).
	- pdftopdf: Fixed bug of closing temporary file prematurely
	  when external PDF form flattening utilities fail (Thanks to
	  Tobias Hoffmann for finding this, see pull request #88).
	- pdftoopvp: More fixes for building with Poppler 0.72
	  (Pull request #83, Issue #75).
	- pdftoraster, pdftoijs, pdftoopvp: Removed support for
	  Poppler 0.18 (Pull request #83).
	- cups-browsed: Fixed crash in applying the BrowseFilter
	  cups-browsed.conf directives (Debian bug #916765).


ippusbxd
--------

No further news.
