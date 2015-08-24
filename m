Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=fEqf+JdcZU12BiH47ewDd2VGNFS/unJvSwgF5Ty0wOE=;
	b=Mrm5mYsggp2X2kPE8tfGf+10e+ay3J7Xp1qWK9pqi43ac4pS2yz4D9aEOX/Yn6QfP5
	WzH/d2JncpwHx1u9otUYzzLJnCnCK74DPtGKxRIvYBfU7My2fwvZHJGGDi0073fcaUT2
	NXvVWKIGlVexs+pYHacwTiOFtC19O5GHRaYFDGEj69P++rM8bO1InPDSI5ydJb0uSKgD
	pZPoP8f0sXgaR5LvKMVuC3t85/iNZpwC/knWYoqDQZUkCi3lUqjq7mzi3+q5E3EmHNsX
	7GZE7IXPinYUVaafqzEVeP+yHkquRiA9NVtUoatUAwsR3O6OkVWn6MacWdJPIIf5De9A
	mDjQ==
MIME-Version: 1.0
In-Reply-To: <CA+3RNfipMp+TTLyfTGiSUGS1UAsFUPw8dOJbA7yOKTGbpn7YgQ@mail.gmail.com>
References: <CA+3RNfipMp+TTLyfTGiSUGS1UAsFUPw8dOJbA7yOKTGbpn7YgQ@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Mon, 24 Aug 2015 11:36:58 -0400
Message-ID: <CAN40gSsYjD_jZGDvY+ZjV5gwcE1FqSxRgmkzaghVnbw_ydczKg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e01184b0c80a148051e1064a8
Subject: Re: [Printing-architecture] PDF workflow, cupsaddsmb,
	and Windows clients
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>, "Kennedy, Smith (Wireless Architect)" <smith.kennedy@hp.com>, Michael R Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--089e01184b0c80a148051e1064a8
Content-Type: text/plain; charset=UTF-8

Hi Alex,

I've copied Mike Sweet (Apple, CUPS) and Smith Kennedy (HP, all things
printing-related) on this reply.  I hope they can reply with more detail
about
Windows printing.

But I'd like to point out that CUPS PPD API was deprecated in CUPS 1.6
and PPDs in general are deprecated legacy in CUPS 2.0.  PDF workflow
in Linux, UNIX, and elsewhere is based on generic print clients using direct
printer queries for printer capabilities and current defaults (IPP
Everywhere).

PPD-based printing solutions are destined to disappear in the future.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music / High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto: blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434


On Mon, Aug 24, 2015 at 10:56 AM, Alex Korobkin <korobkin+op@gmail.com>
wrote:

> Hi all,
>
> Is there any adoption of PDF workflow in the Windows world?
> I used to have a setup like this:
> PostScript-based printers on CUPS are exported to Windows clients with
> cupsaddsmb, and happy Windows clients just point and print easily.
>
> How that I'm trying to switch my PPDs to PDF-based ones (written with PJL
> commands), this setup no longer works.
>
> Is there a solution better than uploading a manufacturer-provided driver
> for each printer? Ideally, something as automatic as current
> cupsui6/cupsps6.dll is, one that could take a PJL-based driver and build a
> UI around it to show to a Windows client?
>
> --
> -Alex
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
>

--089e01184b0c80a148051e1064a8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hi Alex,<br><br></=
div>I&#39;ve copied Mike Sweet (Apple, CUPS) and Smith Kennedy (HP, all thi=
ngs<br></div>printing-related) on this reply.=C2=A0 I hope they can reply w=
ith more detail about<br></div>Windows printing.<br><br></div>But I&#39;d l=
ike to point out that CUPS PPD API was deprecated in CUPS 1.6<br></div>and =
PPDs in general are deprecated legacy in CUPS 2.0.=C2=A0 PDF workflow<br>in=
 Linux, UNIX, and elsewhere is based on generic print clients using direct<=
br>printer queries for printer capabilities and current defaults (IPP Every=
where).<br><br></div>PPD-based printing solutions are destined to disappear=
 in the future.<br><br></div>Cheers,<br></div>- Ira<br><br></div><div class=
=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signature"><div=
 dir=3D"ltr">Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG=
 Trusted Mobility Solutions WG<br>Chair - Linux Foundation Open Printing WG=
<br>Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG=
 Internet Printing Protocol WG<br>IETF Designated Expert - IPP &amp; Printe=
r MIB<br>Blue Roof Music / High North Inc<br><a style=3D"color:rgb(51,51,25=
5)" href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blank">h=
ttp://sites.google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(102,=
0,204)" href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank=
">http://sites.google.com/site/highnorthinc</a><br>mailto: <a href=3D"mailt=
o:blueroofmusic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a><br=
>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-009=
4<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-243=
4<br><br><div style=3D"display:inline"></div><div style=3D"display:inline">=
</div><div style=3D"display:inline"></div><div></div><div></div><div></div>=
<div></div></div></div></div>
<br><div class=3D"gmail_quote">On Mon, Aug 24, 2015 at 10:56 AM, Alex Korob=
kin <span dir=3D"ltr">&lt;<a href=3D"mailto:korobkin+op@gmail.com" target=
=3D"_blank">korobkin+op@gmail.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"ltr">Hi all,=C2=A0<div><br></div><div>Is there a=
ny adoption of PDF workflow in the Windows world?=C2=A0</div><div>I used to=
 have a setup like this:=C2=A0</div><div>PostScript-based printers on CUPS =
are exported to Windows clients with cupsaddsmb, and happy Windows clients =
just point and print easily.=C2=A0</div><div><br></div><div>How that I&#39;=
m trying to switch my PPDs to PDF-based ones (written with PJL commands), t=
his setup no longer works.=C2=A0</div><div><br></div><div>Is there a soluti=
on better than uploading a manufacturer-provided driver for each printer? I=
deally, something as automatic as current cupsui6/cupsps6.dll is, one that =
could take a PJL-based driver and build a UI around it to show to a Windows=
 client?</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><div><br>=
</div>-- <br><div><div dir=3D"ltr">-Alex</div></div>
</div></font></span></div>
<br>_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
<br></blockquote></div><br></div>

--089e01184b0c80a148051e1064a8--
