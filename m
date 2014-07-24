Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=47wFBOK5Y9v8MdRN9eAcctbkU3g3NWoD2VwmAAZFBow=;
	b=Vac7r3CbEgCmNOFxBEGmPgnqKYN48GN8tI2lRtUALINsmBlQXwmsgMh2bpfuWIIDoz
	Z4m3yz437LwCCffjIDMKb6DFTdAgbwFFbHWozCqJw1O/PXurCk6dQpOB6EHi9zCH7Usi
	Y+NlaRGd0g5eGCUJBUPpTKOPIfl/03Jp3ouN27w9JRv36kprUUpB8qe3KBj39cSI0qmx
	SxFlCE2HtHCUk/Y14Z54ap7YpSVykG6/NP45OnLJIsR5LFJ6ontMYU7Xg6pS1U8nsG+y
	opOwYTRSURsQZzBr1fPOgtLmstoyoTgm08O8OuUZzI1IpH+jQ1+MowXEaHCKBcu44g8Y
	OUoQ==
MIME-Version: 1.0
In-Reply-To: <E7CD87FB-A00C-4674-A2B6-D561388F3502@apple.com>
References: <53CFCE94.8060605@gmail.com>
	<F1E13EA9-5DEE-4A3B-9E49-1BBD875C355E@apple.com>
	<CAN40gStkAXa9Yi8n_csS5UMprEK28j7bH3L=PexbwTQi+ECDuA@mail.gmail.com>
	<E7CD87FB-A00C-4674-A2B6-D561388F3502@apple.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 23 Jul 2014 22:10:17 -0400
Message-ID: <CAN40gSs6EgVk00nwS=XxLZ2xUVuh=R5ghks=vVDSLwt=MJG1CA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=485b397dd03d6f498204fee6f611
Subject: Re: [Printing-architecture] SLP (Service Location Protocol)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>, Pete Zannucci <pzaan@us.ibm.com>

--485b397dd03d6f498204fee6f611
Content-Type: text/plain; charset=UTF-8

Hi Mike,
O f course, you're right that DNS-SD won't wake up printers.

I agree that SLP without a DA shouldn't be used automatically.
It would wake up printers.

But the whole idea is  a spectrum of printer discovery:
a) DNS-SD;
b) SLP to a DA - found via DHCP option (RFC 2610) or SLP DA
broadcast advertising;
c) LDAP w/ Printer Schema, (RFC 3712).

If this doesn't work well in home networks, well it doesn't.  Then
you just use DNS-SD/Bonjour and live with the modest number
of discovered capabilities before direct contact with the Printer
during the Print client dialogue.

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



On Wed, Jul 23, 2014 at 8:42 PM, Michael Sweet <msweet@apple.com> wrote:

> Ira,
>
> On Jul 23, 2014, at 4:36 PM, Ira McDonald <blueroofmusic@gmail.com> wrote:
>
> ...
>
> (1) find Printers via DNS-SD / Bonjour (though this might wake up
> the Printers - BAD idea).
>
>
> Generally speaking, you only wake the printer if you resolve its address.
>
> ...
> Pete and Mike - does this seem like a viable middle ground to you,
> where the relevant network may not have an LDAP server?
>
>
> SLP should not be used automatically.  Doing SLP without a DA is terrible
> for the network.
>
> PS - Mike, I've found SLP support to be common in network Printers
> and also fairly common in small routers (like WiFi/ADSL ones).
>
>
> None of the consumer routers I've used support SLP out of the box.  I'm
> sure you could use OpenWRT or one of its forks to do so, but that isn't
> something most users will do.
>
>  _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>

--485b397dd03d6f498204fee6f611
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi Mike,<br>O f course, you&#39;r=
e right that DNS-SD won&#39;t wake up printers.<br></div><br>I agree that S=
LP without a DA shouldn&#39;t be used automatically.<br></div>It would wake=
 up printers.<br>

</div><br></div>But the whole idea is=C2=A0 a spectrum of printer discovery=
:<br>a) DNS-SD; <br>b) SLP to a DA - found via DHCP option (RFC 2610) or SL=
P DA<br>broadcast advertising;<br>c) LDAP w/ Printer Schema, (RFC 3712).<br=
>

<br></div><div>If this doesn&#39;t work well in home networks, well it does=
n&#39;t.=C2=A0 Then<br></div><div>you just use DNS-SD/Bonjour and live with=
 the modest number<br></div><div>of discovered capabilities before direct c=
ontact with the Printer<br>

</div><div>during the Print client dialogue.<br><br></div><div>Cheers,<br><=
/div><div>- Ira<br><br></div></div><div class=3D"gmail_extra"><br clear=3D"=
all"><div><div dir=3D"ltr">Ira McDonald (Musician / Software Architect)<br>=
Co-Chair - TCG Trusted Mobility Solutions WG<br>

Chair - Linux Foundation Open Printing WG<br>Secretary - IEEE-ISTO Printer =
Working Group<br>Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>=
IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High No=
rth Inc<br>

<a style=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blue=
roofmusic" target=3D"_blank">http://sites.google.com/site/blueroofmusic</a>=
<br><a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/=
highnorthinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</=
a><br>

mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluero=
ofmusic@gmail.com</a><br>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0=
 48176=C2=A0 734-944-0094<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI=
 49839=C2=A0 906-494-2434<br><br><div style=3D"display:inline">

</div><div style=3D"display:inline"></div><div style=3D"display:inline"></d=
iv><div></div><div></div><div></div><div></div></div></div>
<br><br><div class=3D"gmail_quote">On Wed, Jul 23, 2014 at 8:42 PM, Michael=
 Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@apple.com" target=3D"=
_blank">msweet@apple.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">

<div style=3D"word-wrap:break-word">Ira,<div><br><div><div>On Jul 23, 2014,=
 at 4:36 PM, Ira McDonald &lt;<a href=3D"mailto:blueroofmusic@gmail.com" ta=
rget=3D"_blank">blueroofmusic@gmail.com</a>&gt; wrote:</div><blockquote typ=
e=3D"cite">

<div dir=3D"ltr"><div><div><div><div><div><div>...</div></div></div></div><=
/div></div></div></blockquote><div class=3D""><blockquote type=3D"cite"><di=
v dir=3D"ltr"><div>(1) find Printers via DNS-SD / Bonjour (though this migh=
t wake up<br>

the Printers - BAD idea).<br></div></div></blockquote><div><br></div></div>=
Generally speaking, you only wake the printer if you resolve its address.</=
div><div><br><blockquote type=3D"cite"><div dir=3D"ltr"><div>...</div><div =
class=3D"">

<div>Pete and Mike - does this seem like a viable middle ground to you,<br>=
</div><div>where the relevant network may not have an LDAP server?<br></div=
></div></div></blockquote><div><br></div>SLP should not be used automatical=
ly. =C2=A0Doing SLP without a DA is terrible for the network.</div>

<div><div class=3D""><br><blockquote type=3D"cite"><div dir=3D"ltr">

<div>PS - Mike, I&#39;ve found SLP support to be common in network Printers=
 <br>and also fairly common in small routers (like WiFi/ADSL ones).<br></di=
v></div></blockquote><div><br></div></div>None of the consumer routers I&#3=
9;ve used support SLP out of the box. =C2=A0I&#39;m sure you could use Open=
WRT or one of its forks to do so, but that isn&#39;t something most users w=
ill do.</div>

<div class=3D""><div><br></div><div>
<span style=3D"border-collapse:separate;color:rgb(0,0,0);font-family:&#39;A=
ndale Mono&#39;;font-style:normal;font-variant:normal;font-weight:normal;le=
tter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px"><span style=3D=
"border-collapse:separate;color:rgb(0,0,0);font-family:&#39;Andale Mono&#39=
;;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:n=
ormal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px"><div style=3D"word-wrap:brea=
k-word">

_________________________________________________________<br>Michael Sweet,=
 Senior Printing System=C2=A0Engineer, PWG Chair</div></span></span>
</div>
<br></div></div></div></blockquote></div><br></div>

--485b397dd03d6f498204fee6f611--
