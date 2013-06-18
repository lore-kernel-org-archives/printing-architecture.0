Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nj7xGQIZWFcg3jA27dOqsEhjIMio9CkYOsTgRM32TSs=;
	b=PZt+0fHmAS4181XgAQiavf4kuPc1hwgQcNtHief1pG/03PzISsUEL3g1p51Dk7PsuC
	1PVGYWV9kpevj9OEaWglQr7NrCU/oAAzO3qoygXxvenQdmgnIAEV6N6Voq0hWMZSniP6
	7GYHCAdtq6V45RSddIZdtgTWzPfa5cAOnJjljcpaMAds9Ld8u9/tHD95KdezNaCeud6e
	wItRDUl80X46avuDdwbhvr1XAcJB1WK9vggYlDfk/WqABF+AOrHGoHQJq+knKz6j4X3I
	7pON5iGZn7ytadHwtsF+iXZEwYURBP4KMs0d8R58iVWuUubPF1MhCmhDpKuugkZ8CfPX
	JKdQ==
MIME-Version: 1.0
In-Reply-To: <m34ncw46lj.fsf@carbon.jhcloos.org>
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
Date: Mon, 17 Jun 2013 20:45:07 -0400
Message-ID: <CAN40gSva+8P8ha-ABh5exQfd5VDVsA7prxj0ct33J2t52rLHTA@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: multipart/alternative; boundary=089e014946b44fbbed04df63067d
Subject: Re: [Printing-architecture] On the Continued Need for PostScript
	Workflows
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: James Cloos <cloos@jhcloos.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--089e014946b44fbbed04df63067d
Content-Type: text/plain; charset=ISO-8859-1

Hi James,

I sympathize with your concerns, but...

(1) PostScript filters aren't going to be maintained in CUPS in the future
(as far as I know)

(2) PWG IPP Everywhere (the only open standard mobile printing protocol)
abandons PostScript entirely and requires PDF

(3) Of the recent printers that I'm aware of, more are supporting native PDF
than native PostScript

(4) PostScript is deservedly disliked by government standards agencies
around the world because of how easily it can be exploited for security
attacks

I agree that PostScript files won't go away, but they are being increasingly
converted at the *source* content provider to PDF for interoperability.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG IPP WG
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - TCG Embedded Systems Hardcopy SG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music/High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto:blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434



On Mon, Jun 17, 2013 at 8:14 PM, James Cloos <cloos@jhcloos.com> wrote:

> I've been trying for months to write a whitepaper on this subject, but
> haven't been comfortable with the tone I end up with.  This is getting
> more important, though.  So I'll try to be succinct, even if that might
> come off as blunt.  Apologies in advance for feather ruffling.
>
> *Any* conversion of PostScript into PDF in the print work flow -- ie, in
> the cups filters -- is broken and unacceptable.
>
> PostScript files exist; they do not magically disappear just because PDF
> is available.
>
> PostScript printers are still more common than PDF printers.  And they
> have *long* lifetimes.  (In the US, printers have a five-year depreci-
> ation schedule and one can expect a much longer service life.)
>
> When printing an existing ps file -- including when printing from
> programs which can generate ps but not pdf -- the postscript MUST be
> modified only by pstops when sending on to a ps printer, or MUST be
> rendered directly to a raster format when printing to printers which
> require raster input.
>
> Conversions can only cause damage.
>
> Artifex refuses to ensure that gs' pdfwriter generates device indepen-
> dent colour when given a source file with device independent colour
> (evidently it is a large job for which they do not have a paying
> customer).  Cf the relevant WONTFIXes.
>
> And it is not always even possible to convert jobs which use postscript
> as a language into equivilent PDF.  The formats are just too different.
>
> It is perfectly OK -- even welcome -- to prefer PDF when the original
> file is not already in a page description format or language.
>
> But the only molestation a postscript file should endure is that
> specified by the ppd and user-selected options.
>
> -JimC
> --
> James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--089e014946b44fbbed04df63067d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>Hi =
James,<br><br></div>I sympathize with your concerns, but...<br><br></div>(1=
) PostScript filters aren&#39;t going to be maintained in CUPS in the futur=
e<br>
</div>(as far as I know)<br><br></div>(2) PWG IPP Everywhere (the only open=
 standard mobile printing protocol)<br></div>abandons PostScript entirely a=
nd requires PDF<br><br></div>(3) Of the recent printers that I&#39;m aware =
of, more are supporting native PDF<br>
than native PostScript<br><br></div>(4) PostScript is deservedly disliked b=
y government standards agencies <br></div>around the world because of how e=
asily it can be exploited for security<br>attacks<br><br></div>I agree that=
 PostScript files won&#39;t go away, but they are being increasingly<br>
converted at the *source* content provider to PDF for interoperability.<br>=
<br></div>Cheers,<br></div>- Ira<br><br></div><div class=3D"gmail_extra"><b=
r clear=3D"all"><div>Ira McDonald (Musician / Software Architect)<br>Chair =
- Linux Foundation Open Printing WG<br>
Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG IPP=
 WG<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - TCG Embedded=
 Systems Hardcopy SG<br>IETF Designated Expert - IPP &amp; Printer MIB<br>
Blue Roof Music/High North Inc<br><a style=3D"color:rgb(51,51,255)" href=3D=
"http://sites.google.com/site/blueroofmusic" target=3D"_blank">http://sites=
.google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(102,0,204)" hre=
f=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank">http://si=
tes.google.com/site/highnorthinc</a><br>
mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroo=
fmusic@gmail.com</a><br>Winter=A0 579 Park Place=A0 Saline, MI=A0 48176=A0 =
734-944-0094<br>Summer=A0 PO Box 221=A0 Grand Marais, MI 49839=A0 906-494-2=
434<br><br><div style=3D"display:inline">
</div><div style=3D"display:inline"></div><div style=3D"display:inline"></d=
iv><div></div><div></div><div></div><div></div></div>
<br><br><div class=3D"gmail_quote">On Mon, Jun 17, 2013 at 8:14 PM, James C=
loos <span dir=3D"ltr">&lt;<a href=3D"mailto:cloos@jhcloos.com" target=3D"_=
blank">cloos@jhcloos.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
I&#39;ve been trying for months to write a whitepaper on this subject, but<=
br>
haven&#39;t been comfortable with the tone I end up with. =A0This is gettin=
g<br>
more important, though. =A0So I&#39;ll try to be succinct, even if that mig=
ht<br>
come off as blunt. =A0Apologies in advance for feather ruffling.<br>
<br>
*Any* conversion of PostScript into PDF in the print work flow -- ie, in<br=
>
the cups filters -- is broken and unacceptable.<br>
<br>
PostScript files exist; they do not magically disappear just because PDF<br=
>
is available.<br>
<br>
PostScript printers are still more common than PDF printers. =A0And they<br=
>
have *long* lifetimes. =A0(In the US, printers have a five-year depreci-<br=
>
ation schedule and one can expect a much longer service life.)<br>
<br>
When printing an existing ps file -- including when printing from<br>
programs which can generate ps but not pdf -- the postscript MUST be<br>
modified only by pstops when sending on to a ps printer, or MUST be<br>
rendered directly to a raster format when printing to printers which<br>
require raster input.<br>
<br>
Conversions can only cause damage.<br>
<br>
Artifex refuses to ensure that gs&#39; pdfwriter generates device indepen-<=
br>
dent colour when given a source file with device independent colour<br>
(evidently it is a large job for which they do not have a paying<br>
customer). =A0Cf the relevant WONTFIXes.<br>
<br>
And it is not always even possible to convert jobs which use postscript<br>
as a language into equivilent PDF. =A0The formats are just too different.<b=
r>
<br>
It is perfectly OK -- even welcome -- to prefer PDF when the original<br>
file is not already in a page description format or language.<br>
<br>
But the only molestation a postscript file should endure is that<br>
specified by the ppd and user-selected options.<br>
<br>
-JimC<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
James Cloos &lt;<a href=3D"mailto:cloos@jhcloos.com">cloos@jhcloos.com</a>&=
gt; =A0 =A0 =A0 =A0 OpenPGP: 1024D/ED7DAEA6<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
</font></span></blockquote></div><br></div>

--089e014946b44fbbed04df63067d--
