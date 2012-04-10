Return-Path: <danieru.dressler@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xGm85Dsy4VVh8QKWpO8TLloYd6n0V8I7FCCT5gl2Xwo=;
	b=Zkpvlp4huhZSNybAtF0uI+XwDOv+Cx/2r9OKclhh92Pkjox87lvuEcBP2rdWBTOtUL
	h/gpYYUmK7Z2StHrUc6MEW1z7hvJG24np856S9zc2jTYhhLV5EBXFkjy+cT0+fLb6fUs
	YYSBdr/gvfWpiBFm+ErZSK/s8VjmSdT9WQMb0VAGwX380s898hiSfz8Q0bAOcnBMqSTe
	RONs5TozKGuysLj/GIpi+8tT2yKRf8I2FVX9erVjJHuLwV7FuX1Qpd9BZ9k0GOhaRx4o
	9L+hK6LTpBl4wwAO7EsIGGszHUT8CUGrRnNbS7f878FNT2+LIpgubBhc0E4yhYfd1GtO
	227A==
MIME-Version: 1.0
In-Reply-To: <E8C3B9E653C80C48B0951F8494C049A938F3BF@EEAEX02.us.epson.net>
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
	<E8C3B9E653C80C48B0951F8494C049A938F3BF@EEAEX02.us.epson.net>
Date: Mon, 9 Apr 2012 18:08:22 -0600
Message-ID: <CAGC3nLDsZojewNNVNaraFiit7=5Pj1Yi_MHhT7OXftN-igqXQg@mail.gmail.com>
From: Daniel Dressler <danieru.dressler@gmail.com>
Content-Type: multipart/alternative; boundary=e89a8ff253fcc15bd604bd47eb65
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
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

--e89a8ff253fcc15bd604bd47eb65
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Glen

Actually I don't think that clause would give us the opportunity to alter
the spec. Only to provide in-line documentation on the existing spec.

I'm not fond of the idea of creating yet another job ticket format. Ira
suggested that we use a simple serialisation of the internal data, which I
think is an acceptable option.

I would like a super-thin format for testing and the only thing thinner
than serialisation I can think of is a binary dump. Plus since it will
break all the time we do not have to worry about it escaping into the wild.

Ira, if pwg has new properties does that mean jtapi will need an update?
Are the changes mostly aditive? By that I mean is it safe to implement the
current jtapi spec with the expectation that jtapi 2.0 will simply be
larger?

Daniel

2012=E5=B9=B44=E6=9C=889=E6=97=A515:31 Petrie, Glen <glen.petrie@eitc.epson=
.com>:

> ** ** ** ** ** **
>
> Ira,****
>
> ** **
>
> As a reference I copied the Copyright license from a PWG candidate
> standard which is copied below; I believe the license would give OP the
> right to create an MJT specification from a PWG:MJT specification.
> However, creating a new OP:JTAPI:JT specification to exercise JTAPI and t=
o
> be used as an example for other readers, writers, or convertors would be
> much better.****
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
>
> ** **
>
> This document may be copied and furnished to others, and derivative works
> that comment on, or otherwise ****
>
> explain it or assist in its implementation may be prepared, copied,
> published and distributed, in whole or in ****
>
> part, without restriction of any kind, provided that the above copyright
> notice, this paragraph and the title of ****
>
> the Document as referenced below are included on all such copies and
> derivative works.  ****
>
> ** **
>
> ** **
>  ------------------------------
>
> *From:* Ira McDonald [mailto:blueroofmusic@gmail.com]
> *Sent:* Monday, April 09, 2012 8:37 AM
>
> *To:* Petrie, Glen; Ira McDonald
> *Cc:* Daniel Dressler; printing-architecture@lists.linux-foundation.org;
> printing-summit@lists.linux-foundation.org
> *Subject:* Re: [Printing-summit] [Printing-architecture] OPS
> Preparationminutes (28 March 2012)
> ****
>
>  ** **
>
> Hi Glen,
>
>
> Right - my concern is that JTAPI reference implementation should
> normatively reference the source job ticket specification(s).
>
> MJT is dead-in-the-water as a PWG effort - but is copyrighted by
> PWG - therefore, not suitable for a normative reference.
>
> Also MJT does NOT address any of the post-IPP/1.1 (RFC 2911)
> properties in the PWG Print Job Ticket (i.e., the vast majority of
> the content in PWG PJT) - neither does the original JTAPI spec.
>
> I suggest a testing-only serialization of the internal JTAPI JT
> would be best for the OP JTAPI reference implementation.
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
>
>
> ****
>
> On Mon, Apr 9, 2012 at 10:46 AM, Petrie, Glen <glen.petrie@eitc.epson.com=
>
> wrote:****
>
> Ira,****
>
>  ****
>
> What exactly is your concern?   That the MJT is not official? Not
> complete? Copyrighted? ****
>
>  ****
>
> Why are you under the impression that OP would copy the PWG:MJT
> specification to an OP:MJT specification.  Maybe I missed something in on=
e
> of the emails.  The only intent is use the PWG:MJT for the first JTAPI
> implementation.  ****
>
>  ****
>
> Maybe it would be better not to use MJT.   JTAPI (its objects, elements,
> attributes and values), in itself, is a job ticket.   If the JTAPI projec=
t
> uses a JTAPI JT, then it can test all the features in JTAPI.****
>
>  ****
>
> I will examine the JTAPI documentation and code to create a JTAPI JT
> specification.   ****
>
>  ****
>
> Glen****
>
>  ****
>
>  ****
>
>  ****
>  ------------------------------
>
> *From:* Ira McDonald [mailto:blueroofmusic@gmail.com]
> *Sent:* Tuesday, April 03, 2012 12:44 PM****
>
>
> *To:* Petrie, Glen; Ira McDonald
> *Cc:* Daniel Dressler; printing-architecture@lists.linux-foundation.org;
> printing-summit@lists.linux-foundation.org****
>
> *Subject:* Re: [Printing-summit] [Printing-architecture] OPS
> Preparationminutes (28 March 2012)****
>
>  ****
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
> ** **
>
> On Mon, Apr 2, 2012 at 5:37 PM, Petrie, Glen <glen.petrie@eitc.epson.com>
> wrote:****
>
> The issue with the MJT is if we want to change something, then we need to
> go back to the PWG.   But, unless Ira disagrees, I see no reason to chang=
e
> the MJT for this phase of the JTAPI development.    Perhaps, the MJT will
> not exercise all of the functionality of the JTAPI; in that case, we will
> add a =E2=80=9Cvendor extension=E2=80=9D which would actually be a good t=
hing, because
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
>  ****
>
> ** **
>

--e89a8ff253fcc15bd604bd47eb65
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Glen<br><br>Actually I don&#39;t think that clause would give us the =
opportunity to alter the spec. Only to provide in-line documentation on the=
 existing spec.<br><br>I&#39;m not fond of the idea of creating yet another=
 job ticket format. Ira suggested that we use a simple serialisation of the=
 internal data, which I think is an acceptable option.<br>
<br>I would like a super-thin format for testing and the only thing thinner=
 than serialisation I can think of is a binary dump. Plus since it will bre=
ak all the time we do not have to worry about it escaping into the wild.<br=
>
<br>Ira, if pwg has new properties does that mean jtapi will need an update=
? Are the changes mostly aditive? By that I mean is it safe to implement th=
e current jtapi spec with the expectation that jtapi 2.0 will simply be lar=
ger?<br>
<br>Daniel<br><br><div class=3D"gmail_quote">2012=E5=B9=B44=E6=9C=889=E6=97=
=A515:31 Petrie, Glen <span dir=3D"ltr">&lt;<a href=3D"mailto:glen.petrie@e=
itc.epson.com">glen.petrie@eitc.epson.com</a>&gt;</span>:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">





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
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">As a reference=
 I copied the Copyright
license from a PWG candidate standard which is copied below; I believe the
license would give OP the right to create an MJT specification from a PWG:M=
JT specification.=C2=A0
However, creating a new OP:JTAPI:JT specification to exercise JTAPI and to =
be
used as an example for other readers, writers, or convertors would be much =
better.<u></u><u></u></span></font></p>

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

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">This document =
may be copied and
furnished to others, and derivative works that comment on, or otherwise <u>=
</u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">explain it or =
assist in its
implementation may be prepared, copied, published and distributed, in whole=
 or
in <u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">part, without =
restriction of any kind, provided
that the above copyright notice, this paragraph and the title of <u></u><u>=
</u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">the Document a=
s referenced below are
included on all such copies and derivative works.=C2=A0 <u></u><u></u></spa=
n></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue"><u></u>=C2=A0<=
u></u></span></font></p>

<div>

<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><font=
 face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12.0pt">

<hr size=3D"2" width=3D"100%" align=3D"center">

</span></font></div>

<p class=3D"MsoNormal"><b><font face=3D"Tahoma"><span style=3D"font-size:10=
.0pt;font-family:Tahoma;font-weight:bold">From:</span></font></b><font face=
=3D"Tahoma"><span style=3D"font-size:10.0pt;font-family:Tahoma"> Ira McDona=
ld
[mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluero=
ofmusic@gmail.com</a>] <br>
<b><span style=3D"font-weight:bold">Sent:</span></b> Monday, April 09, 2012=
 8:37
AM</span></font></p><div class=3D"im"><font face=3D"Tahoma"><br>
<b><span style=3D"font-weight:bold">To:</span></b> Petrie, Glen; Ira McDona=
ld<br>
<b><span style=3D"font-weight:bold">Cc:</span></b> Daniel Dressler;
<a href=3D"mailto:printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">printing-architecture@lists.linux-foundation.org</a>;
<a href=3D"mailto:printing-summit@lists.linux-foundation.org" target=3D"_bl=
ank">printing-summit@lists.linux-foundation.org</a><br>
<b><span style=3D"font-weight:bold">Subject:</span></b> Re: [Printing-summi=
t]
[Printing-architecture] OPS Preparationminutes (28 March 2012)</font></div>=
<u></u><u></u><p></p>

</div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=C2=A0<u></u></span></font></p>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">Hi Glen,</span></font></p><div class=3D"im"><font fa=
ce=3D"Times New Roman" size=3D"3"><br>
<br>
Right - my concern is that JTAPI reference implementation should<br>
normatively reference the source job ticket specification(s).<br>
<br>
MJT is dead-in-the-water as a PWG effort - but is copyrighted by<br>
PWG - therefore, not suitable for a normative reference.<br>
<br>
Also MJT does NOT address any of the post-IPP/1.1 (RFC 2911)<br>
properties in the PWG Print Job Ticket (i.e., the vast majority of<br>
the content in PWG PJT) - neither does the original JTAPI spec.<br>
<br>
I suggest a testing-only serialization of the internal JTAPI JT<br>
would be best for the OP JTAPI reference implementation.<br>
<br></font></div><div class=3D"im"><font face=3D"Times New Roman" size=3D"3=
">
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
94-2434</a><u></u><u></u></font></div><p></p>

<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><font face=3D"Times N=
ew Roman" size=3D"3"><span style=3D"font-size:12.0pt"><br>
<br>
<u></u><u></u></span></font></p>

<div><div class=3D"im">

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">On Mon, Apr 9, 2012 at 10:46 AM, Petrie, Glen &lt;<a=
 href=3D"mailto:glen.petrie@eitc.epson.com" target=3D"_blank">glen.petrie@e=
itc.epson.com</a>&gt;
wrote:<u></u><u></u></span></font></p>

</div><div><div class=3D"h5"><div link=3D"blue" vlink=3D"blue">

<div>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Ira,</span></f=
ont><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">What exactly i=
s your concern?=C2=A0=C2=A0 That the MJT is not
official? Not complete? Copyrighted? </span></font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Why are you un=
der the impression that OP would copy the PWG:MJT
specification to an OP:MJT specification.=C2=A0 Maybe I missed something in=
 one
of the emails.=C2=A0 The only intent is use the PWG:MJT for the first JTAPI
implementation.=C2=A0 </span></font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Maybe it would=
 be better not to use MJT.=C2=A0=C2=A0 JTAPI (its
objects, elements, attributes and values), in itself, is a job ticket.
=C2=A0=C2=A0If the JTAPI project uses a JTAPI JT, then it can test all the
features in JTAPI.</span></font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">I will examine=
 the JTAPI documentation and code to create a JTAPI
JT specification.=C2=A0=C2=A0 </span></font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Glen</span></f=
ont><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<div>

<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><font=
 face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12.0pt">

<hr size=3D"2" width=3D"100%" align=3D"center">

</span></font></div>

<p class=3D"MsoNormal"><b><font face=3D"Tahoma"><span style=3D"font-size:10=
.0pt;font-family:Tahoma;font-weight:bold">From:</span></font></b><font face=
=3D"Tahoma"><span style=3D"font-size:10.0pt;font-family:Tahoma"> Ira McDona=
ld [mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blu=
eroofmusic@gmail.com</a>]
<br>
<b><span style=3D"font-weight:bold">Sent:</span></b> Tuesday, April 03, 201=
2
12:44 PM</span></font><u></u><u></u></p>

<div>

<p class=3D"MsoNormal"><font face=3D"Tahoma" size=3D"3"><span style=3D"font=
-size:12.0pt;font-family:Tahoma"><br>
<b><span style=3D"font-weight:bold">To:</span></b> Petrie, Glen; Ira McDona=
ld<br>
<b><span style=3D"font-weight:bold">Cc:</span></b> Daniel Dressler; <a href=
=3D"mailto:printing-architecture@lists.linux-foundation.org" target=3D"_bla=
nk">printing-architecture@lists.linux-foundation.org</a>;
<a href=3D"mailto:printing-summit@lists.linux-foundation.org" target=3D"_bl=
ank">printing-summit@lists.linux-foundation.org</a></span></font><u></u><u>=
</u></p>

</div>

<p class=3D"MsoNormal"><b><font face=3D"Tahoma" size=3D"3"><span style=3D"f=
ont-size:12.0pt;font-family:Tahoma;font-weight:bold">Subject:</span></font>=
</b><font face=3D"Tahoma"><span style=3D"font-family:Tahoma"> Re: [Printing=
-summit]
[Printing-architecture] OPS Preparationminutes (28 March 2012)</span></font=
><u></u><u></u></p>

</div>

<div>

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">=C2=A0<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">Hi,<br>
<br>
The MJT is a *first* draft whitepaper in the PWG - NOT a standard<br>
or even a working draft in a chartered PWG working group.<br>
<br>
Nonetheless, that whitepaper carries a PWG copyright (it was a<br>
public submission by me, the sole author).=C2=A0 So *I* can submit an <br>
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

<div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">On Mon, Apr 2,
2012 at 5:37 PM, Petrie, Glen &lt;<a href=3D"mailto:glen.petrie@eitc.epson.=
com" target=3D"_blank">glen.petrie@eitc.epson.com</a>&gt; wrote:<u></u><u><=
/u></span></font></p>

<div link=3D"blue" vlink=3D"blue">

<div>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">The issue with=
 the MJT is if we want to change something, then we
need to go back to the PWG.=C2=A0=C2=A0 But, unless Ira disagrees, I see no
reason to change the MJT for this phase of the JTAPI
development.=C2=A0=C2=A0=C2=A0 Perhaps, the MJT will not exercise all of th=
e
functionality of the JTAPI; in that case, we will add a =E2=80=9Cvendor ext=
ension=E2=80=9D
which would actually be a good thing, because JTAPI must handle vendor
extension at some point.</span></font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">Glen</span></f=
ont><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<p class=3D"MsoNormal"><font color=3D"blue" face=3D"Cambria" size=3D"3"><sp=
an style=3D"font-size:12.0pt;font-family:Cambria;color:blue">=C2=A0</span><=
/font><u></u><u></u></p>

<div>

<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><font=
 face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12.0pt">

<hr size=3D"2" width=3D"100%" align=3D"center">

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
<b><span style=3D"font-weight:bold">Subject:</span></b> Re:
[Printing-architecture] [Printing-summit] OPS Preparationminutes (28 March
2012)</span></font><u></u><u></u></p>

</div>

</div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt">=C2=A0<u></u><u></u></span></font></p>

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
e=3D"font-size:12.0pt">=C2=A0<u></u><u></u></span></font></p>

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
e=3D"font-size:12.0pt">=C2=A0<u></u><u></u></span></font></p>

</div>

</div>

</div>

</div>

</div></div></div>

<p class=3D"MsoNormal"><font face=3D"Times New Roman" size=3D"3"><span styl=
e=3D"font-size:12.0pt"><u></u>=C2=A0<u></u></span></font></p>

</div>

</div>


</blockquote></div><br>

--e89a8ff253fcc15bd604bd47eb65--
