Return-Path: <doug@uq.edu.au>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E78C8176C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED9758125A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=uq.edu.au; s=s1ces; t=1702287531;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HVQCW970C5hSTJnliSliLd0q7O2hWOvecjwmQwnQgPU=;
 b=E37qS60smA0mMuhxOp2lJLanEZ0FY/5bp8z0h9iuaIk0IwSHF/X+KFO8
 A1mPKGae+6STz3GN1RRRUEY0KIE+ZHG6ugKKSrM4p1IozPTeQd9VD9cLa
 ZPxT8KxjqaXxUU7zXPBjR2u+d9gdRDd+b2GZg9zNOZyYbN5D+v9w9PVek
 r8w0p8qqM8wJzsdbEeUSA/QpflNjdxkEXPA95rsbRnp0x+DSMCEnGv5ic
 eLN8KZ4pxbMgL4eH39nfHIOL5VWLB+drYqVUmJ/kX5SX3tYn+3mV0jRa2
 pziyhkEiV4CraEtd5DBtGBGiFFcdXYCZvKK6Udyv+6ZNVK3Dt6RIQKV+s g==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uq.edu.au; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zFQfGyHxn8y+hrlFUfH40VRUJJYwsTLBlQ/K6c4YUic=;
 b=SH3kqSroLVWbsfgKEGSnPllHLnflhXiQpRHOyNdI12luysbAIfiDNVlPLBrfiNsynru7H2VY8LQuSCeYGNbuk6LkbfxCK1aCr+wklmjEidyj0+UOFAmzvQGZyAMCRBNTQh8v/6WDUDHtn2KSHpzFskD9o0FW3eYIcJx5D5NudMM=
From: Douglas Kosovic <doug@uq.edu.au>
Date: Mon, 11 Dec 2023 09:31:31 +0000
Message-ID: <SYBP282MB2617F6C75059D1A92D933283878FA@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
References: <trinity-aa4ecf8b-1604-4eb3-b482-ee17d53c54a8-1701190767678@3c-app-gmx-bap02>
 <540a6eb1-4964-4281-a333-cf18f44ecac2@gmail.com>
 <trinity-dc79b1f8-46da-4df4-b10d-8ba39c8c1512-1701249802882@3c-app-gmx-bap15>
 <SYBP282MB261780509FF7F2F97B2A31D78785A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
 <trinity-3c8ea779-9126-4afa-872b-a88075ac08bf-1702280122490@3c-app-gmx-bap41>
In-Reply-To: <trinity-3c8ea779-9126-4afa-872b-a88075ac08bf-1702280122490@3c-app-gmx-bap41>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Printing-architecture] high delay while printing
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Stefan K <Shadow_7@gmx.net>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hi Stefan,

The rationale for giving Apple Raster (URF) priority over PDF (by increasin=
g the PDF conversion cost to 200 like it was in your original PPD file) for=
 the driverless PPD generator can be found in this issue :

https://github.com/OpenPrinting/cups-filters/issues/331

Although Apple Raster (URF) should not be computationally intensive for the=
 printer, I suspect if color is involved in combination with some setting, =
possibly an "auto" setting that causes some printers to do computationally =
intensive processing for each URF page as if each were a new print job, whi=
ch for some reason doesn't happen with PDF. Something like the following is=
sue:

https://help.brother-usa.com/app/answers/detail/a_id/145199/~/machine-pause=
s-between-printed-pages---windows-or-macintosh

Sorry I'm only speculating, not really sure what is happening, but glad to =
hear switching to PDF solved your issue.



Cheers,
Doug

-----Original Message-----
From: Printing-architecture <printing-architecture-bounces@lists.linux-foun=
dation.org> On Behalf Of Stefan K via Printing-architecture
Sent: Monday, December 11, 2023 5:35 PM
To: printing-architecture@lists.linux-foundation.org
Subject: Re: [Printing-architecture] high delay while printing

Hello Doug,

sorry for the late response.

Thank you very much for your help!
Now it works like a charm.

But I still don't get it.. You said URF is prioritized, and will be rendere=
d by cups, but why is it so slow? It's a potent VM with two cores.

best regards
Stefan

> Gesendet: Dienstag, 05. Dezember 2023 um 11:03 Uhr
> Von: "Douglas Kosovic" <doug@uq.edu.au>
> An: "Stefan K" <Shadow_7@gmx.net>,=20
> "printing-architecture@lists.linux-foundation.org"=20
> <printing-architecture@lists.linux-foundation.org>
> Betreff: RE: [Printing-architecture] high delay while printing
>
> Hi Stefan,
>
> You could try changing the following two lines in that PPD :
>
>     *cupsFilter2: "application/vnd.cups-pdf application/pdf 200 -"
>     *cupsFilter2: "image/urf image/urf 0 -"
>
> to:
>
>     *cupsFilter2: "application/vnd.cups-pdf application/pdf 10 -"
>     *cupsFilter2: "image/urf image/urf 100 -"
>
> So that PDF rather than URF raster is preferred to be sent to the printer=
.
>
> After making changes to the PPD file, you'll need to restart the CUPS ser=
ver for the changes to take effect.
>
> The driverless PPD generator prioritises URF raster over PDF as many entr=
y level printers have low spec CPUs which can be slow for rasterizing PDF, =
so pre-rasterized URF is sent instead.
>
> The IPP Everywhere PPD generator prioritises PDF over URF raster, the sug=
gested modifications above is what the IPP Everywhere PPD generator generat=
es.
>
>
>
> Cheers,
> Doug
>
> -----Original Message-----
> From: Printing-architecture=20
> <printing-architecture-bounces@lists.linux-foundation.org> On Behalf=20
> Of Stefan K
> Sent: Wednesday, November 29, 2023 7:23 PM
> To: printing-architecture@lists.linux-foundation.org
> Subject: Re: [Printing-architecture] high delay while printing
>
> Hi Till,
>
> thanks for your reply, I've attached the logs and PPD file.
>
> best regards
> Stefan
>
> > Gesendet: Dienstag, 28. November 2023 um 19:13 Uhr
> > Von: "Till Kamppeter" <till.kamppeter@gmail.com>
> > An: printing-architecture@lists.linux-foundation.org
> > Betreff: Re: [Printing-architecture] high delay while printing
> >
> > On 28/11/2023 17:59, Stefan K wrote:
> > > Hello guys,
> > >
> > > I hope someone can help me with my problem because I'm a little bit f=
rustrated and I don't have absolutely no clue how to fix that.
> > >
> > > I have a Debian 12 based print server running, all printers are conne=
cted via IPP which works so far but it takes a while if we start printing m=
ultiple pages and then for each page, it takes >15s for the next page. It d=
oesn't matter if we print PDF or simple text files.
> > >
> > > For me, it looks like that cups is waiting until the printer says=20
> > > "I'm done". According to the Documentation I tried=20
> > > ?waitjob=3Dfalse&waitprinter=3Dfalse at the end of the deviceURI and=
=20
> > > restart cups, but it's still the same. This happens on different=20
> > > types of printers eg. HP PageWide Pro 477dw MFP or Kyocera=20
> > > TASKalfa 4052ci
> > >
> > > I can attach the error_log with debug information.
> > >
> >
> > Please do so, and also attach the PPD file of the print queue (from=20
> > /etc/cups/ppd/).
> >
> >     Till

