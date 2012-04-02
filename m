Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=81TrbIvGhDOfp4IjPSIrEbvbgSygOHK+1291FbLfkpM=;
	b=puZV+VZYoCWq2njcOyMVct1kVGJnHj1yvyRxSum+duFWlz9dxLSN9DI621PpizrtKU
	xRYxRAVJvIXDEdQSK/3cRxuog8DZgvSlX8OLUB4OeT0CERcZS8NuNjDfQ0wDyIYX9xQ0
	KG6qzAuILsw8vL7ejmLQIvq6MDKZDE4L8niXuq6V8kgESZgK3ut0MaMx5G6b7t2AYvy7
	UFxGYzlY/jHiFVVkr0mdpB2gX+gBUMCn/I4h69/f1AuQ0QQuZc/wtrTB7VpQONfGSPdp
	v50YDSquBn64jc0Bi45IoTqXFElbJQuHhNymO+SrGzFODtqi7MtFKACokb5pUaXhbaux
	DZ0Q==
MIME-Version: 1.0
In-Reply-To: <E8C3B9E653C80C48B0951F8494C049A938EE7F@EEAEX02.us.epson.net>
References: <CAN40gSuYBV51pJ3hmCrbup2XnavgCbVT5JDXqxiuRYDJk78BQw@mail.gmail.com>
	<CAGC3nLDxxYjy7ydTqUHncKW9CCLqTiGyP0t-E_Wqf3pob1avDg@mail.gmail.com>
	<CAN40gSsksMRO2+r8uZ_=VPaxKRbb3GZBdd7WpmPZYGuEcqnSEQ@mail.gmail.com>
	<E8C3B9E653C80C48B0951F8494C049A938EE7F@EEAEX02.us.epson.net>
Date: Mon, 2 Apr 2012 00:26:36 -0400
Message-ID: <CAN40gSuby6vu-=7O5fPLvq_Xh1ZPZGUXBf6oDB+Y424BDkNAVw@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: multipart/alternative; boundary=f46d0444024e91d69604bcaa9811
Subject: Re: [Printing-architecture] [Printing-summit] OPS
 Preparationminutes (28 March 2012)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

--f46d0444024e91d69604bcaa9811
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Glen,

I strongly disagree - this is *not* the OP Job Ticket
Transform Service.

The first use for a client is to create a NEW job
ticket (in the abstract API) and write it out into some
concrete format (with a backend).

Clients mostly won't modify existing job tickets.

And PrintServices will just use JTAPI to parse the
job ticket once (in whatever format) and use the
values in the actual Interpreter and Scheduler
miodules.

Conversion of Job Ticket formats is the tertiary
use case.

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



2012/3/30 Petrie, Glen <glen.petrie@eitc.epson.com>

> ** ** ** ** ** ** **
>
> Ira, Daniel****
>
> ** **
>
> Since there seems to be an objection with just using =E2=80=9Cop=E2=80=9D=
; I don=E2=80=99t believe
> =E2=80=9Copjt=E2=80=9D is actually correct either.  That is, this is not =
the OpenPrinting
> Job Ticket; what it is the OpenPrinting Job Ticket Transform Service [whi=
ch
> fits perfectly with PWG=E2=80=99s definition of a transform service].   S=
o an
> alternate and more descriptive lettering would be either ****
>
> ** **
>
> =E2=80=9Copjtt=E2=80=9D             =3D open printing job ticket transfor=
m****
>
> =E2=80=9Copjtts=E2=80=9D           =3D open printing job ticket transform=
 service****
>
> ** **
>
> <The only other suggestion is to change the formal API names (not the
> prefix) to say JobTicketXXXXXXX and DocObj____.  NO!>****
>
> ** **
>
> Glen****
>
> ** **
>
> p.s. ****
>
> Please consider that this code will ultimately be reference code; and not
> reference code for execution as much as for source code on how to make Jo=
b
> Ticket back-ends (and front-end).  Having long prefixes for variable,
> variable types, routine name, etc, makes the code difficult to read,
> understand and develop.   This is not a schema, a dtd or the like; but a
> set of APIs that must have a front-end and one or more back-ends.
>  Namespace conflicts with JTAPI as a transform service are none since tha=
t
> interface will be determined by the front-end..  Conflicts of actual codi=
ng
> of the front-end and back-ends would be very low.   Since back-ends will
> likely be DLLs, there are not conflicts between back-ends.   My request i=
s
> that, for this project, the code must be well structured, easy to read,
> easy to following and strongly commented.   The goal is not the fastest o=
r
> the fanciest code but code that other will read and use to develop their
> code.   The code is the instruction manual. ****
>
> ** **
>
> p.s. ****
>
> As the PWG moves forward to MFD=E2=80=99s, the notation of a Job Ticket b=
ecomes
> unclear as to what service the Job Ticket is for.   So the descriptive
> lettering should be****
>
> ** **
>
> oppjtt  openprinting print job ticket transform****
>
> oppjtts  openprinting print job ticket transform service****
>
> ** **
>
> or ****
>
> ** **
>
> The current JTAPIs would have to be extended to support other services.
>   Naming will be a real big problem then even considering the commonality
> among various service job tickets. ****
>
> ** **
>
> p.s. ****
>
> I did not see any feedback (or I missed it) to my suggested changes to
> JTAPI headers to OpenPrinting names (prefixes); thus, I assume the
> preference is to stay to the existing FSG:JTAPI header file.   That is, b=
y
> all definitions, the correct thing to do.  So I guess it make the
> discussion of prefix unnecessary.****
>
> ** **
>
> ** **
>
> gwp****
>
> ** **
>
> ** **
>
> ** **
>
> ** **
>
> ** **
>  ------------------------------
>
> *From:* printing-architecture-bounces@lists.linux-foundation.org [mailto:
> printing-architecture-bounces@lists.linux-foundation.org] *On Behalf Of *=
Ira
> McDonald
> *Sent:* Wednesday, March 28, 2012 9:18 PM
> *To:* Daniel Dressler; Ira McDonald
> *Cc:* printing-architecture@lists.linux-foundation.org;
> printing-summit@lists.linux-foundation.org
> *Subject:* Re: [Printing-architecture] [Printing-summit] OPS
> Preparationminutes (28 March 2012)****
>
> ** **
>
> Hi Daniel,
>
> Comments inline below.
>
> Cheers,
> - Ira
>
> ****
>
> On Wed, Mar 28, 2012 at 7:09 PM, Daniel Dressler <
> danieru.dressler@gmail.com> wrote:****
>
> In response to some comments in the meeting.
>
> 1. I would prefer an 'op' prefix to 'fsgjt'. I assume fsgjt means free
> standards group job ticket? Since the fsg does not exist anymore I think
> 'op' would avoid confusion. And it is shorter.****
>
> Do we know of any namespace conflicts with other op libraries? It's been
> 5+ years, has this situation changed?****
>
>  <ira>
> The Open Printing Vector API uses 'opvp' as prefix throughout.
> It's sloppy and amateur coding practice not to use a library
> specific unique prefix (e.g., 'opjt') for variables and functions.
>
> The scope is NOT just OP libraries, but the entire universe of
> code that might be linked into a vendor or third-party tool.
> </ira>
>  ****
>
> 2. I will be attending as much of the summit as I can by phone-in, the
> summit takes place over my finals so I will be missing some sessions.****
>
>  <ira>
> Understood - we'll be glad to have you when you can attend.
> </ira>****
>
> 3. If the wiki has no history does that mean it is pointless for me to
> fill in the change log when making edits?****
>
>  <ira>
> Till can hopefully answer this one - we're not any of us happy
> about the move from a full-function Wiki tool to a limited Wiki
> tool by the Linux Foundation.
> </ira>
>
> Daniel****
>
> ** **
>
> 2012=E5=B9=B43=E6=9C=8828=E6=97=A513:38 Ira McDonald <blueroofmusic@gmail=
.com>:****
>
> Hi,
>
> Minutes from today's Open Printing Summit planning call are posted at:
>
>
> ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit-Prep-20120328.ht=
m
>
> Note:  New FTP directory - see above
>
> - ACTION - Till - contact Linux Foundation about Glen/Hin-Tak updates
>   to GSoC projects - no website fall-backs allowed until late April
>   - OPEN
>
> - ACTION - Till - contact Ghostscript and other color management folks
>   as presenters (or send slides?)
>   - Michael Vrhel (Artifex, Ghostscript) will attend OPS
>   - OPEN
>
> - ACTION - All - Draft presentation slides/outlines for review 11 April
>   - OPEN
>
> - ACTION - Presenters - tell Till EARLY about any special requirements
>   (e.g., speakers for video, demo printers, etc.)
>   - OPEN
>
> - ACTION - Presenters - send PDF slides to Till EARLY (or upload to OP)
>   (so that participants can download slides as backup for screencast)
>   - OPEN
>
> - ACTION - Ira - draft slides for OP Plenary by 11 April
>   - OPEN
>
> Next OP Conference Calls:
> (1) April 2012 - OPS Preparation
>     - Note - US Daylight Savings Time started on Sunday 11 March 2012
>     - Note - Europe Summer Time started on Sunday 25 March 2012
>
>     - Wednesday 11 April 2012, Daytime
>       - US
>         9am in **San Francisco** - ****US**** PDT (Pacific Daylight Time)
>         10am in **Colorado** - ****US**** MDT (Mountain Daylight Time)
>         11am in Chicago - ****US**** CDT (Central Daylight Time)
>         12pm in **New York** - ****US**** EDT (Eastern Daylight Time)
>       - **Europe**
>         6pm in ****Berlin**** - CEST (Central European Summer Time)
>
>     * Main Number (Till Kamppeter, LF, leader)
>       International: +1-218-936-7999
>       Access Code:   491659#
>
> (2) April 2012 - Joint PWG / Open Printing ****Summit****
>     - Note - OPS is NOT hosted by Linux Foundation Collaboration Summit
>
>     - Tuesday to Friday 24-27 April 2012 at Apple in ****Cupertino**, **C=
A
> ****
>       - US
>         9am in **San Francisco** - ****US**** PDT (Pacific Daylight Time)
>         10am in **Colorado** - ****US**** MDT (Mountain Daylight Time)
>         11am in Chicago - ****US**** CDT (Central Daylight Time)
>         12pm in **New York** - ****US**** EDT (Eastern Daylight Time)
>       - **Europe**
>         6pm in ****Berlin**** - CEST (Central European Summer Time)
>
>     * Main PWG Number (Mike Sweet, Apple, leader)
>       US Toll-Free:  +1-866-469-3239
>       International: +1-650-429-3300
>       Access Code:   By request to Ira McDonald (do NOT publish)
>
> (3) May 2012 - US/Europe - OP Monthly Meeting
>     - Note - Joint PWG/OPS is 24-27 April at Apple in ****Cupertino**, **
> CA****
>     - Note - Ubuntu Developer Summit is 7-11 May in ****Oakland**, **CA**=
*
> *
>     - Note - Ira has a conflict on 16 May
>
>     - Wednesday 23 May 2012, Daytime
>       - US
>         9am in **San Francisco** - ****US**** PDT (Pacific Daylight Time)
>         10am in **Colorado** - ****US**** MDT (Mountain Daylight Time)
>         11am in Chicago - ****US**** CDT (Central Daylight Time)
>         12pm in **New York** - ****US**** EDT (Eastern Daylight Time)
>       - **Europe**
>         6pm in ****Berlin**** - CEST (Central European Summer Time)
>
>     * Main Number (Till Kamppeter, LF, leader)
>       International: +1-218-936-7999
>       Access Code:   491659#
>
> Cheers,
> - Ira
>
> Ira McDonald (Musician / Software Architect)
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG IPP WG
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - TCG Embedded Systems Hardcopy SG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music/High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto:blueroofmusic@gmail.com
> Winter  ****579 Park Place**  **Saline**, **MI**  **48176****
> 734-944-0094
> Summer  ****PO Box** 221**  Grand ****Marais**, **MI** **49839****
> 906-494-2434****
>
> ** **
>
> _______________________________________________
> Printing-summit mailing list
> Printing-summit@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-summit****
>
> ** **
>
>  ** **
>

--f46d0444024e91d69604bcaa9811
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Glen,<br><br>I strongly disagree - this is *not* the OP Job Ticket<br>Tr=
ansform Service.<br><br>The first use for a client is to create a NEW job<b=
r>ticket (in the abstract API) and write it out into some<br>concrete forma=
t (with a backend).<br>
<br>Clients mostly won&#39;t modify existing job tickets.<br><br>And PrintS=
ervices will just use JTAPI to parse the<br>job ticket once (in whatever fo=
rmat) and use the<br>values in the actual Interpreter and Scheduler<br>
miodules.<br><br>Conversion of Job Ticket formats is the tertiary<br>use ca=
se.<br><br>Cheers,<br>- Ira<br><br clear=3D"all">Ira McDonald (Musician / S=
oftware Architect)<br>Chair - Linux Foundation Open Printing WG<br>Secretar=
y - IEEE-ISTO Printer Working Group<br>
Co-Chair - IEEE-ISTO PWG IPP WG<br>Co-Chair - TCG Trusted Mobility Solution=
s WG<br>Chair - TCG Embedded Systems Hardcopy SG<br>IETF Designated Expert =
- IPP &amp; Printer MIB<br>Blue Roof Music/High North Inc<br><a style=3D"co=
lor:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" tar=
get=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br>
<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluer=
oofmusic@gmail.com</a><br>
Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-0094=
<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434=
<div style=3D"display:inline"></div><div style=3D"display:inline"></div><di=
v style=3D"display:inline"></div><div>
</div><div></div><div></div><div></div><br>
<br><br><div class=3D"gmail_quote">2012/3/30 Petrie, Glen <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:glen.petrie@eitc.epson.com">glen.petrie@eitc.epson.c=
om</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<u></u>
<u></u>
<u></u>
<u></u>
<u></u>
<u></u>
<u></u>





<div link=3D"blue" vlink=3D"blue" lang=3D"EN-US">

<div>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Ira, Daniel<u>=
</u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Since there se=
ems to be an objection
with just using =E2=80=9Cop=E2=80=9D; I don=E2=80=99t believe =E2=80=9Copjt=
=E2=80=9D is actually correct either.=C2=A0
That is, this is not the OpenPrinting Job Ticket; what it is the OpenPrinti=
ng
Job Ticket Transform Service [which fits perfectly with PWG=E2=80=99s defin=
ition of a
transform service].=C2=A0=C2=A0 So an alternate and more descriptive letter=
ing would
be either <u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=E2=80=9Copjtt=
=E2=80=9D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D
open printing job ticket transform<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=E2=80=9Copjtt=
s=E2=80=9D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D
open printing job ticket transform service<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">&lt;The only o=
ther suggestion is to change
the formal API names (not the prefix) to say JobTicketXXXXXXX and DocObj___=
_.=C2=A0
NO!&gt;<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Glen<u></u><u>=
</u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">p.s. <u></u><u=
></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue">Please
consider that this code will ultimately be reference code; and not referenc=
e code
for execution as much as for source code on how to make Job Ticket back-end=
s
(and front-end). =C2=A0Having long prefixes for variable, variable types,
routine name, etc, makes the code difficult to read, understand and develop=
. =C2=A0=C2=A0This
is not a schema, a dtd or the like; but a set of APIs that must have a fron=
t-end
and one or more back-ends.=C2=A0=C2=A0 =C2=A0Namespace conflicts with JTAPI=
 as
a transform service are none since that interface will be determined by the
front-end..=C2=A0 Conflicts of actual coding of the front-end and back-ends
would be very low.=C2=A0=C2=A0 Since back-ends will likely be DLLs, there a=
re
not conflicts between back-ends.=C2=A0=C2=A0 My request is that, for this
project, the code must be well structured, easy to read, easy to following =
and strongly
commented. =C2=A0=C2=A0The goal is not the fastest or the fanciest code but
code that other will read and use to develop their code. =C2=A0=C2=A0The co=
de
is the instruction manual. <u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">p.s. <u></u><u=
></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue">As
the PWG moves forward to MFD=E2=80=99s, the notation of a Job Ticket become=
s unclear as
to what service the Job Ticket is for.=C2=A0=C2=A0 So the descriptive lette=
ring
should be<u></u><u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue"><u></u>=C2=A0<u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue">oppjtt=C2=A0 openprinting
print job ticket transform<u></u><u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue">oppjtts=C2=A0
openprinting print job ticket transform service<u></u><u></u></span></font>=
</p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue"><u></u>=C2=A0<u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue">or <u></u><u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue"><u></u>=C2=A0<u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue">The
current JTAPIs would have to be extended to support other services. =C2=A0=
=C2=A0Naming
will be a real big problem then even considering the commonality among vari=
ous service
job tickets. <u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">p.s. <u></u><u=
></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue">I
did not see any feedback (or I missed it) to my suggested changes to JTAPI
headers to OpenPrinting names (prefixes); thus, I assume the preference is =
to
stay to the existing FSG:JTAPI header file.=C2=A0=C2=A0 That is, by all
definitions, the correct thing to do.=C2=A0 So I guess it make the discussi=
on of
prefix unnecessary.<u></u><u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-left:.5in"><font color=3D"blue" face=
=3D"Cambria" size=3D"3"><span style=3D"font-size:12.0pt;font-family:Cambria=
;color:blue"><u></u>=C2=A0<u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">gwp<u></u><u><=
/u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<div>

<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><font=
 face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12.0pt">

<hr align=3D"center" size=3D"2" width=3D"100%">

</span></font></div>

<p class=3D"MsoNormal"><b><font face=3D"Tahoma"><span style=3D"font-size:10=
.0pt;font-family:Tahoma;font-weight:bold">From:</span></font></b><font face=
=3D"Tahoma"><span style=3D"font-size:10.0pt;font-family:Tahoma">
<a href=3D"mailto:printing-architecture-bounces@lists.linux-foundation.org"=
 target=3D"_blank">printing-architecture-bounces@lists.linux-foundation.org=
</a>
[mailto:<a href=3D"mailto:printing-architecture-bounces@lists.linux-foundat=
ion.org" target=3D"_blank">printing-architecture-bounces@lists.linux-founda=
tion.org</a>] <b><span style=3D"font-weight:bold">On Behalf Of </span></b>I=
ra McDonald<br>

<b><span style=3D"font-weight:bold">Sent:</span></b> Wednesday, March 28, 2=
012
9:18 PM<br>
<b><span style=3D"font-weight:bold">To:</span></b> Daniel Dressler; Ira McD=
onald<br>
<b><span style=3D"font-weight:bold">Cc:</span></b>
<a href=3D"mailto:printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">printing-architecture@lists.linux-foundation.org</a>; <a href=
=3D"mailto:printing-summit@lists.linux-foundation.org" target=3D"_blank">pr=
inting-summit@lists.linux-foundation.org</a><br>

<b><span style=3D"font-weight:bold">Subject:</span></b> Re:
[Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March
2012)</span></font><u></u><u></u></p>

</div><div><div class=3D"h5">

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=C2=A0<u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt">Hi Daniel,<br>
<br>
Comments inline below.<br>
<br>
Cheers,<br>
- Ira<br>
<br>
<u></u><u></u></span></font></p>

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">On Wed, Mar 28, 2012 at 7:09 PM, Daniel Dressler &lt=
;<a href=3D"mailto:danieru.dressler@gmail.com" target=3D"_blank">danieru.dr=
essler@gmail.com</a>&gt;
wrote:<u></u><u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt">In response to some
comments in the meeting.<br>
<br>
1. I would prefer an &#39;op&#39; prefix to &#39;fsgjt&#39;. I assume fsgjt=
 means free
standards group job ticket? Since the fsg does not exist anymore I think &#=
39;op&#39;
would avoid confusion. And it is shorter.<u></u><u></u></span></font></p>

<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt">Do we know of any
namespace conflicts with other op libraries? It&#39;s been 5+ years, has th=
is
situation changed?<u></u><u></u></span></font></p>

</blockquote>

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">&lt;ira&gt;<br>
The Open Printing Vector API uses &#39;opvp&#39; as prefix throughout.<br>
It&#39;s sloppy and amateur coding practice not to use a library <br>
specific unique prefix (e.g., &#39;opjt&#39;) for variables and functions.<=
br>
<br>
The scope is NOT just OP libraries, but the entire universe of<br>
code that might be linked into a vendor or third-party tool.<br>
&lt;/ira&gt;<br>
=C2=A0<u></u><u></u></span></font></p>

</div>

<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt">2. I will be attendin=
g as
much of the summit as I can by phone-in, the summit takes place over my fin=
als
so I will be missing some sessions.<u></u><u></u></span></font></p>

</blockquote>

<div>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt">&lt;ira&gt; <br>
Understood - we&#39;ll be glad to have you when you can attend.<br>
&lt;/ira&gt;<u></u><u></u></span></font></p>

</div>

<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt">3. If the wiki has no
history does that mean it is pointless for me to fill in the change log whe=
n
making edits?<u></u><u></u></span></font></p>

</blockquote>

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">&lt;ira&gt;<br>
Till can hopefully answer this one - we&#39;re not any of us happy<br>
about the move from a full-function Wiki tool to a limited Wiki<br>
tool by the Linux Foundation.<br>
&lt;/ira&gt;<br>
<br>
Daniel<u></u><u></u></span></font></p>

</div>

<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=C2=A0<u></u></span></font></p>

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">2012</span></font><font face=3D"MS Mincho"><span sty=
le=3D"font-family:&quot;MS Mincho&quot;">=E5=B9=B4</span></font>3<font face=
=3D"MS Mincho"><span style=3D"font-family:&quot;MS Mincho&quot;">=E6=9C=88<=
/span></font>28<font face=3D"MS Mincho"><span style=3D"font-family:&quot;MS=
 Mincho&quot;">=E6=97=A5</span></font>13:38 Ira
McDonald &lt;<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">b=
lueroofmusic@gmail.com</a>&gt;:<u></u><u></u></p>

<div>

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">Hi, <br>
<br>
Minutes from today&#39;s Open Printing Summit planning call are posted at:<=
br>
<br>
=C2=A0<a href=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit-P=
rep-20120328.htm" target=3D"_blank">ftp://ftp.pwg.org/pub/pwg/openprinting/=
minutes/OP-Summit-Prep-20120328.htm</a><br>
<br>
Note:=C2=A0 New FTP directory - see above<br>
<br>
- ACTION - Till - contact Linux Foundation about Glen/Hin-Tak updates<br>
=C2=A0 to GSoC projects - no website fall-backs allowed until late April<br=
>
=C2=A0 - OPEN<br>
<br>
- ACTION - Till - contact Ghostscript and other color management folks<br>
=C2=A0 as presenters (or send slides?)<br>
=C2=A0 - Michael Vrhel (Artifex, Ghostscript) will attend OPS<br>
=C2=A0 - OPEN<br>
<br>
- ACTION - All - Draft presentation slides/outlines for review 11 April<br>
=C2=A0 - OPEN<br>
<br>
- ACTION - Presenters - tell Till EARLY about any special requirements<br>
=C2=A0 (e.g., speakers for video, demo printers, etc.)<br>
=C2=A0 - OPEN<br>
<br>
- ACTION - Presenters - send PDF slides to Till EARLY (or upload to OP)<br>
=C2=A0 (so that participants can download slides as backup for screencast)<=
br>
=C2=A0 - OPEN<br>
<br>
- ACTION - Ira - draft slides for OP Plenary by 11 April<br>
=C2=A0 - OPEN<br>
<br>
Next OP Conference Calls:<br>
(1) April 2012 - OPS Preparation<br>
=C2=A0=C2=A0=C2=A0 - Note - US Daylight Savings Time started on Sunday 11 M=
arch
2012<br>
=C2=A0=C2=A0=C2=A0 - Note - Europe Summer Time started on Sunday 25 March 2=
012<br>
<br>
=C2=A0=C2=A0=C2=A0 - Wednesday 11 April 2012, Daytime<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - US<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 9am in <u></u>San
 Francisco<u></u> - <u></u><u></u>US<u></u><u></u>
PDT (Pacific Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10am in <u></u>Colorado<u></u>
- <u></u><u></u>US<u></u><u></u>
MDT (Mountain Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11am in Chicago - <u></u><u></u>=
US<u></u><u></u> CDT (Central
Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12pm in <u></u>New
 York<u></u> - <u></u><u></u>US<u></u><u></u>
EDT (Eastern Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - <u></u>Europe<u></u><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6pm in <u></u><u></u>Berlin<u></=
u><u></u> - CEST (Central European Summer Time)<br>
<br>
=C2=A0=C2=A0=C2=A0 * Main Number (Till Kamppeter, LF, leader)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 International: <a href=3D"tel:%2B1-218-936-7=
999" value=3D"+12189367999" target=3D"_blank">+1-218-936-7999</a><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Access Code:=C2=A0=C2=A0 491659#<br>
<br>
(2) April 2012 - Joint PWG / Open Printing <u></u><u></u>Summit<u></u><u></=
u><br>
=C2=A0=C2=A0=C2=A0 - Note - OPS is NOT hosted by Linux Foundation Collabora=
tion
Summit<br>
<br>
=C2=A0=C2=A0=C2=A0 - Tuesday to Friday 24-27 April 2012 at Apple in <u></u>=
<u></u>Cupertino<u></u>, <u></u>CA<u></u><u></u><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - US<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 9am in <u></u>San
 Francisco<u></u> - <u></u><u></u>US<u></u><u></u>
PDT (Pacific Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10am in <u></u>Colorado<u></u>
- <u></u><u></u>US<u></u><u></u>
MDT (Mountain Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11am in Chicago - <u></u><u></u>=
US<u></u><u></u> CDT (Central
Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12pm in <u></u>New
 York<u></u> - <u></u><u></u>US<u></u><u></u>
EDT (Eastern Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - <u></u>Europe<u></u><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6pm in <u></u><u></u>Berlin<u></=
u><u></u> - CEST (Central European Summer Time)<br>
<br>
=C2=A0=C2=A0=C2=A0 * Main PWG Number (Mike Sweet, Apple, leader)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 US Toll-Free:=C2=A0 <a href=3D"tel:%2B1-866-=
469-3239" value=3D"+18664693239" target=3D"_blank">+1-866-469-3239</a><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 International: <a href=3D"tel:%2B1-650-429-3=
300" value=3D"+16504293300" target=3D"_blank">+1-650-429-3300</a><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Access Code:=C2=A0=C2=A0 By request to Ira
McDonald (do NOT publish)<br>
<br>
(3) May 2012 - US/Europe - OP Monthly Meeting<br>
=C2=A0=C2=A0=C2=A0 - Note - Joint PWG/OPS is 24-27 April at Apple in <u></u=
><u></u>Cupertino<u></u>, <u></u>CA<u></u><u></u><br>
=C2=A0=C2=A0=C2=A0 - Note - Ubuntu Developer Summit is 7-11 May in <u></u><=
u></u>Oakland<u></u>, <u></u>CA<u></u><u></u><br>
=C2=A0=C2=A0=C2=A0 - Note - Ira has a conflict on 16 May<br>
<br>
=C2=A0=C2=A0=C2=A0 - Wednesday 23 May 2012, Daytime<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - US<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 9am in <u></u>San
 Francisco<u></u> - <u></u><u></u>US<u></u><u></u>
PDT (Pacific Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10am in <u></u>Colorado<u></u>
- <u></u><u></u>US<u></u><u></u>
MDT (Mountain Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11am in Chicago - <u></u><u></u>=
US<u></u><u></u> CDT (Central
Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12pm in <u></u>New
 York<u></u> - <u></u><u></u>US<u></u><u></u>
EDT (Eastern Daylight Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - <u></u>Europe<u></u><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6pm in <u></u><u></u>Berlin<u></=
u><u></u> - CEST (Central European Summer Time)<br>
<br>
=C2=A0=C2=A0=C2=A0 * Main Number (Till Kamppeter, LF, leader)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 International: <a href=3D"tel:%2B1-218-936-7=
999" value=3D"+12189367999" target=3D"_blank">+1-218-936-7999</a><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Access Code:=C2=A0=C2=A0 491659#<br>
<br>
Cheers,<br>
- Ira<br>
<br clear=3D"all">
Ira McDonald (Musician / Software Architect)<br>
Chair - Linux Foundation Open Printing WG<br>
Secretary - IEEE-ISTO Printer Working Group<br>
Co-Chair - IEEE-ISTO PWG IPP WG<br>
Co-Chair - TCG Trusted Mobility Solutions WG<br>
Chair - TCG Embedded Systems Hardcopy SG<br>
IETF Designated Expert - IPP &amp; Printer MIB<br>
Blue Roof Music/High North Inc<br>
<a href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blank"><f=
ont color=3D"#3333ff"><span style=3D"color:#3333ff">http://sites.google.com=
/site/blueroofmusic</span></font></a><br>
<a href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank"><fo=
nt color=3D"#6600cc"><span style=3D"color:#6600cc">http://sites.google.com/=
site/highnorthinc</span></font></a><br>
mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroo=
fmusic@gmail.com</a><br>
Winter=C2=A0 <u></u><u></u>579 Park Place<u></u>=C2=A0
 <u></u>Saline<u></u>, <u></u>MI<u></u>=C2=A0
 <u></u>48176<u></u><u></u>=C2=A0 <a href=3D"tel:734-944-0094" value=3D"+17=
349440094" target=3D"_blank">734-944-0094</a><br>
Summer=C2=A0 <u></u><u></u>PO Box<u></u>
 221<u></u>=C2=A0 Grand <u></u><u></u>Marais<u></u>,
 <u></u>MI<u></u> <u></u>49839<u></u><u></u>=C2=A0
<a href=3D"tel:906-494-2434" value=3D"+19064942434" target=3D"_blank">906-4=
94-2434</a><u></u><u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt"><u></u>=C2=A0<u></u><=
/span></font></p>

</div>

</div>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt">_____________________=
__________________________<br>
Printing-summit mailing list<br>
<a href=3D"mailto:Printing-summit@lists.linux-foundation.org" target=3D"_bl=
ank">Printing-summit@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-summ=
it" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listinfo/pr=
inting-summit</a><u></u><u></u></span></font></p>

</div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=C2=A0<u></u></span></font></p>

</blockquote>

</div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=C2=A0<u></u></span></font></p>

</div></div></div>

</div>


</blockquote></div><br>

--f46d0444024e91d69604bcaa9811--
