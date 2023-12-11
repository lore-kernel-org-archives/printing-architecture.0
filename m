Return-Path: <Shadow_7@gmx.net>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F84860DB7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B03A360C16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=s31663417; t=1702280122; x=1702884922; i=shadow_7@gmx.net;
 bh=V059rCZ6HHPLjW7FLHtEJ24DB0joLkgLzdE0GsJfKFw=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=boL/SUWPWWZm7RYapwDgxOB5f3HhA0TCqH3vM+nOqe8C2gwydZeEUi5v11GvUPr9
 /nYt8HI6N876N5y+8eOFnUBLGtqndRWCTF7pNAqBKA5OEsLLNUHxIRBkTp6jcbLE8
 zg4wCCUTsZT33DbhHu105vJutqqCY3BrX/+l5PfYm9rDsnR3YVL9M4RogZA3lGiUu
 voXW1LTC7d1/GNn/XUfB/5wSHe5OkS2ZTeKDd7Tu7l32fR2PdOpVmlTU+32un90x1
 a2qZYAjQ9T25mfs2PnWqn5WLl2BGJM42hwUlfJ3+3U5LsW3G0bDiNB+gA8gUdtfBf
 VFN7Ngnf6lrR3JoUbA==
MIME-Version: 1.0
Message-ID: <trinity-3c8ea779-9126-4afa-872b-a88075ac08bf-1702280122490@3c-app-gmx-bap41>
From: Stefan K <Shadow_7@gmx.net>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 11 Dec 2023 08:35:22 +0100
In-Reply-To: <SYBP282MB261780509FF7F2F97B2A31D78785A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
References: <trinity-aa4ecf8b-1604-4eb3-b482-ee17d53c54a8-1701190767678@3c-app-gmx-bap02>
 <540a6eb1-4964-4281-a333-cf18f44ecac2@gmail.com>
 <trinity-dc79b1f8-46da-4df4-b10d-8ba39c8c1512-1701249802882@3c-app-gmx-bap15>
 <SYBP282MB261780509FF7F2F97B2A31D78785A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
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
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hello Doug,

sorry for the late response.

Thank you very much for your help!
Now it works like a charm.

But I still don't get it.. You said URF is prioritized, and will be render=
ed by cups, but why is it so slow? It's a potent VM with two cores.

best regards
Stefan

> Gesendet: Dienstag, 05. Dezember 2023 um 11:03 Uhr
> Von: "Douglas Kosovic" <doug@uq.edu.au>
> An: "Stefan K" <Shadow_7@gmx.net>, "printing-architecture@lists.linux-fo=
undation.org" <printing-architecture@lists.linux-foundation.org>
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
> So that PDF rather than URF raster is preferred to be sent to the printe=
r.
>
> After making changes to the PPD file, you'll need to restart the CUPS se=
rver for the changes to take effect.
>
> The driverless PPD generator prioritises URF raster over PDF as many ent=
ry level printers have low spec CPUs which can be slow for rasterizing PDF=
, so pre-rasterized URF is sent instead.
>
> The IPP Everywhere PPD generator prioritises PDF over URF raster, the su=
ggested modifications above is what the IPP Everywhere PPD generator gener=
ates.
>
>
>
> Cheers,
> Doug
>
> -----Original Message-----
> From: Printing-architecture <printing-architecture-bounces@lists.linux-f=
oundation.org> On Behalf Of Stefan K
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
> > > I hope someone can help me with my problem because I'm a little bit =
frustrated and I don't have absolutely no clue how to fix that.
> > >
> > > I have a Debian 12 based print server running, all printers are conn=
ected via IPP which works so far but it takes a while if we start printing=
 multiple pages and then for each page, it takes >15s for the next page. I=
t doesn't matter if we print PDF or simple text files.
> > >
> > > For me, it looks like that cups is waiting until the printer says
> > > "I'm done". According to the Documentation I tried
> > > ?waitjob=3Dfalse&waitprinter=3Dfalse at the end of the deviceURI and
> > > restart cups, but it's still the same. This happens on different
> > > types of printers eg. HP PageWide Pro 477dw MFP or Kyocera TASKalfa
> > > 4052ci
> > >
> > > I can attach the error_log with debug information.
> > >
> >
> > Please do so, and also attach the PPD file of the print queue (from
> > /etc/cups/ppd/).
> >
> >     Till
> > _______________________________________________
> > Printing-architecture mailing list
> > Printing-architecture@lists.linux-foundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/printing-architectu
> > re
> >
>
