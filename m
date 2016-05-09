Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/mE/RWoDePlTzEEzwp6lMglgzOF21UhVQIk4CPbgu/w=;
	b=XIfZhLW5sbSqOGRTsTvBil9pFUGxCNmwNyr1oYYps26KKn/ym292Cs3cxPpbR4RYZC
	pL1O0oxszkGjwETSH8ZH83YzzXkQx8SExl+TQGu1vpc7VIi2AxUWzoGtYB9lMvFCoOhX
	os17kve2CMhI86s6XYXShOK2oGcawhJ7GnaMh+zRDi85RPa1D9seUi80XI8MvEA3djO4
	FNQoPsMkebohFr9LjF3vRp1QXM2BWdbldiIYf9VoR70Dl8qCkR3+kB2tfFBCy13GEicI
	s+qjxgl8SOmvTT9Etn3QqCyI2/2QuOcC5YuVimaYdXaLOAbZLLWOcMVIpNhnHa06VqC+
	732w==
MIME-Version: 1.0
In-Reply-To: <0E2B2CA4D522C14FBE8646D789EF72A01C54FD8C@IRSMSX103.ger.corp.intel.com>
References: <0E2B2CA4D522C14FBE8646D789EF72A01C53EB99@IRSMSX104.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041044230.19729@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54D6C1@IRSMSX103.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041524030.23023@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54EF76@IRSMSX103.ger.corp.intel.com>
	<alpine.LNX.2.00.1605091023180.24937@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54FD8C@IRSMSX103.ger.corp.intel.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Mon, 9 May 2016 06:54:00 -0400
Message-ID: <CAN40gStysaS6PjoE9zDrCchFDXvk7evfVc-euD0EaTn89Hamzw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113cf76865d066053266a1bd
Subject: Re: [Printing-architecture] snmp - average-toner-coverage per page
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Predut, Marius" <marius.predut@intel.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--001a113cf76865d066053266a1bd
Content-Type: text/plain; charset=UTF-8

Hi,

Speaking as the primary editor of IETF Printer MIB v2 (RFC 3805):

Counter units in the Printer MIB are determined by the implementation
and cannot be changed remotely.

Ever since IETF Printer MIB v1 (RFC 1759), it has been true that a given
Printer can update work counters whenever the implementation chooses
(for example, only at the completion of an entire job).  There has never
been a requirement that a Printer must update work counters at every
page.

Simply put - you can't get there from here.

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


On Mon, May 9, 2016 at 5:42 AM, Predut, Marius <marius.predut@intel.com>
wrote:

> > -----Original Message-----
> > From: Johannes Meixner [mailto:jsmeix@suse.de]
> > Sent: Monday, May 09, 2016 11:40 AM
> > To: Predut, Marius
> > Cc: printing-architecture@lists.linux-foundation.org
> > Subject: RE: [Printing-architecture] snmp - average-toner-coverage per
> page
> >
> >
> > Hello,
> >
> > On May 5 20:53 Predut, Marius wrote (excerpt):
> > >>>> 4. Get the PostScript stream while print job filtering
> > >>>>     and analyze it.
> > ...
> > > I don't have access to the document sent for print
> >
> > Then you cannot analyze the PostScript stream.
> >
> > > I need a solution to query the counter printer and compound somehow
> > > the wanted value (an estimate toner spent for page) For example if I
> > > know effective area printed on a page I can estimate the coverage
> > > percent.
> > > The printer  have an IP address.
> > >
> > > So, do you have/see other solution here ?
> >
> > I am afraid, I do not see another solution except to query the network
> > printer itself via SNMP.
> >
> > I think when you can only access a network printer itself, you can only
> query
> > its internal counters/values via SNMP.
> >
> > I do not know if usual network printers maintain an internal
> counter/value
> > that can be used to calculate the average toner-coverage per page.
> One idea can be to counts pixels on each page,
> divides pixel count by pixels possible on a page to give the percentage of
> coverage,
>  and keeps a rolling average percent weighted by area printed.
> But I don't know if SNMP can give me this counters.
> This printer RFC  https://tools.ietf.org/html/rfc3805
> Don't help me too much.
> (OIDS that can be interesting in this context : somehow this OIDS can be
> used : prtMarkerSuppliesGroup prtMarkerCounterUnit prtMarkerLifeCount
> But I don't know how to deal with)
> >
> > Only FYI:
> > For some possible issues that I noticed regarding SNMP with network
> > printers, you may have a look at
> > https://en.opensuse.org/SDB:Printer_Accounting
> >
> >
> > Kind Regards
> > Johannes Meixner
> > --
> > SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard, Graham Norton -
> > HRB 21284 (AG Nuernberg)
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--001a113cf76865d066053266a1bd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>Hi,=
<br><br></div>Speaking as the primary editor of IETF Printer MIB v2 (RFC 38=
05):<br><br></div>Counter units in the Printer MIB are determined by the im=
plementation<br></div>and cannot be changed remotely.<br><br></div>Ever sin=
ce IETF Printer MIB v1 (RFC 1759), it has been true that a given<br></div>P=
rinter can update work counters whenever the implementation chooses<br></di=
v>(for example, only at the completion of an entire job).=C2=A0 There has n=
ever<br></div>been a requirement that a Printer must update work counters a=
t every<br></div>page.<br><br></div>Simply put - you can&#39;t get there fr=
om here.<br><br></div>Cheers,<br></div>- Ira<br><br></div><div class=3D"gma=
il_extra"><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D=
"ltr">Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG Truste=
d Mobility Solutions WG<br>Chair - Linux Foundation Open Printing WG<br>Sec=
retary - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG Intern=
et Printing Protocol WG<br>IETF Designated Expert - IPP &amp; Printer MIB<b=
r>Blue Roof Music / High North Inc<br><a style=3D"color:rgb(51,51,255)" hre=
f=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blank">http://s=
ites.google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(102,0,204)"=
 href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank">http:=
//sites.google.com/site/highnorthinc</a><br>mailto: <a href=3D"mailto:bluer=
oofmusic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a><br>Winter=
=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-0094<br>Su=
mmer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434<br><b=
r><div style=3D"display:inline"></div><div style=3D"display:inline"></div><=
div style=3D"display:inline"></div><div></div><div></div><div></div><div></=
div></div></div></div>
<br><div class=3D"gmail_quote">On Mon, May 9, 2016 at 5:42 AM, Predut, Mari=
us <span dir=3D"ltr">&lt;<a href=3D"mailto:marius.predut@intel.com" target=
=3D"_blank">marius.predut@intel.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><span class=3D"">&gt; -----Original Message-----<br>
&gt; From: Johannes Meixner [mailto:<a href=3D"mailto:jsmeix@suse.de">jsmei=
x@suse.de</a>]<br>
</span><span class=3D"">&gt; Sent: Monday, May 09, 2016 11:40 AM<br>
&gt; To: Predut, Marius<br>
&gt; Cc: <a href=3D"mailto:printing-architecture@lists.linux-foundation.org=
">printing-architecture@lists.linux-foundation.org</a><br>
&gt; Subject: RE: [Printing-architecture] snmp - average-toner-coverage per=
 page<br>
&gt;<br>
&gt;<br>
</span><span class=3D"">&gt; Hello,<br>
&gt;<br>
&gt; On May 5 20:53 Predut, Marius wrote (excerpt):<br>
&gt; &gt;&gt;&gt;&gt; 4. Get the PostScript stream while print job filterin=
g<br>
&gt; &gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0and analyze it.<br>
&gt; ...<br>
&gt; &gt; I don&#39;t have access to the document sent for print<br>
&gt;<br>
&gt; Then you cannot analyze the PostScript stream.<br>
&gt;<br>
&gt; &gt; I need a solution to query the counter printer and compound someh=
ow<br>
&gt; &gt; the wanted value (an estimate toner spent for page) For example i=
f I<br>
&gt; &gt; know effective area printed on a page I can estimate the coverage=
<br>
&gt; &gt; percent.<br>
&gt; &gt; The printer=C2=A0 have an IP address.<br>
&gt; &gt;<br>
&gt; &gt; So, do you have/see other solution here ?<br>
&gt;<br>
&gt; I am afraid, I do not see another solution except to query the network=
<br>
&gt; printer itself via SNMP.<br>
&gt;<br>
&gt; I think when you can only access a network printer itself, you can onl=
y query<br>
&gt; its internal counters/values via SNMP.<br>
&gt;<br>
&gt; I do not know if usual network printers maintain an internal counter/v=
alue<br>
&gt; that can be used to calculate the average toner-coverage per page.<br>
</span>One idea can be to counts pixels on each page,<br>
divides pixel count by pixels possible on a page to give the percentage of =
coverage,<br>
=C2=A0and keeps a rolling average percent weighted by area printed.<br>
But I don&#39;t know if SNMP can give me this counters.<br>
This printer RFC=C2=A0 <a href=3D"https://tools.ietf.org/html/rfc3805" rel=
=3D"noreferrer" target=3D"_blank">https://tools.ietf.org/html/rfc3805</a><b=
r>
Don&#39;t help me too much.<br>
(OIDS that can be interesting in this context : somehow this OIDS can be us=
ed : prtMarkerSuppliesGroup prtMarkerCounterUnit prtMarkerLifeCount<br>
But I don&#39;t know how to deal with)<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt; Only FYI:<br>
&gt; For some possible issues that I noticed regarding SNMP with network<br=
>
&gt; printers, you may have a look at<br>
&gt; <a href=3D"https://en.opensuse.org/SDB:Printer_Accounting" rel=3D"nore=
ferrer" target=3D"_blank">https://en.opensuse.org/SDB:Printer_Accounting</a=
><br>
&gt;<br>
&gt;<br>
&gt; Kind Regards<br>
&gt; Johannes Meixner<br>
&gt; --<br>
&gt; SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard, Graham Norton=
 -<br>
&gt; HRB 21284 (AG Nuernberg)<br>
<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</div></div></blockquote></div><br></div>

--001a113cf76865d066053266a1bd--
