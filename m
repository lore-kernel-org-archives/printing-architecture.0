Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=3cyiJDnb0TfDdo7xvskKpEN7DfdRPdEYRCS2B9yNFM0=;
	b=hemeQxl9osORAwcG6OW2FtKD/AATtazT5Vcad3RK5R2uEkMyTKsIvPHkp5J2EfnsSi
	Q/cnfrRfBs8CSCtYJ0N8QBIQecVUjW1I1IkuVsQiu0Of4DQLiUhNVv+jcLbUmUUT3O8d
	kKFRUTxku4bnwAmpSLXJ8uy7AgjwcA4WTRC2yEeMeUIFV/PHFxFkzEvjYA4LhDPtfsOp
	VmWyo8rrp5gHQcwAx/jWYbZxykjZRleXdnzJs7CVKjOLUw06AFPtPst+2sDm+GcEgTWD
	y56k8iwzZRn53gZ17RP1nV6njqR42SlW+tVb2XpRHjYZ3v6LqwtoBJbT3IXx5OLDM026
	n1cA==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <0cc9d7c6-1822-2909-b943-afac787750ed@gmail.com>
Date: Wed, 6 Mar 2019 15:55:48 +0100
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

The Linux Foundation

Avahi
-----

Trent Lloyd is one of the original authors of Avahi (the other is 
Lennart Poettering), which makes it more difficult to take the project 
away from him.

I was on a Canonical meeting for a week where the different engineering 
teams of Canonical meet. There I have met Trent in person and talked 
with him about the issue and he told it is no problem for him to merge 
the patch. I met him on the first day of the meeting and he promised to 
still apply the patch during the meeting week but he did not.

Now I have sent two weekly reminder e-mails and he did not even answer.

So on the OpenPrinting Summit we must see with the Google guys how they 
will do the ippusbxd and Printer Applications (local discovery) on 
Chrome OS and perhaps overtake this to Linux.


Kurt Pfeifle (kurt dot pfeifle at gmail dot com, the person who made me 
finding CUPS back in 2000 and getting what I am now) writes on the 
OpenPrinting mailing list:

----------
On Thu, Feb 14, 2019 at 1:17 AM Solomon Peachy <pizza@shaftnet.org> wrote:

     On Wed, Feb 13, 2019 at 10:26:29PM +0100, Till Kamppeter wrote:
     > By the way, who is the original author of Avahi?

     None other than Lennart Pottering.  :)

      - Solomon


This is not correct.

Avahi was initially created by Trend Lloyd in early 2004. He was 
certainly inspired by Apple's Bonjour, which unfortunately was not Open 
Source initially, so there as a strong motivation to implement a FOSS 
ZeroConf stack, since all of the relevant specs (mDNS + DNS-SD) were 
already there at IETF, and open.

Later that same year Lennart Poettering started a similar project to 
implement mDNS/DNS-SD functionality called "FlexMDNS".

Both projects united and merged their code bases sometime in 2005. 
Though I have no idea which of the two guys wrote more lines of code 
that still exists in today's code base, Poettering surely had a heavy 
impact on today's Avahi.

Apple released Bonjour as Open Source software under the Apache License 
only in 2006.

Avahi's name certainly was Trend's decision, and he started his 
implementation half a year before Poettering.

Poettering's last commit into Avahi's GitHub code was in Sept  2012. 
Trend's last commit was 10 days ago. The last time Trend merged a major 
pull request was in August 2018. See 
https://github.com/lathiat/avahi/commits?author=lathiat.

  According to https://github.com/lathiat Trend works for Canonical.
----------


CUPS
----

No new releases.


cups-filters
------------

Currently released is 1.22.1.

Bug fix release, mainly to let the get-printer-attributes IPP requests 
for auto-generating PPD files for driverless IPP printing use the same 
attributes as CUPS uses. There are also some small enhancements for 
Braille support.


CHANGES IN V1.22.2

	- cups-browsed: Do not do IPP request for printer-is-shared
           option for remote cups queues with CUPS 2.2.x and newer
           (Pull request #91).
	- cups-browsed: Fix crash bug when reading "Cluster"
	  directive from configuration file (Issue #94).
	- driverless: Updated man page as now also Mopria and
	  Wi-Fi Direct printers are supported. Mentioned also
	  ippusbxd.

CHANGES IN V1.22.1

	- braille: Use sort command with LC_ALL=C for reproducibility
	  of the genrated files, needed for distribution packaging.
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


ippusbxd
--------

No further news.
