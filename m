Return-Path: <Shadow_7@gmx.net>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7866681E98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 147E2814B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=s31663417; t=1701700202; x=1702305002; i=shadow_7@gmx.net;
 bh=2mQDUFSKJ1L+3g9I3feLxEUd0gXWXJ3dBbhzq6LIyKY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:
 References;
 b=c5JhEiLDUifTvGZJaNot12lAy/8uf59SLzIISlRnNdYLMGT4jnuLGTOJQ498yPU4
 8PlM3mpu0BzgvXHrFkgYKAggLb8x9SiHQI4xybSp8eC+bmTmZsyag4mSZH3umtiRx
 w4D8nQaMpXg7vUGypP/6AA+FsGEdPLoTNPPIjmHdIWDHgZJx3XPUb8wLxZw2ESUZk
 aXwwevaER5x8Of1P83Qng+6MHq5O9MGTUYBsEe5fHdNnffBpYKzidQpvtHIAOo+2I
 b59Ac3lGj3tupBcfLutLPiPmJ63xZCce+HWbpciOzMnxttXRpK4deiq4m3sxiPUhY
 2nILlVwefb4gKb8yoQ==
MIME-Version: 1.0
Message-ID: <trinity-179ed5e4-4dcd-4db4-b4ba-1abc2e0b7b81-1701700202450@3c-app-gmx-bs15>
From: Stefan K <Shadow_7@gmx.net>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 4 Dec 2023 15:30:02 +0100
In-Reply-To: <540a6eb1-4964-4281-a333-cf18f44ecac2@gmail.com>
References: <trinity-aa4ecf8b-1604-4eb3-b482-ee17d53c54a8-1701190767678@3c-app-gmx-bap02>
 <540a6eb1-4964-4281-a333-cf18f44ecac2@gmail.com>
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
To: printing-architecture@lists.linux-foundation.org
Cc: Till Kamppeter <till.kamppeter@gmail.com>

Hi Till,

I know it's nearly x-mas, but have you had time to look at this yet?

best regards
Stefan

> Gesendet: Dienstag, 28. November 2023 um 19:13 Uhr
> Von: "Till Kamppeter" <till.kamppeter@gmail.com>
> An: printing-architecture@lists.linux-foundation.org
> Betreff: Re: [Printing-architecture] high delay while printing
>
> On 28/11/2023 17:59, Stefan K wrote:
> > Hello guys,
> >
> > I hope someone can help me with my problem because I'm a little bit fr=
ustrated and I don't have absolutely no clue how to fix that.
> >
> > I have a Debian 12 based print server running, all printers are connec=
ted via IPP which works so far but it takes a while if we start printing m=
ultiple pages and then for each page, it takes >15s for the next page. It =
doesn't matter if we print PDF or simple text files.
> >
> > For me, it looks like that cups is waiting until the printer says "I'm=
 done". According to the Documentation I tried ?waitjob=3Dfalse&waitprinte=
r=3Dfalse at the end of the deviceURI and restart cups, but it's still the=
 same. This happens on different types of printers eg. HP PageWide Pro 477=
dw MFP or Kyocera TASKalfa 4052ci
> >
> > I can attach the error_log with debug information.
> >
>
> Please do so, and also attach the PPD file of the print queue (from
> /etc/cups/ppd/).
>
>     Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
