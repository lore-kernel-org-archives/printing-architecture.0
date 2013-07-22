Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/mixed; boundary="Boundary_(ID_R4lvJF69Y6z9OsoepBVebg)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <D5AF317D-EA49-44F7-AF70-3874F18EF54E@apple.com>
Date: Mon, 22 Jul 2013 10:58:19 -0400
Message-id: <5C2D7440-2A36-42FC-818A-03DC5D44B0E1@apple.com>
References: <51E9B6B2.4080307@gmail.com>
	<D5AF317D-EA49-44F7-AF70-3874F18EF54E@apple.com>
Subject: Re: [Printing-architecture] Bug in ippfind
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_R4lvJF69Y6z9OsoepBVebg)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

And the fix:


--Boundary_(ID_R4lvJF69Y6z9OsoepBVebg)
Content-type: application/octet-stream; x-unix-mode=0644;
 name=rdar14508324.patch
Content-transfer-encoding: 7bit
Content-disposition: attachment; filename=rdar14508324.patch

Index: test/ippfind.c
===================================================================
--- test/ippfind.c	(revision 11163)
+++ test/ippfind.c	(working copy)
@@ -2618,7 +2618,7 @@
 
   service->is_resolved = 1;
   service->host        = strdup(hostTarget);
-  service->port        = ntohs(port);
+  service->port        = port;
 
  /*
   * Loop through the TXT key/value pairs and add them to an array...

--Boundary_(ID_R4lvJF69Y6z9OsoepBVebg)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT


On 2013-07-22, at 7:30 AM, Michael Sweet <msweet@apple.com> wrote:

> Till,
> 
> Filed the following Apple bug to track this:
> 
>    <rdar://problem/14508324> cups.org: ippfind endian issue on Linux/Avahi
> 
> I think this *is* just an endian issue, and it is limited to Avahi (strange I didn't notice it when I tested, but an easy fix)
> 
> On 2013-07-19, at 5:59 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
>> Hi,
>> 
>> I have packaged CUPS 1.7.0 RC1 for Ubuntu Raring (13.04) and Saucy
>> (13.10) and uploaded them to my PPA
>> (https://launchpad.net/~till-kamppeter/+archive/ppa).
>> 
>> Then I have tested the new ippfind on Saucy by simply running
>> 
>> ippfind
>> 
>> The result is
>> 
>> ipp://till-lenovo.local:30466/printers/Berlin
>> ipp://till-lenovo.local:30466/printers/Berlin
>> ipp://till-lenovo.local:30466/printers/Berlin
>> ipp://till-lenovo.local:30466/printers/Budapest
>> ipp://till-lenovo.local:30466/printers/LaBoheme
>> ipp://till-lenovo.local:30466/printers/LaTraviata
>> ipp://till-lenovo.local:30466/printers/Mailand
>> ipp://till-lenovo.local:30466/printers/Marrakech
>> ipp://HPOccam.local:30466/ipp/printer
>> ipp://till-lenovo.local:30466/printers/Paris
>> ipp://till-lenovo.local:30466/printers/SanFrancisco
>> ipp://till-lenovo.local:30466/printers/SanFranciscoFax
>> ipp://till-lenovo.local:30466/printers/Santorini
>> ipp://till-lenovo.local:30466/printers/Singapur
>> ipp://till-lenovo.local:30466/printers/Tokyo
>> ipp://till-lenovo.local:30466/printers/Wien
>> ipp://NPI90E6C1.local:30466/NPI90E6C1
>> 
>> It should be port 631 and not 30466. Looks like an endian problem or so.
>> I tested on an x86_64 system running Ubuntu Saucy.
>> 
>>  Till
> 
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_R4lvJF69Y6z9OsoepBVebg)--
