Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MjKEtxjfDk9k0/QdXvSK8s0743tY18G4zfeU2t4WVpQ=;
	b=o+46FQdrayJ2YT9WomySlVJzefMSl533YuCPJlToIbipsnEf4I0nJjAI18ovEIM5vc
	4dmkqCcdgMoLrGagAlVzTuGjC8tRHKXpS6rXyHq2t+5R75xgPwbpsYqJawQFHJWkwRG6
	GuBCf7GyQWr6tiGQvGSiox+XAE6GbPag0H2Veyr809PPojT9JnmM9TwRexsYJRZa6uvv
	kS0Zf4iwwGpM/ejFrf9NHNGO+2uK4+1pNjqPfXWKEYIlXBwmM6AkiXXNZgr2EeN4kv98
	PSp4qXTQCswgwPAApjHFnSU4HQssrEcvoyddWYKH4nEhC+6Q+kQXhBCOUIScTZZTo8jU
	R+AQ==
MIME-Version: 1.0
In-Reply-To: <E8C3B9E653C80C48B0951F8494C049A938F32A@EEAEX02.us.epson.net>
References: <CAN40gSuYBV51pJ3hmCrbup2XnavgCbVT5JDXqxiuRYDJk78BQw@mail.gmail.com>
	<CAGC3nLDxxYjy7ydTqUHncKW9CCLqTiGyP0t-E_Wqf3pob1avDg@mail.gmail.com>
	<CAN40gSsksMRO2+r8uZ_=VPaxKRbb3GZBdd7WpmPZYGuEcqnSEQ@mail.gmail.com>
	<E8C3B9E653C80C48B0951F8494C049A938EE7F@EEAEX02.us.epson.net>
	<CAN40gSuby6vu-=7O5fPLvq_Xh1ZPZGUXBf6oDB+Y424BDkNAVw@mail.gmail.com>
	<E8C3B9E653C80C48B0951F8494C049A938EED6@EEAEX02.us.epson.net>
	<CAN40gSv=_hVv92S9pBtYfBg_y_NjqwDE=syGA-hC6UOmMFUELg@mail.gmail.com>
	<E8C3B9E653C80C48B0951F8494C049A938EEE3@EEAEX02.us.epson.net>
	<CAGC3nLC=k_5HoLVxXhnXi9xf7qk4SRmULWirzfBgmqJxKVigag@mail.gmail.com>
	<E8C3B9E653C80C48B0951F8494C049A938EF1C@EEAEX02.us.epson.net>
	<CAGC3nLDK3ZxTznwYeUf1yNeW+OuG4PA2BOCgM-=OKXD8iTnbDw@mail.gmail.com>
	<CAGC3nLB1aE9YgsXzrOOZiR55rdRQATsMhUReuXbeVp=EFQsQUw@mail.gmail.com>
	<E8C3B9E653C80C48B0951F8494C049A938EF80@EEAEX02.us.epson.net>
	<CAN40gSv7pss6zAoFejK=egUpWVtKqOV2etRk08y=Gx--bgYkhg@mail.gmail.com>
	<E8C3B9E653C80C48B0951F8494C049A938F32A@EEAEX02.us.epson.net>
Date: Mon, 9 Apr 2012 11:36:34 -0400
Message-ID: <CAN40gSsdx5V3tj+goo=mFXtiBG6SNC-opdAR4pzyNk_5bWa6jw@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: multipart/alternative; boundary=f46d044288bc76325404bd40c5e8
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

--f46d044288bc76325404bd40c5e8
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Glen,

Right - my concern is that JTAPI reference implementation should
normatively reference the source job ticket specification(s).

MJT is dead-in-the-water as a PWG effort - but is copyrighted by
PWG - therefore, not suitable for a normative reference.

Also MJT does NOT address any of the post-IPP/1.1 (RFC 2911)
properties in the PWG Print Job Ticket (i.e., the vast majority of
the content in PWG PJT) - neither does the original JTAPI spec.

I suggest a testing-only serialization of the internal JTAPI JT
would be best for the OP JTAPI reference implementation.

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



On Mon, Apr 9, 2012 at 10:46 AM, Petrie, Glen <glen.petrie@eitc.epson.com>w=
rote:

> ** ** ** ** ** **
>
> Ira,****
>
> ** **
>
> What exactly is your concern?   That the MJT is not official? Not
> complete? Copyrighted? ****
>
> ** **
>
> Why are you under the impression that OP would copy the PWG:MJT
> specification to an OP:MJT specification.  Maybe I missed something in on=
e
> of the emails.  The only intent is use the PWG:MJT for the first JTAPI
> implementation.  ****
>
> ** **
>
> Maybe it would be better not to use MJT.   JTAPI (its objects, elements,
> attributes and values), in itself, is a job ticket.   If the JTAPI projec=
t
> uses a JTAPI JT, then it can test all the features in JTAPI.****
>
> ** **
>
> I will examine the JTAPI documentation and code to create a JTAPI JT
> specification.   ****
>
> ** **
>
> Glen****
>
> ** **
>
> ** **
>
> ** **
>  ------------------------------
>
> *From:* Ira McDonald [mailto:blueroofmusic@gmail.com]
> *Sent:* Tuesday, April 03, 2012 12:44 PM
>
> *To:* Petrie, Glen; Ira McDonald
> *Cc:* Daniel Dressler; printing-architecture@lists.linux-foundation.org;
> printing-summit@lists.linux-foundation.org
> *Subject:* Re: [Printing-summit] [Printing-architecture] OPS
> Preparationminutes (28 March 2012)****
>
>  ** **
>
> Hi,
>
> The MJT is a *first* draft whitepaper in the PWG - NOT a standard
> or even a working draft in a chartered PWG working group.
>
> Nonetheless, that whitepaper carries a PWG copyright (it was a
> public submission by me, the sole author).  So *I* can submit an
> updated draft whitepaper to the PWG at any time.
>
> But the MJT spec can't just be copied into an Open Printing document
> format and reissued as an OP working draft without a written copyright
> release from PWG.
>
> MJT covers the most common Job attributes - specifically the subset
> originally defined in IPP/1.0 (RFC 2566 - now obsoleted by RFC 2911).
>
> Cheers,
> - Ira
>
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
>
>
> ****
>
> On Mon, Apr 2, 2012 at 5:37 PM, Petrie, Glen <glen.petrie@eitc.epson.com>
> wrote:****
>
> The issue with the MJT is if we want to change something, then we need to
> go back to the PWG.   But, unless Ira disagrees, I see no reason to chang=
e
> the MJT for this phase of the JTAPI development.    Perhaps, the MJT will
> not exercise all of the functionality of the JTAPI; in that case, we will
> add a =93vendor extension=94 which would actually be a good thing, becaus=
e
> JTAPI must handle vendor extension at some point.****
>
>  ****
>
> Glen****
>
>  ****
>
>  ****
>  ------------------------------
>
> *From:* printing-architecture-bounces@lists.linux-foundation.org [mailto:
> printing-architecture-bounces@lists.linux-foundation.org] *On Behalf Of *=
Daniel
> Dressler
> *Sent:* Monday, April 02, 2012 2:27 PM
> *To:* Petrie, Glen****
>
>
> *Cc:* printing-architecture@lists.linux-foundation.org;
> printing-summit@lists.linux-foundation.org
> *Subject:* Re: [Printing-architecture] [Printing-summit] OPS
> Preparationminutes (28 March 2012)****
>
>  ****
>
> To continue my last email I wanted to say that I would like it if Glen
> continued to be my mentor. My biggest concern is about code quality and I
> think he can provide the criticism and code review I need to improve. ***=
*
>
>
> What exactly is the issue with implementing a micro job ticket backend? I=
t
> was my understanding that MJT would be a simple job ticket format and thu=
s
> a good one to implement as an example/development backend. Is there a
> reason we might need to alter the MJT standard?
>
> Daniel****
>
>  ****
>
>
> _______________________________________________
> Printing-summit mailing list
> Printing-summit@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-summit****
>
> ** **
>

--f46d044288bc76325404bd40c5e8
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Glen,<br><br>Right - my concern is that JTAPI reference implementation s=
hould<br>normatively reference the source job ticket specification(s).<br><=
br>MJT is dead-in-the-water as a PWG effort - but is copyrighted by<br>PWG =
- therefore, not suitable for a normative reference.<br>
<br>Also MJT does NOT address any of the post-IPP/1.1 (RFC 2911)<br>propert=
ies in the PWG Print Job Ticket (i.e., the vast majority of<br>the content =
in PWG PJT) - neither does the original JTAPI spec.<br><br>I suggest a test=
ing-only serialization of the internal JTAPI JT<br>
would be best for the OP JTAPI reference implementation.<br><br>Cheers,<br>=
- Ira<br><br clear=3D"all">Ira McDonald (Musician / Software Architect)<br>=
Chair - Linux Foundation Open Printing WG<br>Secretary - IEEE-ISTO Printer =
Working Group<br>
Co-Chair - IEEE-ISTO PWG IPP WG<br>Co-Chair - TCG Trusted Mobility Solution=
s WG<br>Chair - TCG Embedded Systems Hardcopy SG<br>IETF Designated Expert =
- IPP &amp; Printer MIB<br>Blue Roof Music/High North Inc<br><a style=3D"co=
lor:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" tar=
get=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br>
<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluer=
oofmusic@gmail.com</a><br>
Winter=A0 579 Park Place=A0 Saline, MI=A0 48176=A0 734-944-0094<br>Summer=
=A0 PO Box 221=A0 Grand Marais, MI 49839=A0 906-494-2434<div style=3D"displ=
ay:inline"></div><div style=3D"display:inline"></div><div style=3D"display:=
inline"></div><div>
</div><div></div><div></div><div></div><br>
<br><br><div class=3D"gmail_quote">On Mon, Apr 9, 2012 at 10:46 AM, Petrie,=
 Glen <span dir=3D"ltr">&lt;<a href=3D"mailto:glen.petrie@eitc.epson.com">g=
len.petrie@eitc.epson.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">





<u></u>
<u></u>
<u></u>
<u></u>
<u></u>
<u></u>





<div link=3D"blue" vlink=3D"blue" lang=3D"EN-US">

<div>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Ira,<u></u><u>=
</u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=A0<u><=
/u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">What exactly i=
s your
concern?=A0=A0 That the MJT is not official? Not complete? Copyrighted? <u>=
</u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=A0<u><=
/u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Why are you un=
der the impression that OP
would copy the PWG:MJT specification to an OP:MJT specification.=A0 Maybe I
missed something in one of the emails.=A0 The only intent is use the PWG:MJ=
T
for the first JTAPI implementation.=A0 <u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=A0<u><=
/u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Maybe it would=
 be better not to use
MJT.=A0=A0 JTAPI (its objects, elements, attributes and values), in
itself, is a job ticket. =A0=A0If the JTAPI project uses a JTAPI JT, then
it can test all the features in JTAPI.<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=A0<u><=
/u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">I will examine=
 the JTAPI documentation
and code to create a JTAPI JT specification.=A0=A0 <u></u><u></u></span></f=
ont></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=A0<u><=
/u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Glen<u></u><u>=
</u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=A0<u><=
/u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=A0<u><=
/u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=A0<u><=
/u></span></font></p>

<div>

<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><font=
 face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12.0pt">

<hr align=3D"center" size=3D"2" width=3D"100%">

</span></font></div>

<p class=3D"MsoNormal"><b><font face=3D"Tahoma"><span style=3D"font-size:10=
.0pt;font-family:Tahoma;font-weight:bold">From:</span></font></b><font face=
=3D"Tahoma"><span style=3D"font-size:10.0pt;font-family:Tahoma"> Ira McDona=
ld
[mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluero=
ofmusic@gmail.com</a>] <br>
<b><span style=3D"font-weight:bold">Sent:</span></b> Tuesday, April 03, 201=
2
12:44 PM</span></font></p><div class=3D"im"><font face=3D"Tahoma"><br>
<b><span style=3D"font-weight:bold">To:</span></b> Petrie, Glen; Ira McDona=
ld<br>
<b><span style=3D"font-weight:bold">Cc:</span></b> Daniel Dressler;
<a href=3D"mailto:printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">printing-architecture@lists.linux-foundation.org</a>;
<a href=3D"mailto:printing-summit@lists.linux-foundation.org" target=3D"_bl=
ank">printing-summit@lists.linux-foundation.org</a><br>
</font></div><font face=3D"Tahoma"><b><span style=3D"font-weight:bold">Subj=
ect:</span></b> Re: [Printing-summit]
[Printing-architecture] OPS Preparationminutes (28 March 2012)</font><u></u=
><u></u><p></p>

</div><div><div class=3D"h5">

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=A0<u></u></span></font></p>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">Hi,<br>
<br>
The MJT is a *first* draft whitepaper in the PWG - NOT a standard<br>
or even a working draft in a chartered PWG working group.<br>
<br>
Nonetheless, that whitepaper carries a PWG copyright (it was a<br>
public submission by me, the sole author).=A0 So *I* can submit an <br>
updated draft whitepaper to the PWG at any time.<br>
<br>
But the MJT spec can&#39;t just be copied into an Open Printing document <b=
r>
format and reissued as an OP working draft without a written copyright <br>
release from PWG.<br>
<br>
MJT covers the most common Job attributes - specifically the subset<br>
originally defined in IPP/1.0 (RFC 2566 - now obsoleted by RFC 2911).<br>
<br>
Cheers,<br>
- Ira<br>
<br>
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
Winter=A0 <u></u><u></u>579 Park Place<u></u>=A0
 <u></u>Saline<u></u>, <u></u>MI<u></u>=A0
 <u></u>48176<u></u><u></u>=A0 <a href=3D"tel:734-944-0094" value=3D"+17349=
440094" target=3D"_blank">734-944-0094</a><br>
Summer=A0 <u></u><u></u>PO Box<u></u>
 221<u></u>=A0 Grand <u></u><u></u>Marais<u></u>,
 <u></u>MI<u></u> <u></u>49839<u></u><u></u>=A0
<a href=3D"tel:906-494-2434" value=3D"+19064942434" target=3D"_blank">906-4=
94-2434</a><u></u><u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt"><br>
<br>
<u></u><u></u></span></font></p>

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">On Mon, Apr 2, 2012 at 5:37 PM, Petrie, Glen &lt;<a =
href=3D"mailto:glen.petrie@eitc.epson.com" target=3D"_blank">glen.petrie@ei=
tc.epson.com</a>&gt;
wrote:<u></u><u></u></span></font></p>

<div link=3D"blue" vlink=3D"blue">

<div>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">The issue with=
 the MJT is if we want to change something, then we
need to go back to the PWG.=A0=A0 But, unless Ira disagrees, I see no
reason to change the MJT for this phase of the JTAPI
development.=A0=A0=A0 Perhaps, the MJT will not exercise all of the
functionality of the JTAPI; in that case, we will add a =93vendor
extension=94 which would actually be a good thing, because JTAPI must
handle vendor extension at some point.</span></font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=A0</span></fo=
nt><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Glen</span></f=
ont><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=A0</span></fo=
nt><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=A0</span></fo=
nt><u></u><u></u></p>

<div>

<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><font=
 face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12.0pt">

<hr align=3D"center" size=3D"2" width=3D"100%">

</span></font></div>

<p class=3D"MsoNormal"><b><font face=3D"Tahoma"><span style=3D"font-size:10=
.0pt;font-family:Tahoma;font-weight:bold">From:</span></font></b><font face=
=3D"Tahoma"><span style=3D"font-size:10.0pt;font-family:Tahoma"> <a href=3D=
"mailto:printing-architecture-bounces@lists.linux-foundation.org" target=3D=
"_blank">printing-architecture-bounces@lists.linux-foundation.org</a>
[mailto:<a href=3D"mailto:printing-architecture-bounces@lists.linux-foundat=
ion.org" target=3D"_blank">printing-architecture-bounces@lists.linux-founda=
tion.org</a>] <b><span style=3D"font-weight:bold">On Behalf Of </span></b>D=
aniel Dressler<br>

<b><span style=3D"font-weight:bold">Sent:</span></b> Monday, April 02, 2012=
 2:27
PM<br>
<b><span style=3D"font-weight:bold">To:</span></b> Petrie, Glen</span></fon=
t><u></u><u></u></p>

<div>

<p class=3D"MsoNormal"><font face=3D"Tahoma" size=3D"3"><span style=3D"font=
-size:12.0pt;font-family:Tahoma"><br>
<b><span style=3D"font-weight:bold">Cc:</span></b> <a href=3D"mailto:printi=
ng-architecture@lists.linux-foundation.org" target=3D"_blank">printing-arch=
itecture@lists.linux-foundation.org</a>;
<a href=3D"mailto:printing-summit@lists.linux-foundation.org" target=3D"_bl=
ank">printing-summit@lists.linux-foundation.org</a><br>
<b><span style=3D"font-weight:bold">Subject:</span></b> Re: [Printing-archi=
tecture]
[Printing-summit] OPS Preparationminutes (28 March 2012)</span></font><u></=
u><u></u></p>

</div>

</div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">=A0<u></u><u></u></span></font></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt">To continue my
last email I wanted to say that I would like it if Glen continued to be my
mentor. My biggest concern is about code quality and I think he can provide=
 the
criticism and code review I need to improve. <u></u><u></u></span></font></=
p>

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><br>
What exactly is the issue with implementing a micro job ticket backend? It =
was
my understanding that MJT would be a simple job ticket format and thus a go=
od
one to implement as an example/development backend. Is there a reason we mi=
ght
need to alter the MJT standard?<br>
<br>
Daniel<u></u><u></u></span></font></p>

</div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">=A0<u></u><u></u></span></font></p>

</div>

</div>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt"><br>
_______________________________________________<br>
Printing-summit mailing list<br>
<a href=3D"mailto:Printing-summit@lists.linux-foundation.org" target=3D"_bl=
ank">Printing-summit@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-summ=
it" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listinfo/pr=
inting-summit</a><u></u><u></u></span></font></p>

</div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=A0<u></u></span></font></p>

</div></div></div>

</div>


</blockquote></div><br>

--f46d044288bc76325404bd40c5e8--
