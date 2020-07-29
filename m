Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ypNmBMpyJi2WSEjMN2KR+KUswj0z57aPuIieEM8UL9o=;
 b=etULfbCNhuLW1fwrcgtQpmrXrQjYqIW5Qjm6qrM0NoNQ1EnhRGiBGNompDwj85cdCR
 J08Tt/khrW5QeqRF7/rHk1vIPdPi4sNHSVgxFk44VIA2fOZDyL6N2KOOQncvsGBRhO/r
 xGY3aqlBg6P+KAYkqvydZIEFSewwdphirnSfLS22wDcmePvPBxoAr7y/EJJ10t6pNR1d
 MYmlIKAChukKZQIp5FUZYV/cUV/Y17dhb+MwQjzrnGduAXqmuJKcOC72XfcknmmFXV5B
 L+pTUGTQQPWCOzdCDq7jM5fyDCxJLl46Cm3meadtTqrBk/WMOnvvWp6cMk0Yd2XBYt7u
 dBNQ==
References: <6e976771-0ca9-1ded-bc7c-bfc00979e68f@gmail.com>
 <c4e910ab-ba48-9200-aa48-45d1eeeecf45@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <ce086f37-e6b2-2a6d-c292-c6bb95d2532b@gmail.com>
Date: Wed, 29 Jul 2020 14:07:04 +0200
MIME-Version: 1.0
In-Reply-To: <c4e910ab-ba48-9200-aa48-45d1eeeecf45@redhat.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] GTK Print Dialog: Modern IPP printing
 environments cause problems
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>, Marek Kasik <mkasik@redhat.com>
Cc: Aveek Basu <basu.aveek@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Rithvik Patibandla <rithvikp98@gmail.com>, Rithvik Patibandla <rithp9@gmail.com>

On 29/07/2020 07:24, Zdenek Dohnal wrote:
> Hi Till,
> 
> I and Marek are working on the most of issues you mentioned here
> https://bugzilla.redhat.com/show_bug.cgi?id=1784449 , but I didn't
> propose cpdb support for it, because I wasn't sure of readiness of the
> project after GSoC. IIRC Ubuntu doesn't ship cpdb either and you mention
> the person who should oversee the project is unresponsive, so it would
> need time to learn about the project and probably make some changes to
> get it into GTK - I'm not sure whether implementing the current CUPS API
> wouldn't be faster.
> 

CPDB, the core of it was already developed 3 years ago in GSoC 2017 and 
it is working. After that we struggled on getting GSoC students to 
implement it in GTK and Qt. In LibreOffice it got already implemented 
back in 2017.

It is not used in Ubuntu because there is no implementation for the GTK 
and Qt print dialogs, which are the dialogs most applications use.

Probably implementing the current CUPS API could be easier, but if there 
are further chabges on the printing architecture the GTK dialog, 
especially with the long feature release cycles of GNOME/GTK, will 
quickly be behind again. The CPDB CUPS backend we would quickly update 
if new CUPS versions require it, making ALL print dialogs up-to-date 
again at once.

> From my testing, print dialog shows even network printers, if they are
> advertised by Avahi. Unfortunately, the current GTK print backend only
> lists a permanent ones and depends on Avahi on the network ones.
> 

Yes, the new CUPS API is the solution, showing exactly what the user 
wants. The CPDB CUPS backend actually uses the new CUPS API.

It is much more complex and error-prone to stick with the old CUPS API 
and to work around by directly using the Avahi responses of the network 
printers. The new CUPS API already provides correct queue names, filters 
out unsuitable IPP printers, polls the printers correctly in all network 
architectures, it is assured that printing goes through CUPS, ...

> I concur this should be fixed and using CUPS newer API would do the
> trick, which I mention in
> https://bugzilla.redhat.com/show_bug.cgi?id=1784449 .
> 

Yes, the bug report shows exactly what I have observed and simply using 
the new CUPS API (preferably through CPDB) would solve everything.
> 
> If I understand correctly the problem is about 'don't print without CUPS
> or it can cause problems'. Thank you for pointing it out!
> 

Yes, CUPS does not only list printers, it

- is a spooler, you send a job, it stores it in a file, in a print queue
   and the print-job function returns, so you can go on working in your
   app before printing finishes.

- it converts the input file format in what is needed for printing. For
   this it calls one or more of the filters provided by cups-filters.
   Most printers, including modern driverless IPP obes, do not understand
   PDF, but jobs come in PDF, so they need to get converted.

Therefore you should print ALWAYS through CUPS and the print dialog 
should assure this. Print-to-file and Google Cloud Print naturally work 
without CUPS, but printing on physical printers should always be done 
through CUPS.

> I guess using CUPS API can solve those too.

Yes, if you list printers and options, and alsoset options and print, 
all through the new CUPS API, printing through CUPS is assured.

> I haven't tested PAPPL based printer application yet, I hope I'll get
> into it this year. Thank you for trying them out, Till!
>

PAPPL (https://github.com/michaelrsweet/pappl/) is a library containing 
everything needed to create Printer Applications. Printer Applications 
are daemons which emulate an IPP network printer on localhost. They 
conform completely with IPP and do everything which an IPP network 
printer does (in the future also what an IPP multi-function device 
does): Advertising themselves via DNS-SD, answering 
get-printer-attributes IPP requests with their capabilities, printing, 
scanning, faxing, and even providing an admin web interface.

Printer Applications replace classic printer drivers consisting of 
filters and PPD files. Once because PostScript and PPDs is obsolete, 
second that for CUPS all printers are driverless IPP printers and so 
CUPS does not need to muck around with drivers any more, and third, CUPS 
and the driver are connected by IP communication, not by dropping files 
into reserved directories, this allows to put CUPS, the drivers, and 
office applications into independent sandboxed packages, especially the 
sandboxed packages of Printer Applications are an 
OS-distribution-independent way to package drivers.

IPP printers, including Printer Applications, are not required to spool 
jobs, nor are they required to understand PDF (the standards should also 
work out on cheap printers, and, indeed, the cheapest 50-EUR network 
printers do driverless IPP).

Due to this a print dialog getting the job data as PDF from the 
application would choke on printing directly to an arbitrary IPP 
printer, which we see when we try to print to the demo Printer 
Application which comes with PAPPL. This Printer Application only 
accepts Raster formats but not PDF as input.

By the way, PAPPL makes it very easy tocreate Printer Applicatons. Here 
is an example for a PCL (HP LaserJet) one:

https://github.com/michaelrsweet/hp-printer-app/

>>       The "Print" stays permanently
>>       grayed and the status stays permanently on "Getting Printer
>>       Information".
>>
> Actually, regarding the testing I've done, the issue you mention here is
> probably connected to your network topology and how GTK works with
> DNS-SD advertised printers.
> 
> I have the same problem with my printer at home. The printer is behind a
> router, capable of driverless printing and found by Avahi, but I'm not
> capable to print via DNS-SD based queue in GTK.
> 
> But when I tried printing within my local network in the office, I was
> able to print via DNS-SD based queue in GTK if the printer was connected
> within local network (probably without router).
> 
> Originally, https://bugzilla.redhat.com/show_bug.cgi?id=1784449 was
> about the issue you mentioned.
> 

My network topology is very simple: I have a single router connecting to 
the internet and everything, especially my printer and my laptop, is 
behind the router. This also means that my printer and my laptop have no 
router between them. In addition, the problem does not only occur when 
connecting to my printer via the network but also via IPP-over-USB using

https://github.com/OpenPrinting/ipp-usb

And independent of this I can poll the capabilities of my printer with a 
simple get-printer-attributes IPP request, issued by ipptool, by the 
driverless utility of cups-filters, or by cups-browsed, both via network 
and via IPP-over-USB. So the problem must be in the print dialog, doing 
something weird instead of the simple get-printer-attributes IPP request 
(Perhaps using CUPS API on IPP network printer? Trying to grab print 
queue PPD from an IPP network printer?).

By the way, cups-browsed cannot be in the way as I have turned it off.

Hope we will be able to switch to CPDB soon.

    Till
