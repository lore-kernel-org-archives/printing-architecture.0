Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FLvArdUIujInLbU8huXWsvopWagk5E8H297Afl/chdY=;
 b=Ka88zRIH7HjZHMEYicn+lmm0qHGG9u8ziTV5Cx7UruaDt5GZhe5UPDJljWw95lizca
 o4asNie7al0zSYxYmDeEGweCnapADntY4kLEcgErTErWM8HXC//k4N9NzSdQ153u2ZHl
 4cEJQfK34YK7YVA9IycAFgtIAVmXOCq4M2KS6Xhv7IJzYRy86nFmX18g+O+9WzNqUsGH
 YsaZAYT86I5Lccopib0wdeR1SZBHEM4qT1DWvCeqFea0fDcRQ/b748wZ9qHziDDbBZ9y
 f2W8J38wJirlQotpWvh46bagDphLPKWP7VN+c8XYERgT6YIv4U3VDCG4qhZ8KjyKwQe8
 ssVA==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
 <bb88fef5-f33e-3ca9-14da-ca189116ce9f@gmail.com>
 <YDfCLhAuxSbro6Ug@shaftnet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <a0ebda19-80ab-48cf-9032-6d14208f3237@gmail.com>
Date: Thu, 25 Feb 2021 23:54:51 +0100
MIME-Version: 1.0
In-Reply-To: <YDfCLhAuxSbro6Ug@shaftnet.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Solomon Peachy <pizza@shaftnet.org>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

On 25/02/2021 16:28, Solomon Peachy wrote:
> On Wed, Feb 24, 2021 at 03:17:27PM +0100, Till Kamppeter wrote:
>> You probably mean the USB quirks. This is to overcome hardware
>> incompatibilities.
> 
> Yeah.  Not having something like this is responsible for most of the
> support headaches I get from MacOS users.
>

Seems that CUPS has this USB quirk functionality only in the 
libusb-based incarnation of the USB backend not in the Darwin one which 
Mac OS uses. The idea of USB quirks comes from me, as Michael put up the 
first sketch of a libusb-based USB backend it did not work very well for 
me and I vastly improved it, especially also investigating how the usblp 
kernel module works and there was this USB quirk handling which I had 
overtaken into the backend. Michael has then improved it by putting the 
rules into an editable file.

>> For this we need support prioritization levels, like "generic" (CMD: item
>> match), "third-party" (independent driver, like Gutenprint matches the model),
>> "manufacturer" (manufacturer driver matches the model).
> 
> "generic" is going to be so much so that I fear it will be effectively
> useless for autoconfiguration.
> 

I agree.

> Take Epson printers -- Nearly every model produced in over 25 years
> claims to support ESCP2, but there's very little beyond "print basic
> ASCII text" that one can ultimately rely on.  You need a more specific
> model family (dot matrix, mono-only inkjet, X color inkjet, etc) on top
> of that in order to be remotely useful for raster printing.
> 

In the PostScript Printer Application this works better. A generic 
PostScript PPD file works with practically all PostScript printers, it 
only misses support of many printer features, like more than 2 or 3 
trays, exotic paper sizes, finishers, ...

> In other words, an application shouldn't claim "support" for a printer
> unless there's an explicit, positive match; everything else will require
> some sort of user/admin intervention/configuration.
> 

In the PostScript Printer Application this would mean printers for which 
there is a corresponding PPD file for exactly this model.

> I'm beginning to come around to the notion that we shouldn't even bother
> to create an automagic "figure out which printer application supports
> the printer just plugged in" mechanism, because it's going to take a
> _lot_ of work, it's nearly entirely an exercise in working around legacy
> baggage, and as Michael put it, we're not likely to ever see more than
> half a dozen printer applications anyway, and all of those will be
> focused around legacy models.
> 

Only for the users not being completely lost with a legacy printer, 
should we have at least some simple tool which detects printers and 
lists them and checks installed Printer Applications whether they 
support it, with an "Add" button for auto-adding it, and also a button 
for the printer entry which does searches like "Acme LaserStar 1000+" 
and "Acme Printer" on the Snap Store? (As long as we have no 
hardware-signature-based search, Printer Applications supporting a few 
models could list them in their store listing's description, and a 
manufacturer's Printer Application always contains the manufacturer's 
name and "printer" somewhere in its title and/or description).

If we have the DNS-SD service lister which I mentioned in other postings 
on Printer Applications there could be besides the web interface and IPP 
System Service buttons also an auto-add button.

> I don't see any printer makers bothering to create
> downloadable/runnable-on-end-user-systems printer applications for their
> art/speciality models (and definitely not for their legacy models) --
> instead they'll sell a little "print server" that can be bolted onto the
> printer to achieve that functionality.
> 
> ...and that "print server" will be running legacy CUPS (and hopefully,
> eventually, PAPPL) along with out-of-band scripts that detect the
> attached printers at startup time and create/export "queues" in a
> non-dynamic manner.

OK, let's see.

    Till
