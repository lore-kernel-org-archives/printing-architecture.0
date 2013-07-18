Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=8KNzb7KQY7FwHMtzx7muYzvQ/UIC5pGAnANULOoT0ww=;
	b=Nxv0sjCJ142R9uR+41yCVJmijqaOATNcK5XvAC//1IzUY0t3N7XQV+F/Yoh9ej47Tg
	DuVmXlAjolDiFs0iodoF+d2V2IeJy5DZjcDy4QdGDETy3+DBD5/SdOf5Vq/gqplkDoKo
	PyP2AaNeCh2DSICcTnaWDloCy0J733vm49k7oEUN1cwUw/+FfsO+quW31AgHJXnk4zXA
	48G74gUYb2oU7addfFvU9T3AN65RJz1JRpk9i5ZwnHzBkWuQ/6ERIvt20DqubGTwKYH0
	1MuodY0tqDvq7NhtxyPNtm7uBDk+7y9k0eYkr28Vv0KRHqp6TeGbJ64/lEyuSdehZexr
	mAqw==
Message-ID: <51E858BE.8090009@gmail.com>
Date: Thu, 18 Jul 2013 23:06:06 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <D87733EE-8A2E-4F85-9978-715E38D8A22F@apple.com>
	<51E82B1D.7070007@gmail.com>
	<9CB486A0-27B4-4A4C-8017-05A9DD56C978@apple.com>
In-Reply-To: <9CB486A0-27B4-4A4C-8017-05A9DD56C978@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] RFC: Patch for (libusb-based) USB
 backend for quirks files
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Gutenprint Mailing List <gimp-print-devel@lists.sourceforge.net>

On 07/18/2013 09:05 PM, Michael Sweet wrote:
> Till,
> 
> On 2013-07-18, at 1:51 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> What I would like to see is the possibility to have quirk rules (or at
>> least blacklisting) also for other backends.
> 
> Such as?
>

There printers claiming to support IPP but they do not work with the
"ipp" backend. If one would blacklist them for the IPP backend, they
would automatically get used with the "socket" or "lpd" backend.

>> Also the prossibility to
>> prioritize backends via a directory of files would be great.
> 
> The problem with priorities are:
> 
> 1. How do you identify identical devices?

For USB by the device ID and the serial number, for network by
determining the printer's IP address. We assume that in production
environments no printer is connected by network and by USB at the same time.

> 2. Whose priority wins? (the user's priority, the manufacturer's priority, the developer's priority, the system's priority, the site's priority?)
> 

Default would be the degree of sophistication (or usefulness?) of the
backends: IPP > Socket > LPD. Ech backend gets a priority index, for
example 300 for IPP, 200 for Socket, and 100 for LPD. Quirk rule files
could for given printer models blacklist them for a backend or change
the priority index for a backend. Third-party backends could place
themselves in the default priority order by having their own priority index.

Quirk rules could also activate workarounds for incompatible printers in
the IPP backend.

>> This could
>> assure correct automated printer setup in all situations. In addition,
>> it must be assured that when one and the same printer is discovered by
>> various backends that these discoveries can be assigned to that one printer.
> 
> We had a bug tracking this on cups.org, but it got closed without resolution because this turned out to be impossible in the general case.
> 
>> To conform with the files system hierarchy standard your patch needs a
>> small modification: Quirk files need to be searched in two directories,
>> once the one you are already using, /usr/share/cups/usb/, for the quirk
>> files of CUPS itself and of other packages, like Gutenprint, and second,
>> something in /etc/, like /etc/cups/backend/usb/, for rules defined by
>> the local user or admin.
> 
> I really don't want to add more directories, particularly for something that will be an extremely uncommon situation for ordinary users to be dealing with.  Any local changes that *do* get made will presumably end up getting pushed upstream into CUPS proper or into the corresponding driver packages.
> 
> And if there are any people out there still NFS-mounting a read-only /usr filesystem, they'll just need to serve up the same local USB quirks to all users...
> 
> So let's not make this any more complicated than it needs to be.  The primary purpose here is to enable Gutenprint and others to blacklist USB printers that need special love to work and not to enable customization/configuration by the user.

OK, the quirk rules are really not for being configured by end users.
And for temporarily adding rules following the instructions of a
developer in a bug report it is no problem to put the file with them
into /usr/share/cups/usb/.

   Till

