Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51E9B6B2.4080307@gmail.com>
Date: Mon, 22 Jul 2013 07:30:39 -0400
Message-id: <D5AF317D-EA49-44F7-AF70-3874F18EF54E@apple.com>
References: <51E9B6B2.4080307@gmail.com>
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

Till,

Filed the following Apple bug to track this:

    <rdar://problem/14508324> cups.org: ippfind endian issue on Linux/Avahi

I think this *is* just an endian issue, and it is limited to Avahi (strange I didn't notice it when I tested, but an easy fix)

On 2013-07-19, at 5:59 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:

> Hi,
> 
> I have packaged CUPS 1.7.0 RC1 for Ubuntu Raring (13.04) and Saucy
> (13.10) and uploaded them to my PPA
> (https://launchpad.net/~till-kamppeter/+archive/ppa).
> 
> Then I have tested the new ippfind on Saucy by simply running
> 
> ippfind
> 
> The result is
> 
> ipp://till-lenovo.local:30466/printers/Berlin
> ipp://till-lenovo.local:30466/printers/Berlin
> ipp://till-lenovo.local:30466/printers/Berlin
> ipp://till-lenovo.local:30466/printers/Budapest
> ipp://till-lenovo.local:30466/printers/LaBoheme
> ipp://till-lenovo.local:30466/printers/LaTraviata
> ipp://till-lenovo.local:30466/printers/Mailand
> ipp://till-lenovo.local:30466/printers/Marrakech
> ipp://HPOccam.local:30466/ipp/printer
> ipp://till-lenovo.local:30466/printers/Paris
> ipp://till-lenovo.local:30466/printers/SanFrancisco
> ipp://till-lenovo.local:30466/printers/SanFranciscoFax
> ipp://till-lenovo.local:30466/printers/Santorini
> ipp://till-lenovo.local:30466/printers/Singapur
> ipp://till-lenovo.local:30466/printers/Tokyo
> ipp://till-lenovo.local:30466/printers/Wien
> ipp://NPI90E6C1.local:30466/NPI90E6C1
> 
> It should be port 631 and not 30466. Looks like an endian problem or so.
> I tested on an x86_64 system running Ubuntu Saucy.
> 
>   Till

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

