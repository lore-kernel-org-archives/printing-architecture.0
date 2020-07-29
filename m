Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596027260;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=/kvtH67UQiZzBl9CTc4WvRns4AMxo5xL1XDwX+cNSF8=;
 b=N+35kTIebqvb1tOx/vEgoT8i1FG64lOQNp9tVmfi/GlqMMSpJjTX1CH463NDJAOnWBtji6
 CNSaI7E8K1i8unfHBpPtgA9eqbhQ2rm8VQywFu9Zhgcf0ReQJ6eZJkIEy+7P9wp6l++Ctf
 ZXK3euIrwlJvlUbhaRzI703Graudy8I=
References: <6e976771-0ca9-1ded-bc7c-bfc00979e68f@gmail.com>
 <c4e910ab-ba48-9200-aa48-45d1eeeecf45@redhat.com>
 <ce086f37-e6b2-2a6d-c292-c6bb95d2532b@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <64171bfe-d62f-86f8-3c97-2a2391836f1a@redhat.com>
Date: Wed, 29 Jul 2020 14:54:11 +0200
MIME-Version: 1.0
In-Reply-To: <ce086f37-e6b2-2a6d-c292-c6bb95d2532b@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="drOVsjlYFA1TrgRhmAzQBL4S3oCk8j5KP"
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
To: Till Kamppeter <till.kamppeter@gmail.com>, Marek Kasik <mkasik@redhat.com>
Cc: Aveek Basu <basu.aveek@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Rithvik Patibandla <rithvikp98@gmail.com>, Rithvik Patibandla <rithp9@gmail.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--drOVsjlYFA1TrgRhmAzQBL4S3oCk8j5KP
Content-Type: multipart/mixed; boundary="5OdEDgAr1OpbjLLYevygFFYba4Wx2ghqq"

--5OdEDgAr1OpbjLLYevygFFYba4Wx2ghqq
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

On 7/29/20 2:07 PM, Till Kamppeter wrote:
>
> Yes, CUPS does not only list printers, it
Yes, thank you for explanation - I mentioned only listing because your
problem was about listing.
>
> Therefore you should print ALWAYS through CUPS and the print dialog
> should assure this. Print-to-file and Google Cloud Print naturally
> work without CUPS, but printing on physical printers should always be
> done through CUPS.
>
I concur.

> I haven't tested PAPPL based printer application yet, I hope I'll get
>> into it this year. Thank you for trying them out, Till!
>>
>
> PAPPL (https://github.com/michaelrsweet/pappl/) is a library
> containing everything needed to create Printer Applications. Printer
> Applications are daemons which emulate an IPP network printer on
> localhost. They conform completely with IPP and do everything which an
> IPP network printer does (in the future also what an IPP
> multi-function device does): Advertising themselves via DNS-SD,
> answering get-printer-attributes IPP requests with their capabilities,
> printing, scanning, faxing, and even providing an admin web interface.
>
> Printer Applications replace classic printer drivers consisting of
> filters and PPD files. Once because PostScript and PPDs is obsolete,
> second that for CUPS all printers are driverless IPP printers and so
> CUPS does not need to muck around with drivers any more, and third,
> CUPS and the driver are connected by IP communication, not by dropping
> files into reserved directories, this allows to put CUPS, the drivers,
> and office applications into independent sandboxed packages,
> especially the sandboxed packages of Printer Applications are an
> OS-distribution-independent way to package drivers.

Thank you for a detailed explanation! I regularly check meeting minutes
from openprinting meetups and attend PWG meetup once a year, so I have a
basic knowledge, but it is always good to repeat and I can miss something.

I just haven't had PAPPL and any PAPPL created printer application in my
hands to try how it works - I only saw Mike's workshop at PWG meetup in
April.

>
> IPP printers, including Printer Applications, are not required to
> spool jobs, nor are they required to understand PDF (the standards
> should also work out on cheap printers, and, indeed, the cheapest
> 50-EUR network printers do driverless IPP).
>
> Due to this a print dialog getting the job data as PDF from the
> application would choke on printing directly to an arbitrary IPP
> printer, which we see when we try to print to the demo Printer
> Application which comes with PAPPL. This Printer Application only
> accepts Raster formats but not PDF as input.
>
> By the way, PAPPL makes it very easy tocreate Printer Applicatons.
> Here is an example for a PCL (HP LaserJet) one:
>
> https://github.com/michaelrsweet/hp-printer-app/
Thanks, I'll check it.
>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The "Print" stays permanently
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 grayed and the status stays permanently =
on "Getting Printer
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Information".
>>>
>> Actually, regarding the testing I've done, the issue you mention here is
>> probably connected to your network topology and how GTK works with
>> DNS-SD advertised printers.
>>
>> I have the same problem with my printer at home. The printer is behind a
>> router, capable of driverless printing and found by Avahi, but I'm not
>> capable to print via DNS-SD based queue in GTK.
>>
>> But when I tried printing within my local network in the office, I was
>> able to print via DNS-SD based queue in GTK if the printer was connected
>> within local network (probably without router).
>>
>> Originally, https://bugzilla.redhat.com/show_bug.cgi?id=3D1784449 was
>> about the issue you mentioned.
>>
>
> My network topology is very simple: I have a single router connecting
> to the internet and everything, especially my printer and my laptop,
> is behind the router. This also means that my printer and my laptop
> have no router between them. In addition, the problem does not only
> occur when connecting to my printer via the network but also via
> IPP-over-USB using
>
> https://github.com/OpenPrinting/ipp-usb
>
> And independent of this I can poll the capabilities of my printer with
> a simple get-printer-attributes IPP request, issued by ipptool, by the
> driverless utility of cups-filters, or by cups-browsed, both via
> network and via IPP-over-USB. So the problem must be in the print
> dialog, doing something weird instead of the simple
> get-printer-attributes IPP request (Perhaps using CUPS API on IPP
> network printer? Trying to grab print queue PPD from an IPP network
> printer?).
>
> By the way, cups-browsed cannot be in the way as I have turned it off.

Then how would you explain printing from GTK works for some cases via
DNS-SD based queue as it worked in our office? If it didn't work
completely, it would be more tickets about the issue.

I cannot test it right now in the office for an obvious reasons, but
IIRC cups-browsed was turned off too.

>
> Hope we will be able to switch to CPDB soon.
>
> =C2=A0=C2=A0 Till
>
--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--5OdEDgAr1OpbjLLYevygFFYba4Wx2ghqq--

--drOVsjlYFA1TrgRhmAzQBL4S3oCk8j5KP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAl8hcXMACgkQFapqf01C
J9eyAAf+LjFUHWNxELX1dAEIn21HSMoqmstIIWJTHjFPfUWGg39fcHKp3VKeZM+W
IJ3Hwwyl27wKtdf2ZlAxUXVN5/0v7zIWVxmVDkVxxZebVzoELSw9ZWI0xTQ8o+tc
oWwHkl/Viqn7v8WT5EYqE3dl5h7uxLmjmpYcTCygk9OnsS49ijrlMh5u7fgNCbq8
aG1ffmMckzttCZjRTRcqgYv1qJdr6r93LXmNJXcAL3rOchpPO8453EpLEWubOZdI
3XZq5hX/Ffe/HTD+FTXGSUiec1waIvX8Kg8KTmZg8xukIHPoYUo1OBbFnyNJysc5
kNYFFkpJRu2KViOvS46WPlwh6S6NMA==
=Noay
-----END PGP SIGNATURE-----

--drOVsjlYFA1TrgRhmAzQBL4S3oCk8j5KP--

