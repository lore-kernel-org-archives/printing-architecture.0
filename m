MIME-Version: 1.0
In-Reply-To: <4E4A9179.9040900@gmail.com>
References: <CAN40gSvhq3mPVfDg3teNxQ9WcuBfKmBLyp5KbUXcm-CncN7T1A@mail.gmail.com>
	<4E4A9179.9040900@gmail.com>
Date: Tue, 16 Aug 2011 10:42:24 -0600
Message-ID: <CAGC3nLCoLcy5adH+ox8TNLCpzH+6FPKKoAwkFDMV=HGKE0a0OA@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: multipart/alternative; boundary=90e6ba3fd20976ae3d04aaa2106f
Subject: Re: [Printing-architecture] IN 10 MINUTES: OP US/Europe - Tuesday
 16 August 2011
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

--90e6ba3fd20976ae3d04aaa2106f
Content-Type: text/plain; charset=UTF-8

Speed difference of sqlite vs xml backed foomatic-db-engine

Overview steps:
ppdfile list with xml backend 9s
ppdfile list with sqlite 3s

Generate ppd:
./foomatic-ppdfile -p Xerox-WorkCentre_PE120 -d pxlmono with xml 1.33s
./foomatic-ppdfile -p Xerox-WorkCentre_PE120 -d pxlmono with sqlite 0.23s

Daniel

2011/8/16 Till Kamppeter <till.kamppeter@gmail.com>

> Reminder for our phone meeting.
>
>    Till
>
> On 08/12/2011 11:42 PM, Ira McDonald wrote:
> > Hi,
> >
> > Our OP meeting will be *next* week on Tuesday 16 August
> > - changed from earlier notes this week.
> >
> >
> > Agenda:
> >
> > (1) Status of Common Printing Dialog (Till Kamppeter)
> >
> > (2) Status of independent JTAPI project (Glen Petrie)
> >
> > (3) Status of GSoC Foomatic project (Daniel Dressler)
> >
> > (5) Status of other GSoC projects (Till Kamppeter)
> >
> > (6) Brainstorm new OP projects with low barriers to entry (All)
> >
> > (7) PWG Highlights for Open Printing (Ira McDonald)
> >       (a) IPP JPS3 adding support for client UI localization
> >       - new URIs for standard and vendor extension message catalogs
> >         added for IPP Everywhere printers
> >
> >       (b) PWG Print Job Ticket Semantic Model
> >       - new spec to go with existing XML schema in PWG SM/2.0
> >
> >       (c) Mapping of PWG Job Ticket to/from XPS, PPD, JDF
> >       - builds on JTAPI IPP-to-JDF and CUPS IPP-to-PPD mappings
> >       - design target is simple subset for Cloud Print use cases
> >
> >
> > Dial-in information:
> >
> > August 2011 - US/Europe - OP Monthly Meeting
> >      - Note - moved to Tuesday from Wednesday as one-time change
> >
> >      - Tuesday 16 August 2011, Daytime
> >        - US
> >          9am in San Francisco - US PDT (Pacific Daylight Time)
> >          10am in Colorado - US MDT (Mountain Daylight Time)
> >          11am in Chicago - US CDT (Central Daylight Time)
> >          12pm in New York - US EDT (Eastern Daylight Time)
> >        - Europe
> >          6pm in Berlin - CEST (Central European Summer Time)
> >
> >      * Main Number (Till Kamppeter, LF, leader)
> >        International: +1-218-936-7999 <tel:%2B1-218-936-7999>
> >        Access Code:   491659#
> >
> >
> > Cheers,
> > - Ira
> >
> >
> > Ira McDonald (Musician / Software Architect)
> > Chair - Linux Foundation Open Printing WG
> > Co-Chair - IEEE-ISTO PWG IPP WG
> > Chair - TCG Embedded Systems Hardcopy SWG
> > IETF Designated Expert - IPP & Printer MIB
> > Blue Roof Music/High North Inc
> > http://sites.google.com/site/blueroofmusic
> > http://sites.google.com/site/highnorthinc
> > mailto:blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
> > Christmas through April:
> >    579 Park Place  Saline, MI  48176
> >    734-944-0094
> > May to Christmas:
> >    PO Box 221  Grand Marais, MI 49839
> >    906-494-2434
> >
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
>

--90e6ba3fd20976ae3d04aaa2106f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Speed difference of sqlite vs xml backed foomatic-db-engine<br><br>Overview=
 steps:<br>ppdfile list with xml backend 9s<br>ppdfile list with sqlite 3s<=
br><br>Generate ppd:<br>./foomatic-ppdfile -p Xerox-WorkCentre_PE120 -d pxl=
mono with xml 1.33s<br>
./foomatic-ppdfile -p Xerox-WorkCentre_PE120 -d pxlmono with sqlite 0.23s<b=
r><br>Daniel<br><br><div class=3D"gmail_quote">2011/8/16 Till Kamppeter <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter@gmail.com">till.kamppet=
er@gmail.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Reminder for our phone meeting.<br>
<br>
 =C2=A0 =C2=A0Till<br>
<br>
On 08/12/2011 11:42 PM, Ira McDonald wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; Our OP meeting will be *next* week on Tuesday 16 August<br>
&gt; - changed from earlier notes this week.<br>
&gt;<br>
&gt;<br>
&gt; Agenda:<br>
&gt;<br>
&gt; (1) Status of Common Printing Dialog (Till Kamppeter)<br>
&gt;<br>
&gt; (2) Status of independent JTAPI project (Glen Petrie)<br>
&gt;<br>
&gt; (3) Status of GSoC Foomatic project (Daniel Dressler)<br>
&gt;<br>
&gt; (5) Status of other GSoC projects (Till Kamppeter)<br>
&gt;<br>
&gt; (6) Brainstorm new OP projects with low barriers to entry (All)<br>
&gt;<br>
&gt; (7) PWG Highlights for Open Printing (Ira McDonald)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 (a) IPP JPS3 adding support for client UI localiz=
ation<br>
&gt; =C2=A0 =C2=A0 =C2=A0 - new URIs for standard and vendor extension mess=
age catalogs<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 added for IPP Everywhere printers<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 (b) PWG Print Job Ticket Semantic Model<br>
&gt; =C2=A0 =C2=A0 =C2=A0 - new spec to go with existing XML schema in PWG =
SM/2.0<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 (c) Mapping of PWG Job Ticket to/from XPS, PPD, J=
DF<br>
&gt; =C2=A0 =C2=A0 =C2=A0 - builds on JTAPI IPP-to-JDF and CUPS IPP-to-PPD =
mappings<br>
&gt; =C2=A0 =C2=A0 =C2=A0 - design target is simple subset for Cloud Print =
use cases<br>
&gt;<br>
&gt;<br>
&gt; Dial-in information:<br>
&gt;<br>
&gt; August 2011 - US/Europe - OP Monthly Meeting<br>
&gt; =C2=A0 =C2=A0 =C2=A0- Note - moved to Tuesday from Wednesday as one-ti=
me change<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0- Tuesday 16 August 2011, Daytime<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0- US<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A09am in San Francisco - US PDT (Pacif=
ic Daylight Time)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A010am in Colorado - US MDT (Mountain =
Daylight Time)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A011am in Chicago - US CDT (Central Da=
ylight Time)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A012pm in New York - US EDT (Eastern D=
aylight Time)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0- Europe<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A06pm in Berlin - CEST (Central Europe=
an Summer Time)<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0* Main Number (Till Kamppeter, LF, leader)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0International: <a href=3D"tel:%2B1-218-936-=
7999" value=3D"+12189367999">+1-218-936-7999</a> &lt;tel:%2B1-218-936-7999&=
gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0Access Code: =C2=A0 491659#<br>
&gt;<br>
&gt;<br>
&gt; Cheers,<br>
&gt; - Ira<br>
&gt;<br>
&gt;<br>
&gt; Ira McDonald (Musician / Software Architect)<br>
&gt; Chair - Linux Foundation Open Printing WG<br>
&gt; Co-Chair - IEEE-ISTO PWG IPP WG<br>
&gt; Chair - TCG Embedded Systems Hardcopy SWG<br>
&gt; IETF Designated Expert - IPP &amp; Printer MIB<br>
&gt; Blue Roof Music/High North Inc<br>
&gt; <a href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blan=
k">http://sites.google.com/site/blueroofmusic</a><br>
&gt; <a href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank=
">http://sites.google.com/site/highnorthinc</a><br>
&gt; mailto:<a href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.=
com</a> &lt;mailto:<a href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic=
@gmail.com</a>&gt;<br>
&gt; Christmas through April:<br>
&gt; =C2=A0 =C2=A0579 Park Place =C2=A0Saline, MI =C2=A048176<br>
&gt; =C2=A0 =C2=A0<a href=3D"tel:734-944-0094" value=3D"+17349440094">734-9=
44-0094</a><br>
&gt; May to Christmas:<br>
&gt; =C2=A0 =C2=A0PO Box 221 =C2=A0Grand Marais, MI 49839<br>
&gt; =C2=A0 =C2=A0<a href=3D"tel:906-494-2434" value=3D"+19064942434">906-4=
94-2434</a><br>
&gt;<br>
<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-arc=
hitecture" target=3D"_blank">https://lists.linux-foundation.org/mailman/lis=
tinfo/printing-architecture</a><br>
</blockquote></div><br>

--90e6ba3fd20976ae3d04aaa2106f--
