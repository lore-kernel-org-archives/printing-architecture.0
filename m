Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hM1DKwL++4f3tHd648uSN+dgTDttmA+usZAPmtPeswM=;
	b=xKyp0+8VDiDUAcyuZ4Nslu1ikTPsofDAcWJCsYjLPlrfJWyXj4CYIJijVa9WWE6HV+
	iHPd/0oSkQscRMQIBfYRqG7x2FYya0H8vfy2xyDTUHnp4f9aVoNpP7qP1QZCkuvZPM0h
	wNmbL1cTlqN9SY+tU26p5XUPsY2WpH4bwZklUKm5AFzs7T34xV+vmDpPgeVB1gVpnpRY
	VM9GhpFzmKOdCB9Ms1itv4xXSMBg5Ta9BWdnf5Hr75D1riZ1BUovjRe9n9Tu4rk5fivl
	hoxgtJZkX6HlHDHgAF7sS57gVkQqGlk3/URIGlxUPoSHfNHkQDbf8xBez3qQxM8y/0nb
	WGtg==
MIME-Version: 1.0
In-Reply-To: <554BEDA8.9080003@gmail.com>
References: <554BEDA8.9080003@gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Fri, 8 May 2015 11:17:52 -0400
Message-ID: <CAN40gStVzVQcR8QRUN-cb6KV9+g+ibp-0X_b0w9gJOTd7i6UZA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d0435c01867e3db0515938959
Subject: Re: [Printing-architecture] CUPS queues should emulate IPP
 Everywhere printers - First tests
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Michael R Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: Printing-architecture@lists.linux-foundation.org

--f46d0435c01867e3db0515938959
Content-Type: text/plain; charset=UTF-8

Hi Till,

You need to share issues directly with Mike Sweet - there's also an
issue tracker setup (I think?) already on the PWG website - you do
have to create an account, in order to report.

Mike - please take a look at Till's feedback.

Till - the actual proper test output file should be shared directly with
Mike.

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


On Thu, May 7, 2015 at 6:56 PM, Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Hi,
>
> on a Ubuntu Vivid (15.04) system I have done the PWG self certification
> tests according to the manual, applied to the local CUPS queues. I get a
> lot of FAILs.
>
> I simply shared all local queues via
>
> cupsctl --share-printers
>
> Then I determined the service names of the local queues by running
>
> sudo /usr/lib/cups/backend/dnssd
>
> giving the service names in its debug output.
>
> Now I have run The Bonjour and IPP tests with following observations:
>
> 1. Many FAILs. Where should I report them? CUPS bugs? CUPS mailing list?
> This mailing list?
>
> 2. The IPP test prints a JPG file. Isit required for an IPP Everywhere
> printer to print JPG? Is not PWG Raster the only required format?
>
> 3. The JPG file printed by the IPP test consumes a lot of ink. Can one not
> use a text page converted to JPG for this test?
>
> Already having the mentioned problems in the first two tests I skipped the
> document test.
>
>    Till
>
> P. S.: CUPS 2.0.2 has no everywhere directory, does this only appear in
> 2.1.x?
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--f46d0435c01867e3db0515938959
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Till,<br><br>You need to share issues directly with Mike Sweet - there&#=
39;s also an<br>issue tracker setup (I think?) already on the PWG website -=
 you do<br>have to create an account, in order to report.<br><br>Mike - ple=
ase take a look at Till&#39;s feedback.<br><br>Till - the actual proper tes=
t output file should be shared directly with<br>Mike.<br><br>Cheers,<br>- I=
ra<br><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr=
">Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG Trusted Mo=
bility Solutions WG<br>Chair - Linux Foundation Open Printing WG<br>Secreta=
ry - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG Internet P=
rinting Protocol WG<br>IETF Designated Expert - IPP &amp; Printer MIB<br>Bl=
ue Roof Music / High North Inc<br><a style=3D"color:rgb(51,51,255)" href=3D=
"http://sites.google.com/site/blueroofmusic" target=3D"_blank">http://sites=
.google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(102,0,204)" hre=
f=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank">http://si=
tes.google.com/site/highnorthinc</a><br>mailto: <a href=3D"mailto:blueroofm=
usic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a><br>Winter=C2=
=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-0094<br>Summe=
r=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434<br><br><=
div style=3D"display:inline"></div><div style=3D"display:inline"></div><div=
 style=3D"display:inline"></div><div></div><div></div><div></div><div></div=
></div></div></div>
<br><div class=3D"gmail_quote">On Thu, May 7, 2015 at 6:56 PM, Till Kamppet=
er <span dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter@gmail.com" target=
=3D"_blank">till.kamppeter@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">Hi,<br>
<br>
on a Ubuntu Vivid (15.04) system I have done the PWG self certification tes=
ts according to the manual, applied to the local CUPS queues. I get a lot o=
f FAILs.<br>
<br>
I simply shared all local queues via<br>
<br>
cupsctl --share-printers<br>
<br>
Then I determined the service names of the local queues by running<br>
<br>
sudo /usr/lib/cups/backend/dnssd<br>
<br>
giving the service names in its debug output.<br>
<br>
Now I have run The Bonjour and IPP tests with following observations:<br>
<br>
1. Many FAILs. Where should I report them? CUPS bugs? CUPS mailing list? Th=
is mailing list?<br>
<br>
2. The IPP test prints a JPG file. Isit required for an IPP Everywhere prin=
ter to print JPG? Is not PWG Raster the only required format?<br>
<br>
3. The JPG file printed by the IPP test consumes a lot of ink. Can one not =
use a text page converted to JPG for this test?<br>
<br>
Already having the mentioned problems in the first two tests I skipped the =
document test.<br>
<br>
=C2=A0 =C2=A0Till<br>
<br>
P. S.: CUPS 2.0.2 has no everywhere directory, does this only appear in 2.1=
.x?<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
</blockquote></div><br>

--f46d0435c01867e3db0515938959--
