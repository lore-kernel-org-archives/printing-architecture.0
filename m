Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=cPHQCklf7rxIf5/mqbf8bRlLGnZk10JHoIDvTaG53X0=;
	b=dHKWe8zPjo+PUzaLJidGXZj66yx424/iPr6nqeu5LRMOLm+wKRS7V+P0DFtxBN6h9g
	RVBIT8U5xRAnd6vgw9ogLqVbRJmr3axEcAUGPQ2Yw7Kw3Sr7+96K50DLKfUiHK6eG3hv
	37hgNmDsd9B18r5CEoJ5FWguoTAzuLzoSsRjbC9zEmuiq0VQDpaaSYurnnyCC32NyKqL
	57HJTDTdKhJHqeu5tN4FR929drgjq5Py1v9TEaihMxlo95aAelQ1oOh2TX0YdQzC7vTy
	RlQ+7qTac+UoluG30kj6AwsL2CiIwiAZRKva6ZTriLmb78A2w2tHPWl5Ixg2AkHWrvnS
	C5wg==
MIME-Version: 1.0
In-Reply-To: <F1E13EA9-5DEE-4A3B-9E49-1BBD875C355E@apple.com>
References: <53CFCE94.8060605@gmail.com>
	<F1E13EA9-5DEE-4A3B-9E49-1BBD875C355E@apple.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 23 Jul 2014 16:36:31 -0400
Message-ID: <CAN40gStkAXa9Yi8n_csS5UMprEK28j7bH3L=PexbwTQi+ECDuA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf303ea614cde76f04fee24c50
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
To: Michael Sweet <msweet@apple.com>, Pete Zannucci <pzaan@us.ibm.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

--20cf303ea614cde76f04fee24c50
Content-Type: text/plain; charset=UTF-8

Hi,

Thanks Pete and Mike for clear answers Till's questions.

Because SLP will indeed wake the Printer up (just like any SNMP or
IPP query will), there needs to be an SLP Directory Agent on the
relevant network/subnet and the Printers need to advertise to the
SLP DA.

Then the CUPS browse daemon can:

(1) find Printers via DNS-SD / Bonjour (though this might wake up
the Printers - BAD idea).

(2) find and query the SLP DA to discover a list of Printers with all
of their SLP advertised capabilities (about 30 attributes - same ones
as the LDAP Printer schema - I wrote them both).

The print client can choose a Printer (from the combined Bonjour
and SLP discovery) and *then* use IPP to wake up the Printer and
read more capabilities and constraints for a rich print job submission
GUI.

Pete and Mike - does this seem like a viable middle ground to you,
where the relevant network may not have an LDAP server?

Cheers,
- Ira

PS - Mike, I've found SLP support to be common in network Printers
and also fairly common in small routers (like WiFi/ADSL ones).


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



On Wed, Jul 23, 2014 at 4:15 PM, Michael Sweet <msweet@apple.com> wrote:

> Till,
>
> On Jul 23, 2014, at 11:02 AM, Till Kamppeter <till.kamppeter@gmail.com>
> wrote:
> > Hi,
> >
> > as talked about in the last OP conference call I want to make use of SLP
> > to discover printers in the network and especially to discover their
> > capabilities. Unfortunately documentation about using SLP, especially
> > with Ubuntu Linux, on the internet is sparse.
> >
> > I want to let cups-browsed do this automatically, so that I can set up
> > driver-less print queues for printers with known languages (PDF,
> > PostScript, PCL, ...) but without polling the printer directly to not
> > wake up the printer from power save mode.
>
> SLP is a pretty active protocol, even when a Directory Agent is used, so I
> would be surprised if you'll be able to do discovery without waking up the
> printer.
>
> > What I would like to know is:
> >
> > 1. How do I scan the network for SLP services without knowing service
> > names and types and without knowing which hosts in the network provide
> > services or are SLP directory agents?
>
> slpd handles the latter for you; you'll want to look for the standard SLP
> printer service type - the old CUPS code prior to 1.6 mostly did that.
>
> > 2. In a typical SoHo network, are there SLP services or directory
> > agents?
>
> No.
>
> > Are the usual SoHo routers directory agents?
>
> No.
>
> > Or do I need to
> > to run an SLP server daemon on the local machine to be able to make use
> > of SLP?
>
> You don't need one on the local machine, but you *do* need to have one on
> the network to make SLP practical.
>
> > 3. How can I test my environment with command line tools?
>
> slptool can probably be used to find specific attributes.
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--20cf303ea614cde76f04fee24c50
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>Thanks Pete=
 and Mike for clear answers Till&#39;s questions.<br><br></div>Because SLP =
will indeed wake the Printer up (just like any SNMP or<br></div>IPP query w=
ill), there needs to be an SLP Directory Agent on the<br>

relevant network/subnet and the Printers need to advertise to the<br></div>=
SLP DA.<br><br></div>Then the CUPS browse daemon can:<br><br>(1) find Print=
ers via DNS-SD / Bonjour (though this might wake up<br>the Printers - BAD i=
dea).<br>

<br>(2) find and query the SLP DA to discover a list of Printers with all<b=
r>of their SLP advertised capabilities (about 30 attributes - same ones<br>=
as the LDAP Printer schema - I wrote them both).<br></div><div><br></div>

<div>The print client can choose a Printer (from the combined Bonjour<br>an=
d SLP discovery) and *then* use IPP to wake up the Printer and <br>read mor=
e capabilities and constraints for a rich print job submission <br></div>

<div>GUI.<br><br></div><div>Pete and Mike - does this seem like a viable mi=
ddle ground to you,<br></div><div>where the relevant network may not have a=
n LDAP server?<br><br></div><div>Cheers,<br></div><div>- Ira<br><br></div>

<div>PS - Mike, I&#39;ve found SLP support to be common in network Printers=
 <br>and also fairly common in small routers (like WiFi/ADSL ones).<br><br>=
</div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"l=
tr">

Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG Trusted Mobi=
lity Solutions WG<br>Chair - Linux Foundation Open Printing WG<br>Secretary=
 - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG Internet Pri=
nting Protocol WG<br>

IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High No=
rth Inc<br><a style=3D"color:rgb(51,51,255)" href=3D"http://sites.google.co=
m/site/blueroofmusic" target=3D"_blank">http://sites.google.com/site/bluero=
ofmusic</a><br>

<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blue=
roofmusic@gmail.com</a><br>

Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-0094=
<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434=
<br><br><div style=3D"display:inline"></div><div style=3D"display:inline"><=
/div><div style=3D"display:inline"></div>

<div></div><div></div><div></div><div></div></div></div>
<br><br><div class=3D"gmail_quote">On Wed, Jul 23, 2014 at 4:15 PM, Michael=
 Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@apple.com" target=3D"=
_blank">msweet@apple.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">

Till,<br>
<div class=3D""><br>
On Jul 23, 2014, at 11:02 AM, Till Kamppeter &lt;<a href=3D"mailto:till.kam=
ppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; as talked about in the last OP conference call I want to make use of S=
LP<br>
&gt; to discover printers in the network and especially to discover their<b=
r>
&gt; capabilities. Unfortunately documentation about using SLP, especially<=
br>
&gt; with Ubuntu Linux, on the internet is sparse.<br>
&gt;<br>
&gt; I want to let cups-browsed do this automatically, so that I can set up=
<br>
&gt; driver-less print queues for printers with known languages (PDF,<br>
&gt; PostScript, PCL, ...) but without polling the printer directly to not<=
br>
&gt; wake up the printer from power save mode.<br>
<br>
</div>SLP is a pretty active protocol, even when a Directory Agent is used,=
 so I would be surprised if you&#39;ll be able to do discovery without waki=
ng up the printer.<br>
<div class=3D""><br>
&gt; What I would like to know is:<br>
&gt;<br>
&gt; 1. How do I scan the network for SLP services without knowing service<=
br>
&gt; names and types and without knowing which hosts in the network provide=
<br>
&gt; services or are SLP directory agents?<br>
<br>
</div>slpd handles the latter for you; you&#39;ll want to look for the stan=
dard SLP printer service type - the old CUPS code prior to 1.6 mostly did t=
hat.<br>
<div class=3D""><br>
&gt; 2. In a typical SoHo network, are there SLP services or directory<br>
&gt; agents?<br>
<br>
</div>No.<br>
<div class=3D""><br>
&gt; Are the usual SoHo routers directory agents?<br>
<br>
</div>No.<br>
<div class=3D""><br>
&gt; Or do I need to<br>
&gt; to run an SLP server daemon on the local machine to be able to make us=
e<br>
&gt; of SLP?<br>
<br>
</div>You don&#39;t need one on the local machine, but you *do* need to hav=
e one on the network to make SLP practical.<br>
<div class=3D""><br>
&gt; 3. How can I test my environment with command line tools?<br>
<br>
</div>slptool can probably be used to find specific attributes.<br>
<br>
_________________________________________________________<br>
Michael Sweet, Senior Printing System Engineer, PWG Chair<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
</div></div></blockquote></div><br></div>

--20cf303ea614cde76f04fee24c50--
