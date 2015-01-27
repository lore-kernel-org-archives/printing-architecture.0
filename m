Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sBXIdnHDEV+gM7DZeRuMysOfyc9uE8N/11CfL/ipCOM=;
	b=hrq4Z5c2cluPRYbsmv+ETL23zoIb9GlEsB6dV9iv1m0kOLYOyOffK0rbW2m1p9Cg2n
	alhDHe391zEjRsJz2TQp02gy+u5aXYKOOZdmovgoZrWlsaV1pmV0Hb7roqpJUydj7Is+
	Ln6TxcWu3z91b3A/dcxZM5Jk01HGic6rI0Hxk5jzt57CE6WcajVVG/ZTajBpoG3q8Z+B
	EEtfzAd6obb+aZasA0AqshvlUp6+pf+/nbiNWIDfOQ2pmfpdwO/6qTvGcYE6BgKE7t8a
	rJ8ImOZuxuwaAXnu3AvtDk0ZZI6qT9I+bVkntlr79TZbaoQKubcrx7zSuwYQhGI8yD0u
	CzEw==
MIME-Version: 1.0
In-Reply-To: <54C65044.7030501@gmail.com>
References: <54C65044.7030501@gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Mon, 26 Jan 2015 20:59:33 -0500
Message-ID: <CAN40gStNSnXwgw7r-cdXHGiLk10LPQj2Uq1qYh+CmRjZNuO-bg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d04388df167d623050d989cb7
Subject: Re: [Printing-architecture] Projects for GSoC 2015: Implementing
	PWG standards
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: Printing-architecture@lists.linux-foundation.org

--f46d04388df167d623050d989cb7
Content-Type: text/plain; charset=UTF-8

Hi Till,

Inline in BLUE

Cheers,
- Ira


On Mon, Jan 26, 2015 at 9:33 AM, Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Hi,
>
> I would like to open some student projects implementing PWG and IPP
> standards, especially for the following three areas:
>
> 1. Printer maintenance
> ----------------------
>
> system-config-printer should get a printer maintenance part doing things
> like firmware update, ink/toner/consumable check, assign paper sizes/types
> to trays, ... The part should be completely based in standards to work with
> all conforming printers (IPP and IPP-over-USB).
>

<ira> The IPP standard for uploading firmware will only be in the
work-in-progress
IPP System Service (milestone of Q3/Q4 2015 for Prototype draft).
Actually doing
the reboot to the new firmware is currently just an idea of mine for a new
operation
in IPP System Service.

Not sure at all about assigning paper sizes/types to trays - certainly IPP
System
Service will only be able to READ (but not WRITE) summaries of Printer MIB
subunits (e.g. InputTray) - might be able to be done with IPP JPS3 by
setting the
"printer-input-tray", "media-source", and/or "media-source-properties".
- Mike?

>
> <...snip...>
>


> Before creating the descriptions of the project ideas and posting them I
> want to ask for some help:
>
> 1. Which PWG standards have to be implemented for each of the ideas above?
>
> 2. Would these be feasable by one student in one GSoC or are there
> suggestions to split the projects to get them doe by more than one student?
>
> 3. Are there further ideas which we could post for the GSoC?
>
> I appreciate any contribution.
>
>    Till
>

--f46d04388df167d623050d989cb7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Till,<br><br>Inline in <span style=3D"color:rgb(51,51,255)">BLUE</span><=
br><br>Cheers,<br>- Ira<br><div><div class=3D"gmail_signature"><div dir=3D"=
ltr"><br><div style=3D"display:inline"></div><div style=3D"display:inline">=
</div><div style=3D"display:inline"></div><div></div><div></div><div></div>=
<div></div></div></div></div>
<br><div class=3D"gmail_quote">On Mon, Jan 26, 2015 at 9:33 AM, Till Kamppe=
ter <span dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter@gmail.com" targe=
t=3D"_blank">till.kamppeter@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">Hi,<br>
<br>
I would like to open some student projects implementing PWG and IPP standar=
ds, especially for the following three areas:<br>
<br>
1. Printer maintenance<br>
----------------------<br>
<br>
system-config-printer should get a printer maintenance part doing things li=
ke firmware update, ink/toner/consumable check, assign paper sizes/types to=
 trays, ... The part should be completely based in standards to work with a=
ll conforming printers (IPP and IPP-over-USB).<br></blockquote><div><br><sp=
an style=3D"color:rgb(51,51,255)">&lt;ira&gt; The IPP standard for uploadin=
g firmware will only be in the work-in-progress<br>IPP System Service (mile=
stone of Q3/Q4 2015 for Prototype draft). =C2=A0 Actually doing<br>the rebo=
ot to the new firmware is currently just an idea of mine for a new operatio=
n<br>in IPP System Service.<br><br>Not sure at all about assigning paper si=
zes/types to trays - certainly IPP System <br>Service will only be able to =
READ (but not WRITE) summaries of Printer MIB <br>subunits (e.g. InputTray)=
 - might be able to be done with IPP JPS3 by setting the <br>&quot;printer-=
input-tray&quot;, &quot;media-source&quot;, and/or &quot;media-source-prope=
rties&quot;.<br>- Mike?</span><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&lt;...snip...&gt;<br></blockquote><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">
Before creating the descriptions of the project ideas and posting them I wa=
nt to ask for some help:<br>
<br>
1. Which PWG standards have to be implemented for each of the ideas above?<=
br>
<br>
2. Would these be feasable by one student in one GSoC or are there suggesti=
ons to split the projects to get them doe by more than one student?<br>
<br>
3. Are there further ideas which we could post for the GSoC?<br>
<br>
I appreciate any contribution.<span class=3D"HOEnZb"><font color=3D"#888888=
"><br>
<br>
=C2=A0 =C2=A0Till<br>
</font></span></blockquote></div><br>

--f46d04388df167d623050d989cb7--
