Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1596000799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=XymxxemUK++SxMY0mkk1+DGSseL1YMnShyc4L5dUi5o=;
 b=F62shiG5FODZIK8WrOdsXpKeRgP/BKr/g6OwgzB83xu9v6b5c/2kvsav3yZHUnOmk/cUfA
 tOSIr0p57U97M2L0uPpJZQQDO/Rnm05EGajczjlRNDRNiaoS7doX0RYLO5ANbV72s2EudP
 a8Iau5xZlisqtwj1ExWWbh2nlrdla8Y=
References: <6e976771-0ca9-1ded-bc7c-bfc00979e68f@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <c4e910ab-ba48-9200-aa48-45d1eeeecf45@redhat.com>
Date: Wed, 29 Jul 2020 07:24:47 +0200
MIME-Version: 1.0
In-Reply-To: <6e976771-0ca9-1ded-bc7c-bfc00979e68f@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="B2dkEoZY6MaFGJ5YXWekvUtmFrYM7Dr1D"
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
--B2dkEoZY6MaFGJ5YXWekvUtmFrYM7Dr1D
Content-Type: multipart/mixed; boundary="R4aCyfiLb5hUqMYeCdKvdwyXCttEmrJkl"

--R4aCyfiLb5hUqMYeCdKvdwyXCttEmrJkl
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi Till,

I and Marek are working on the most of issues you mentioned here
https://bugzilla.redhat.com/show_bug.cgi?id=3D1784449 , but I didn't
propose cpdb support for it, because I wasn't sure of readiness of the
project after GSoC. IIRC Ubuntu doesn't ship cpdb either and you mention
the person who should oversee the project is unresponsive, so it would
need time to learn about the project and probably make some changes to
get it into GTK - I'm not sure whether implementing the current CUPS API
wouldn't be faster.

On 7/29/20 12:33 AM, Till Kamppeter wrote:
> Marek,
>
> I want to make you aware of the state of the GTK print dialog and
> problems which are occuring with it in modern printing environments.
>
> Most (probably all) of these can be solved by adding CPDB (Common
> Print Dialog Backends) support to the dialog as then the control on
> how the dialog communicates with printing systems is moved from GTK to
> OpenPrinting. We at OpenPrinting can quickly react to changes and
> implement everything needed in the appropriate CPDB backend.
>
> Unfortunately Tanmay Anand refuses to answer to any of our requests to
> return to working on this subject. I do not know how well you worked
> together with him, how much code and which quality of code he
> contributed, whether he actualy understood all the mechanisms, ...
> Could you tell about your relationship with him in this subject?
>
> Is there any worthwhile outcome which could be the base for someone
> else to continue and complete the work?
>
> Are there any plans to add CPDB support independent of Tanmay?
>
> Problems are the following:
>
>
> 1. If there is an IPP printer available CUPS would create a temporary
> queue as soon as you try to print on such a printer. See the output of
>
> lpstat -l -e
>
> for such queues. On my machine I get
>
> till@till-x1yoga:~/Downloads$ lpstat -l -e
> HP_OfficeJet_Pro_8730_08C229_ network none
> ipps://HP%20OfficeJet%20Pro%208730%20%5B08C229%5D._ipps._tcp.local/
> HP_OfficeJet_Pro_8730_08C229_USB_ network none
> ipp://HP%20OfficeJet%20Pro%208730%20%5B08C229%5D%20(USB)._ipp._tcp.local/
> Label_Printer network none ipps://Label%20Printer._ipps._tcp.local/
> Office_Printer network none ipps://Office%20Printer._ipps._tcp.local/
> snap-ps permanent ipp://localhost/printers/snap-ps
> ipp://HP%20OfficeJet%20Pro%208730%20%5B08C229%5D._ipp._tcp.local/
> snap_ps_till_x1yoga network none
> ipps://snap-ps%20%40%20till-x1yoga._ipps._tcp.local/cups
> till@till-x1yoga:~/Downloads$
>
> The ones with "permanent" a standard CUPS queues which the print
> dialog happily lists. The one with "network" CUPS would only create
> on-demand. These are not listed by the print dialog and should be
> listed. Michael Sweet has made a new (already years ago) CUPS API for
> that, using the cupsEnumDests() functions.

From my testing, print dialog shows even network printers, if they are
advertised by Avahi. Unfortunately, the current GTK print backend only
lists a permanent ones and depends on Avahi on the network ones.

I concur this should be fixed and using CUPS newer API would do the
trick, which I mention in
https://bugzilla.redhat.com/show_bug.cgi?id=3D1784449 .

>
>
>
> 2. The GTK print dialog seems to list IPP printers diectly from
> DNS-SD, these even show if no CUPS daemon at all is running on the
> system, suggesting that the dialog prints spooler-less to these
> printers, and as many of these do not spool by themselves one can
> expect the application to hang (if the GTK dialog has no mini spooler
> built in). Queue names seem to be constructed from the DNS-SD service
> name.

If I understand correctly the problem is about 'don't print without CUPS
or it can cause problems'. Thank you for pointing it out!

I guess using CUPS API can solve those too.
>
> 3. I have tried to print on such independent-of-CUPS IPP printers and
> ran into two problems:
>
> =C2=A0 a. One printer comes from the sample Printer Application from the
> =C2=A0=C2=A0=C2=A0=C2=A0 PAPPL project. It does not accept PDF input, onl=
y Raster formats.
> =C2=A0=C2=A0=C2=A0=C2=A0 The dialog seems to happily send PDF jobs to thi=
s printer (which
> =C2=A0=C2=A0=C2=A0=C2=A0 get aborted by the Printer Application). So befo=
re listing
> =C2=A0=C2=A0=C2=A0=C2=A0 arbitrary DNS-SD-reported IPP printers, the TXT =
record of the
> =C2=A0=C2=A0=C2=A0=C2=A0 printer needs to get checked and whether in its =
"pdls" entry PDF
> =C2=A0=C2=A0=C2=A0=C2=A0 (or the job's format) is listed. Only then the p=
rinter can be
> =C2=A0=C2=A0=C2=A0=C2=A0 listed.

I haven't tested PAPPL based printer application yet, I hope I'll get
into it this year. Thank you for trying them out, Till!

> =C2=A0 b. I have a physical IPP network printer which does driverless IPP
> =C2=A0=C2=A0=C2=A0=C2=A0 printing. It advertises itself by DNS-SD (and so=
 the dialog always
> =C2=A0=C2=A0=C2=A0=C2=A0 lists it, also without CUPS running), understand=
s PDF, and you get
> =C2=A0=C2=A0=C2=A0=C2=A0 all needed properties of the printer if you send=
 a get-printer-
> =C2=A0=C2=A0=C2=A0=C2=A0 attributes IPP request to it. This allows me dri=
verless printing
> =C2=A0=C2=A0=C2=A0=C2=A0 with CUPS. The GTK dialog seems to be sending so=
mething else than
> =C2=A0=C2=A0=C2=A0=C2=A0 a get-printer-attributes IPP request to the prin=
ter, as when I
> =C2=A0=C2=A0=C2=A0=C2=A0 select the printer in the dialog, the dialog nev=
er completes
> =C2=A0=C2=A0=C2=A0=C2=A0 getting the printer's properties. The "Print" st=
ays permanently
> =C2=A0=C2=A0=C2=A0=C2=A0 grayed and the status stays permanently on "Gett=
ing Printer
> =C2=A0=C2=A0=C2=A0=C2=A0 Information".
>
Actually, regarding the testing I've done, the issue you mention here is
probably connected to your network topology and how GTK works with
DNS-SD advertised printers.

I have the same problem with my printer at home. The printer is behind a
router, capable of driverless printing and found by Avahi, but I'm not
capable to print via DNS-SD based queue in GTK.

But when I tried printing within my local network in the office, I was
able to print via DNS-SD based queue in GTK if the printer was connected
within local network (probably without router).

Originally, https://bugzilla.redhat.com/show_bug.cgi?id=3D1784449 was
about the issue you mentioned.

>
>
> GTK dialog backends on the system are the following:
>
> ill@till-x1yoga:~/Downloads$ ls
> /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/
> libprintbackend-cloudprint.so=C2=A0 libprintbackend-file.so
> libprintbackend-test.so
> libprintbackend-cups.so=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libprin=
tbackend-lpr.so
> till@till-x1yoga:~/Downloads$ dpkg -S
> /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/*
> libgtk-3-0:amd64:
> /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-clo=
udprint.so
> libgtk-3-0:amd64:
> /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-cup=
s.so
> libgtk-3-0:amd64:
> /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-fil=
e.so
> libgtk-3-0:amd64:
> /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-lpr=
.so
> libgtk-3-0:amd64:
> /usr/lib/x86_64-linux-gnu/gtk-3.0/3.0.0/printbackends/libprintbackend-tes=
t.so
> till@till-x1yoga:~/Downloads$
>
> Everything coming from my Ubuntu 20.04, no experiments performed, no
> student's code tried out here.
>
>
> I assume that all these problems originate in the
> libprintbackend-cups.so module.
>
>
> So my suggestion is to get CPDB support into the GTK dialog.
>
> How should we proceed here? Rithvik, would you perhaps volunteer or at
> least in some form help?

IMO any help is welcome :) - Rithvik, if you are willing, you can join
us at https://bugzilla.redhat.com/show_bug.cgi?id=3D1784449 . Probably we
will elevate the issue to gtk gitlab in the future, but we talk about
the issue in the bugzilla ticket at the moment.

Hope you all are well and have a nice day,

Zdenek

> =C2=A0=C2=A0 Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--R4aCyfiLb5hUqMYeCdKvdwyXCttEmrJkl--

--B2dkEoZY6MaFGJ5YXWekvUtmFrYM7Dr1D
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAl8hCB8ACgkQFapqf01C
J9fJ7Qf/avICmLfrSGmSI0OcXHRGgFaJoDAVyJva6SFxxRdtoh2rxhM3ARqAJTX2
1W7pvX5yZ5LdNPL4zZgNwiGOmckw+t7uNwAdrSotEeutr/lthZeWUM6tXeTyLLAG
gVjuofuivU+jw8yyvXlDjeMU46ku4JQwEM3v84o/WlXTuPygwBl6MIf0mfgzYJcL
9qxJUQ8j0usLFfWI3ro7FGUu5Abg6/C8MNtfO+WIUGP+m8M7dk5vFDPTr65g5/9n
r9cWiccXysbsSFiAsFUYgV7Ft45SzcKN9libMSZOGE3JSyiJx+di+eEP+i9IH4KM
qYAzjeO7t2hJIgZUw0KcPhjg5qYzmA==
=+mf7
-----END PGP SIGNATURE-----

--B2dkEoZY6MaFGJ5YXWekvUtmFrYM7Dr1D--

