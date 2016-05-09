Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=R5KzlZbn7BCcyjJzGbC0rBDEo3y1qFlh5IYYJjMcbhY=;
	b=bAsLvQi4/Fuo8CyDMQewj/I0MTHLA5R1z6XFuXIuR7sy0Chj97/wCewCUdey/fgStE
	55dzTFZmUrPuI0v01q7AgqpStm42OB8ZtwG1b19SPJtiWgWby+s9PQ3bpgc7ZTT04q3w
	lp/URvA974KZsD/maixC6jr2jO5eH9QzS2og4jn1J7X/0hDqdIsH3yOZOlPfcjPud2Ro
	3OayYwY7AFzmEP+fyq9NSCL06RKIzjbi/2AP2znkxKOMjQ80B1gdwikYDNI2hfFtrRSR
	P0Wh+DzCe/D1S25JismxpqhhSZow3XmpsFDAoEYUhcgT2kEiEkWJw34Dzfg08fpJ8oBC
	Yzcg==
MIME-Version: 1.0
In-Reply-To: <0E2B2CA4D522C14FBE8646D789EF72A01C54FE44@IRSMSX103.ger.corp.intel.com>
References: <0E2B2CA4D522C14FBE8646D789EF72A01C53EB99@IRSMSX104.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041044230.19729@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54D6C1@IRSMSX103.ger.corp.intel.com>
	<alpine.LNX.2.00.1605041524030.23023@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54EF76@IRSMSX103.ger.corp.intel.com>
	<alpine.LNX.2.00.1605091023180.24937@nelson.suse.de>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54FD8C@IRSMSX103.ger.corp.intel.com>
	<CAN40gStysaS6PjoE9zDrCchFDXvk7evfVc-euD0EaTn89Hamzw@mail.gmail.com>
	<0E2B2CA4D522C14FBE8646D789EF72A01C54FE44@IRSMSX103.ger.corp.intel.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Mon, 9 May 2016 07:49:58 -0400
Message-ID: <CAN40gSuZPQv3furaXZveYhmjs+Hf3twFOqyRC22+P6z3LVk1wA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c09b1949903ef05326769d7
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

--94eb2c09b1949903ef05326769d7
Content-Type: text/plain; charset=UTF-8

Hi Marius,

If the printer supports IPP (Internet Printing Protocol) - over 99% of all
new
network printers do so - then it's a security violation to retrieve the
document
content from the printer.  But neither IPP nor the standard PWG Counter MIB
will let you determine coverage for an individual print job.

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


On Mon, May 9, 2016 at 7:31 AM, Predut, Marius <marius.predut@intel.com>
wrote:

> Hi Ira,
>
>
>
> Hmm . thanks for this clarification :
>
> Also I supposed  getting the printing stream directly from printer by
> PLC/PJL or SNMP or other channel is not possible.
>
> But some counters that refer to the effective area printed can be queried
> somehow?
>
>
>
> Thanks
>
> marius
>
>
>
> *From:* Ira McDonald [mailto:blueroofmusic@gmail.com]
> *Sent:* Monday, May 09, 2016 1:54 PM
> *To:* Predut, Marius; Ira McDonald
> *Cc:* Johannes Meixner; printing-architecture@lists.linux-foundation.org
> *Subject:* Re: [Printing-architecture] snmp - average-toner-coverage per
> page
>
>
>
> Hi,
>
> Speaking as the primary editor of IETF Printer MIB v2 (RFC 3805):
>
> Counter units in the Printer MIB are determined by the implementation
>
> and cannot be changed remotely.
>
> Ever since IETF Printer MIB v1 (RFC 1759), it has been true that a given
>
> Printer can update work counters whenever the implementation chooses
>
> (for example, only at the completion of an entire job).  There has never
>
> been a requirement that a Printer must update work counters at every
>
> page.
>
> Simply put - you can't get there from here.
>
> Cheers,
>
> - Ira
>
>
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>
>
>
> On Mon, May 9, 2016 at 5:42 AM, Predut, Marius <marius.predut@intel.com>
> wrote:
>
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
>
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
>
>

--94eb2c09b1949903ef05326769d7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi Marius,<br><br></div>If t=
he printer supports IPP (Internet Printing Protocol) - over 99% of all new<=
br></div>network printers do so - then it&#39;s a security violation to ret=
rieve the document<br></div>content from the printer.=C2=A0 But neither IPP=
 nor the standard PWG Counter MIB <br></div>will let you determine coverage=
 for an individual print job.<br><br></div>Cheers,<br></div>- Ira<br><br></=
div><div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_s=
ignature"><div dir=3D"ltr">Ira McDonald (Musician / Software Architect)<br>=
Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - Linux Foundation Op=
en Printing WG<br>Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair -=
 IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated Expert - IP=
P &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a style=3D"colo=
r:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" targe=
t=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br><a style=3D"=
color:rgb(102,0,204)" href=3D"http://sites.google.com/site/highnorthinc" ta=
rget=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>mailto: <a=
 href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroofmusic@gm=
ail.com</a><br>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=
=A0 734-944-0094<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=
=A0 906-494-2434<br><br><div style=3D"display:inline"></div><div style=3D"d=
isplay:inline"></div><div style=3D"display:inline"></div><div></div><div></=
div><div></div><div></div></div></div></div>
<br><div class=3D"gmail_quote">On Mon, May 9, 2016 at 7:31 AM, Predut, Mari=
us <span dir=3D"ltr">&lt;<a href=3D"mailto:marius.predut@intel.com" target=
=3D"_blank">marius.predut@intel.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hi Ira,<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Hmm . thanks for this cla=
rification :<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Also I supposed =C2=A0get=
ting the printing stream directly from printer by PLC/PJL or SNMP or other =
channel is not possible.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">But some counters that re=
fer to the effective area printed can be queried somehow?<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Thanks<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">marius<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=A0<u></u></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><a name=3D"m_5251785071555810555______replyseparator=
"></a><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Ira McDonald [mailto:<a h=
ref=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroofmusic@gmai=
l.com</a>]
<br>
<b>Sent:</b> Monday, May 09, 2016 1:54 PM<br>
<b>To:</b> Predut, Marius; Ira McDonald<br>
<b>Cc:</b> Johannes Meixner; <a href=3D"mailto:printing-architecture@lists.=
linux-foundation.org" target=3D"_blank">printing-architecture@lists.linux-f=
oundation.org</a><br>
<b>Subject:</b> Re: [Printing-architecture] snmp - average-toner-coverage p=
er page<u></u><u></u></span></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi,<u></u><u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Speaking as the prima=
ry editor of IETF Printer MIB v2 (RFC 3805):<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Counter units in the Printer MIB are determined by t=
he implementation<u></u><u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">and cannot be changed=
 remotely.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Ever since IETF Printer MIB v1 (RFC 1759), it has be=
en true that a given<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Printer can update work counters whenever the implem=
entation chooses<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">(for example, only at the completion of an entire jo=
b).=C2=A0 There has never<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">been a requirement that a Printer must update work c=
ounters at every<u></u><u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">page.<u></u><u></u></=
p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Simply put - you can&=
#39;t get there from here.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">Cheers,<u></u><u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">- Ira<u></u><u></u></=
p>
</div>
<div>
<p class=3D"MsoNormal"><br clear=3D"all">
<u></u><u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Ira McDonald (Musicia=
n / Software Architect)<br>
Co-Chair - TCG Trusted Mobility Solutions WG<br>
Chair - Linux Foundation Open Printing WG<br>
Secretary - IEEE-ISTO Printer Working Group<br>
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>
IETF Designated Expert - IPP &amp; Printer MIB<br>
Blue Roof Music / High North Inc<br>
<a href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blank"><s=
pan style=3D"color:#3333ff">http://sites.google.com/site/blueroofmusic</spa=
n></a><br>
<a href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank"><sp=
an style=3D"color:#6600cc">http://sites.google.com/site/highnorthinc</span>=
</a><br>
mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluero=
ofmusic@gmail.com</a><br>
Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 <a href=3D"t=
el:734-944-0094" value=3D"+17349440094" target=3D"_blank">734-944-0094</a><=
br>
Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 <a href=3D"tel:9=
06-494-2434" value=3D"+19064942434" target=3D"_blank">906-494-2434</a><u></=
u><u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Mon, May 9, 2016 at 5:42 AM, Predut, Marius &lt;<=
a href=3D"mailto:marius.predut@intel.com" target=3D"_blank">marius.predut@i=
ntel.com</a>&gt; wrote:<u></u><u></u></p>
<p class=3D"MsoNormal">&gt; -----Original Message-----<br>
&gt; From: Johannes Meixner [mailto:<a href=3D"mailto:jsmeix@suse.de" targe=
t=3D"_blank">jsmeix@suse.de</a>]<br>
&gt; Sent: Monday, May 09, 2016 11:40 AM<br>
&gt; To: Predut, Marius<br>
&gt; Cc: <a href=3D"mailto:printing-architecture@lists.linux-foundation.org=
" target=3D"_blank">printing-architecture@lists.linux-foundation.org</a><br=
>
&gt; Subject: RE: [Printing-architecture] snmp - average-toner-coverage per=
 page<br>
&gt;<br>
&gt;<br>
&gt; Hello,<br>
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
One idea can be to counts pixels on each page,<br>
divides pixel count by pixels possible on a page to give the percentage of =
coverage,<br>
=C2=A0and keeps a rolling average percent weighted by area printed.<br>
But I don&#39;t know if SNMP can give me this counters.<br>
This printer RFC=C2=A0 <a href=3D"https://tools.ietf.org/html/rfc3805" targ=
et=3D"_blank">https://tools.ietf.org/html/rfc3805</a><br>
Don&#39;t help me too much.<br>
(OIDS that can be interesting in this context : somehow this OIDS can be us=
ed : prtMarkerSuppliesGroup prtMarkerCounterUnit prtMarkerLifeCount<br>
But I don&#39;t know how to deal with)<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">&gt;<br>
&gt; Only FYI:<br>
&gt; For some possible issues that I noticed regarding SNMP with network<br=
>
&gt; printers, you may have a look at<br>
&gt; <a href=3D"https://en.opensuse.org/SDB:Printer_Accounting" target=3D"_=
blank">https://en.opensuse.org/SDB:Printer_Accounting</a><br>
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
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><u></u><u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--94eb2c09b1949903ef05326769d7--
