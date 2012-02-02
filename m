Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bu7W+9p9Kn8xZj3yGN/HcS9CmefwsaKQ5pyrevPHm08=;
	b=nwG7gXmkcP6UYSlxdcTQ680f0clY7lpxuWfnasdRRxCyTa5kh3f3WxZz5ag9S8eBjM
	0MeXWNtrAJ/bAyC3QZDg/HXPGwENSpMV70dmq69fyJ8GyU2/42+9yHi/NBZiRa1uE+el
	EXUoQWBkui06URKk1kCoCOkMx69GxPmqt77V0=
MIME-Version: 1.0
In-Reply-To: <E8C3B9E653C80C48B0951F8494C049A92C819D@EEAEX02.us.epson.net>
References: <CAN40gSsVnwE43W2E8no3OaRJ1zUGV9eg2F5xp_a3O7YzbAVpzQ@mail.gmail.com>
	<CAGC3nLB9KwEU25sESOwuzp30EvhbO8uErH4bC9Dp84ztUdu34w@mail.gmail.com>
	<E8C3B9E653C80C48B0951F8494C049A92C819D@EEAEX02.us.epson.net>
Date: Thu, 2 Feb 2012 11:30:47 -0700
Message-ID: <CAGC3nLDdn4MWTDMJV4ZppfTH9g_p3wmY7Hf2d-+0ApG0PqSEzw@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: multipart/alternative; boundary=f46d04447eeb160af504b7ff6541
Subject: Re: [Printing-architecture] OP Monthly Minutes (1 February 2012)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org

--f46d04447eeb160af504b7ff6541
Content-Type: text/plain; charset=UTF-8

Thank you Petrie

I understand the predicament and I think EPL is a fine compromise. I only
mean to clarify becuase in the last meeting I think communication could
have been enhanced with the specific terms. I did not mean to open a debate
simply to elaborate on the motivations behind the terms.

I do remember that one meeting it was decided to switch to EPL, will the
JTAPI spec get re-licensed? I would like to implement JTAPI under EPL but
right now the JTAPI headers are only available under the CPL.

I understand the re-licensing might take a while since both IBM and Epson
has a copyright stake but has any progress been made?

Daniel

2012/2/2 Petrie, Glen <glen.petrie@eitc.epson.com>

> ** ** ** ** ** ** **
>
> Daniel,****
>
> ** **
>
> I might have some stuff related to JTAPI; if so, I will send to you.****
>
> ** **
>
> p.s.****
>
> ** **
>
> There have been endless debates on free, open, liberal, foo, xyz and any
> other kind license you can think of.   To date, OpenPrinting has decided to
> use either MIT or CPL (CPL has actually been replaced Eclipse Public
> License (EPL)).****
>
> ** **
>
> Reason:  No printer vendor to date will use GPL and, in most cases, will
> not use LGPL due the legal issues.   For example, my work practice is to
> never examine or review any GPL code.   Therefore, since OpenPrinting wants
> print vendors and others to use the code they develop, it was decided that
> all code must be CPL/EPL or at least MIT or BSD.  As always, there have
> been exceptions; but, again, printer vendors will not use code with these
> exceptions (so what the use in putting such code under non-useful licenses).
> ****
>
> ** **
>
> Glen****
>
> ** **
>
> ** **
>  ------------------------------
>
> *From:* printing-architecture-bounces@lists.linux-foundation.org [mailto:
> printing-architecture-bounces@lists.linux-foundation.org] *On Behalf Of *Daniel
> Dressler
> *Sent:* Thursday, February 02, 2012 10:02 AM
> *To:* Ira McDonald
> *Cc:* printing-architecture@lists.linux-foundation.org
> *Subject:* Re: [Printing-architecture] OP Monthly Minutes (1 February
> 2012)****
>
> ** **
>
> Hello Everyone
>
> I have good news! Last year I mentioned that I would like to implement
> JTAPI this summer if no one else did it before then.
>
> I still want to do that!
>
> I might email the jtapi mailing list closer to the summer to ask for
> suggestions, I've read the jtapi spec what else should I read?
>
> PS:
>
> Since there appeared to be some confusion arround open source terms I feel
> compelled to give a summery.
>
> Free software is a term forwarded by the Free Software Foundation (
> Richard Stalman and GPL)
> The Free Software Foundation argues that free software is a moral issue,
> that it is wrong to not let a user control their computer.
> The end game for the FSF is that people no longer keep code secret. As one
> can imagine since the major point of BSD like licenses is to allow things
> to be taken secret, Free Software proponents do *not* like BSD licenses.
>
> Open source is a term introduced by The Open Source Initiative ( Eric
> Raymond )
> The Open Source Initiative argues that open source is a better development
> method and does not argue that it is a moral issue.
> The term open source is supposed to be less confusing than Free ( as in
> freedom) software.
>
> Then there are Liberal Licenses (MIT/ three clause BSD) these are meant to
> be more corporate friendly.
>
> It is a complicated subject but we do have terms that can be unambiguous.
>
> PPS: foomatic uses libxml2 as well. Please do not write a new xml parser.
> Here is a list of xml pasers and their licenses:
> http://lars.ruoff.free.fr/xmlcpp/ It appears that "expat" would fit our
> goals (small, written in C, and under MIT).****
>
> 2012/2/1 Ira McDonald <blueroofmusic@gmail.com>****
>
> Hi,
>
> Minutes from today's Open Printing monthly teleconference are posted at:
>
>  ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-20120201.htm
>
> ACTION - All - Identify additional print/image filters for GSoC
>
> Final agenda for joint PWG / OP Summit 24-27 April 2012 is listed in
> these minutes.
>
> Next OP teleconferences:
> (1) March 2012 - US/Europe - OP Monthly Meeting
>     - Wednesday 7 March 2012, Daytime
>       - US
>         9am in **San Francisco** - ****US**** PST (Pacific Standard Time)
>         10am in **Colorado** - ****US**** MST (Mountain Standard Time)
>         11am in Chicago - ****US**** CST (Central Standard Time)
>         12pm in **New York** - ****US**** EST (Eastern Standard Time)
>       - **Europe**
>         6pm in ****Berlin**** - CET (Central European Time)
>
>     * Main Number (Till Kamppeter, LF, leader)
>       International: +1-218-936-7999
>       Access Code:   491659#
>
> (2) April 2012 - US/Europe - OP Monthly Meeting - tentative
>     - Note - US Daylight Savings Time starts 11 March 2012
>     - Note - Europe Summer Time starts 25 March 2012
>
>     - Wednesday 4 April 2012, Daytime
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
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture**
> **
>
> ** **
>

--f46d04447eeb160af504b7ff6541
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you Petrie<br><br>I understand the predicament and I think EPL is a f=
ine compromise. I only mean to clarify becuase in the last meeting I think =
communication could have been enhanced with the specific terms. I did not m=
ean to open a debate simply to elaborate on the motivations behind the term=
s.<br>
<br>I do remember that one meeting it was decided to switch to EPL, will th=
e JTAPI spec get re-licensed? I would like to implement JTAPI under EPL but=
 right now the JTAPI headers are only available under the CPL.<br><br>I und=
erstand the re-licensing might take a while since both IBM and Epson has a =
copyright stake but has any progress been made?<br>
<br>Daniel<br><br><div class=3D"gmail_quote">2012/2/2 Petrie, Glen <span di=
r=3D"ltr">&lt;<a href=3D"mailto:glen.petrie@eitc.epson.com">glen.petrie@eit=
c.epson.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





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
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Daniel,<u></u>=
<u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">I might have s=
ome stuff related to
JTAPI; if so, I will send to you.<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">p.s.<u></u><u>=
</u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">There have bee=
n endless debates on free,
open, liberal, foo, xyz and any other kind license you can think of.=C2=A0=
=C2=A0 To date,
OpenPrinting has decided to use either MIT or CPL (CPL has actually been
replaced Eclipse Public License (EPL)).<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Reason:=C2=A0 =
No printer vendor to date will
use GPL and, in most cases, will not use LGPL due the legal issues.=C2=A0 =
=C2=A0For
example, my work practice is to never examine or review any GPL code.=C2=A0=
 =C2=A0Therefore,
since OpenPrinting wants print vendors and others to use the code they deve=
lop,
it was decided that all code must be CPL/EPL or at least MIT or BSD.=C2=A0 =
As
always, there have been exceptions; but, again, printer vendors will not us=
e code
with these exceptions (so what the use in putting such code under non-usefu=
l
licenses).<u></u><u></u></span></font></p>

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
tion.org</a>] <b><span style=3D"font-weight:bold">On Behalf Of </span></b>D=
aniel Dressler<br>

<b><span style=3D"font-weight:bold">Sent:</span></b> Thursday, February 02,=
 2012
10:02 AM<br>
<b><span style=3D"font-weight:bold">To:</span></b> Ira McDonald<br>
<b><span style=3D"font-weight:bold">Cc:</span></b>
<a href=3D"mailto:printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">printing-architecture@lists.linux-foundation.org</a><br>
<b><span style=3D"font-weight:bold">Subject:</span></b> Re:
[Printing-architecture] OP Monthly Minutes (1 February 2012)</span></font><=
u></u><u></u></p>

</div><div><div class=3D"h5">

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=C2=A0<u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt">Hello Everyone<br>
<br>
I have good news! Last year I mentioned that I would like to implement JTAP=
I
this summer if no one else did it before then. <br>
<br>
I still want to do that!<br>
<br>
I might email the jtapi mailing list closer to the summer to ask for
suggestions, I&#39;ve read the jtapi spec what else should I read?<br>
<br>
PS: <br>
<br>
Since there appeared to be some confusion arround open source terms I feel
compelled to give a summery.<br>
<br>
Free software is a term forwarded by the Free Software Foundation ( Richard
Stalman and GPL)<br>
The Free Software Foundation argues that free software is a moral issue, th=
at
it is wrong to not let a user control their computer.<br>
The end game for the FSF is that people no longer keep code secret. As one =
can
imagine since the major point of BSD like licenses is to allow things to be
taken secret, Free Software proponents do *not* like BSD licenses.<br>
<br>
Open source is a term introduced by The Open Source Initiative ( Eric Raymo=
nd )<br>
The Open Source Initiative argues that open source is a better development
method and does not argue that it is a moral issue.<br>
The term open source is supposed to be less confusing than Free ( as in
freedom) software.<br>
<br>
Then there are Liberal Licenses (MIT/ three clause BSD) these are meant to =
be
more corporate friendly. <br>
<br>
It is a complicated subject but we do have terms that can be unambiguous. <=
br>
<br>
PPS: foomatic uses libxml2 as well. Please do not write a new xml parser. H=
ere
is a list of xml pasers and their licenses: <a href=3D"http://lars.ruoff.fr=
ee.fr/xmlcpp/" target=3D"_blank">http://lars.ruoff.free.fr/xmlcpp/</a>
It appears that &quot;expat&quot; would fit our goals (small, written in C,=
 and
under MIT).<u></u><u></u></span></font></p>

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">2012/2/1 Ira McDonald &lt;<a href=3D"mailto:blueroof=
music@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a>&gt;<u></u><u=
></u></span></font></p>


<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">Hi, <br>
<br>
Minutes from today&#39;s Open Printing monthly teleconference are posted at=
:<br>
<br>
=C2=A0<a href=3D"ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-20120201.=
htm" target=3D"_blank">ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-201=
20201.htm</a><br>
<br>
ACTION - All - Identify additional print/image filters for GSoC<br>
<br>
Final agenda for joint PWG / OP Summit 24-27 April 2012 is listed in<br>
these minutes.<br>
<br>
Next OP teleconferences:<br>
(1) March 2012 - US/Europe - OP Monthly Meeting<br>
=C2=A0=C2=A0=C2=A0 - Wednesday 7 March 2012, Daytime<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - US<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 9am in <u></u>San
 Francisco<u></u> - <u></u><u></u>US<u></u><u></u>
PST (Pacific Standard Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10am in <u></u>Colorado<u></u>
- <u></u><u></u>US<u></u><u></u>
MST (Mountain Standard Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11am in Chicago - <u></u><u></u>=
US<u></u><u></u> CST (Central
Standard Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12pm in <u></u>New
 York<u></u> - <u></u><u></u>US<u></u><u></u>
EST (Eastern Standard Time)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - <u></u>Europe<u></u><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6pm in <u></u><u></u>Berlin<u></=
u><u></u> - CET (Central European Time)<br>
<br>
=C2=A0=C2=A0=C2=A0 * Main Number (Till Kamppeter, LF, leader)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 International: <a href=3D"tel:%2B1-218-936-7=
999" value=3D"+12189367999" target=3D"_blank">+1-218-936-7999</a><br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Access Code:=C2=A0=C2=A0 491659#<br>
<br>
(2) April 2012 - US/Europe - OP Monthly Meeting - tentative<br>
=C2=A0=C2=A0=C2=A0 - Note - US Daylight Savings Time starts 11 March 2012<b=
r>
=C2=A0=C2=A0=C2=A0 - Note - Europe Summer Time starts 25 March 2012<br>
<br>
=C2=A0=C2=A0=C2=A0 - Wednesday 4 April 2012, Daytime<br>
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
- Ira<br clear=3D"all">
<br>
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

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=C2=A0<u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt"><br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><u></u><u></u></span></font></p>

</div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=C2=A0<u></u></span></font></p>

</div></div></div>

</div>


</blockquote></div><br>

--f46d04447eeb160af504b7ff6541--
