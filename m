Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ThqhvKdXeK9FPce5cfgK6ycSwGuTbxtACkZAl3ovAnw=;
	b=bkEJKwZYxefDmMzw+VC5Oqk6Vgpa25CmXRIIGqfkLZUINLNIqGjxX6M5jeu1bJjrO9
	GPD0PJvQzH577TgskKJ6nFnz3Up56pj3JVoIZ0rxCxyHOg1V7rV2YkouhXFywd2XdsMz
	9XFQNl+DaYajjwB0x/Gg9391MlCVrso9dFXO8=
MIME-Version: 1.0
In-Reply-To: <CAN40gSsVnwE43W2E8no3OaRJ1zUGV9eg2F5xp_a3O7YzbAVpzQ@mail.gmail.com>
References: <CAN40gSsVnwE43W2E8no3OaRJ1zUGV9eg2F5xp_a3O7YzbAVpzQ@mail.gmail.com>
Date: Thu, 2 Feb 2012 11:02:26 -0700
Message-ID: <CAGC3nLB9KwEU25sESOwuzp30EvhbO8uErH4bC9Dp84ztUdu34w@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: multipart/alternative; boundary=f46d044480dfb0c06d04b7fefff5
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
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

--f46d044480dfb0c06d04b7fefff5
Content-Type: text/plain; charset=UTF-8

Hello Everyone

I have good news! Last year I mentioned that I would like to implement
JTAPI this summer if no one else did it before then.

I still want to do that!

I might email the jtapi mailing list closer to the summer to ask for
suggestions, I've read the jtapi spec what else should I read?

PS:

Since there appeared to be some confusion arround open source terms I feel
compelled to give a summery.

Free software is a term forwarded by the Free Software Foundation ( Richard
Stalman and GPL)
The Free Software Foundation argues that free software is a moral issue,
that it is wrong to not let a user control their computer.
The end game for the FSF is that people no longer keep code secret. As one
can imagine since the major point of BSD like licenses is to allow things
to be taken secret, Free Software proponents do *not* like BSD licenses.

Open source is a term introduced by The Open Source Initiative ( Eric
Raymond )
The Open Source Initiative argues that open source is a better development
method and does not argue that it is a moral issue.
The term open source is supposed to be less confusing than Free ( as in
freedom) software.

Then there are Liberal Licenses (MIT/ three clause BSD) these are meant to
be more corporate friendly.

It is a complicated subject but we do have terms that can be unambiguous.

PPS: foomatic uses libxml2 as well. Please do not write a new xml parser.
Here is a list of xml pasers and their licenses:
http://lars.ruoff.free.fr/xmlcpp/ It appears that "expat" would fit our
goals (small, written in C, and under MIT).

2012/2/1 Ira McDonald <blueroofmusic@gmail.com>

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
>         9am in San Francisco - US PST (Pacific Standard Time)
>         10am in Colorado - US MST (Mountain Standard Time)
>         11am in Chicago - US CST (Central Standard Time)
>         12pm in New York - US EST (Eastern Standard Time)
>       - Europe
>         6pm in Berlin - CET (Central European Time)
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
>         9am in San Francisco - US PDT (Pacific Daylight Time)
>         10am in Colorado - US MDT (Mountain Daylight Time)
>         11am in Chicago - US CDT (Central Daylight Time)
>         12pm in New York - US EDT (Eastern Daylight Time)
>       - Europe
>         6pm in Berlin - CEST (Central European Summer Time)
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
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
>

--f46d044480dfb0c06d04b7fefff5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Everyone<br><br>I have good news! Last year I mentioned that I would =
like to implement JTAPI this summer if no one else did it before then. <br>=
<br>I still want to do that!<br><br>I might email the jtapi mailing list cl=
oser to the summer to ask for suggestions, I&#39;ve read the jtapi spec wha=
t else should I read?<br>
<br>PS: <br><br>Since there appeared to be some confusion arround open sour=
ce terms I feel compelled to give a summery.<br><br>Free software is a term=
 forwarded by the Free Software Foundation ( Richard Stalman and GPL)<br>
The Free Software Foundation argues that free software is a moral issue, th=
at it is wrong to not let a user control their computer.<br>The end game fo=
r the FSF is that people no longer keep code secret. As one can imagine sin=
ce the major point of BSD like licenses is to allow things to be taken secr=
et, Free Software proponents do *not* like BSD licenses.<br>
<br>
Open source is a term introduced by The Open Source Initiative ( Eric Raymo=
nd )<br>
The Open Source Initiative argues that open source is a better development =
method and does not argue that it is a moral issue.<br>
The term open source is supposed to be less confusing than Free ( as in fre=
edom) software.<br><br>Then there are Liberal Licenses (MIT/ three clause B=
SD) these are meant to be more corporate friendly. <br><br>It is a complica=
ted subject but we do have terms that can be unambiguous. <br>
<br>PPS: foomatic uses libxml2 as well. Please do not write a new xml parse=
r. Here is a list of xml pasers and their licenses: <a href=3D"http://lars.=
ruoff.free.fr/xmlcpp/">http://lars.ruoff.free.fr/xmlcpp/</a> It appears tha=
t &quot;expat&quot; would fit our goals (small, written in C, and under MIT=
).<br>
<br><div class=3D"gmail_quote">2012/2/1 Ira McDonald <span dir=3D"ltr">&lt;=
<a href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt;<=
/span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
Hi, <br><br>Minutes from today&#39;s Open Printing <span>monthly</span> tel=
econference are posted at:<br>
<br>
=C2=A0<a href=3D"ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-20120201.=
htm" target=3D"_blank">ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-201=
20201.htm</a><br>
<br>ACTION - All - Identify additional print/image filters for GSoC<br><br>=
Final agenda for joint PWG / OP Summit 24-27 April 2012 is listed in<br>the=
se minutes.<br><br>
Next <span>OP</span> teleconferences:<br>(1) March 2012 - US/Europe - OP Mo=
nthly Meeting<br>=C2=A0=C2=A0=C2=A0 - Wednesday 7 March 2012, Daytime<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - US<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 9am in San Francisco - US PST (Pacific Standard Time)<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10am in Colorado - US MST (Mountain Stand=
ard Time)<br>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11am in Chicago - US CST (Centra=
l Standard Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12pm in New =
York - US EST (Eastern Standard Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - E=
urope<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6pm in Berlin - CET (Ce=
ntral European Time)<br><br>=C2=A0=C2=A0=C2=A0 * Main Number (Till Kamppete=
r, LF, leader)<br>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 International: <a href=3D"tel:%2B1-218-936-7=
999" value=3D"+12189367999" target=3D"_blank">+1-218-936-7999</a><br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 Access Code:=C2=A0=C2=A0 491659#<br><br>(2) April =
2012 - US/Europe - OP Monthly Meeting - tentative<br>=C2=A0=C2=A0=C2=A0 - N=
ote - US Daylight Savings Time starts 11 March 2012<br>
=C2=A0=C2=A0=C2=A0 - Note - Europe Summer Time starts 25 March 2012<br>
<br>=C2=A0=C2=A0=C2=A0 - Wednesday 4 April 2012, Daytime<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 - US<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 9am in S=
an Francisco - US PDT (Pacific Daylight Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 10am in Colorado - US MDT (Mountain Daylight Time)<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11am in Chicago - US CDT (Centra=
l Daylight Time)<br>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12pm in New York - US EDT (Easte=
rn Daylight Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Europe<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6pm in Berlin - CEST (Central European Su=
mmer Time)<br><br>=C2=A0=C2=A0=C2=A0 * Main Number (Till Kamppeter, LF, lea=
der)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 International: <a href=3D"tel:%2B1-2=
18-936-7999" value=3D"+12189367999" target=3D"_blank">+1-218-936-7999</a><b=
r>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Access Code:=C2=A0=C2=A0 491659#<br><br>Chee=
rs,<br>- Ira<br clear=3D"all"><br>Ira McDonald (Musician / Software Archite=
ct)<br>Chair - Linux Foundation Open Printing WG<br>Secretary - IEEE-ISTO P=
rinter Working Group<br>Co-Chair - IEEE-ISTO PWG IPP WG<br>

Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - TCG Embedded System=
s Hardcopy SG<br>IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roo=
f Music/High North Inc<br><a style=3D"color:rgb(51,51,255)" href=3D"http://=
sites.google.com/site/blueroofmusic" target=3D"_blank">http://sites.google.=
com/site/blueroofmusic</a><br>

<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluer=
oofmusic@gmail.com</a><br>

Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 <a href=3D"t=
el:734-944-0094" value=3D"+17349440094" target=3D"_blank">734-944-0094</a><=
br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 <a href=3D"te=
l:906-494-2434" value=3D"+19064942434" target=3D"_blank">906-494-2434</a><d=
iv style=3D"display:inline">
</div><div style=3D"display:inline"></div><div style=3D"display:inline"></d=
iv><div>
</div><div></div><div></div><div></div><br>
<div></div>
<br>_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
<br></blockquote></div><br>

--f46d044480dfb0c06d04b7fefff5--
