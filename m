Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:content-type;
	bh=IlV5abQ7no1L2i5xqF7MyK1welMKFziVmgX6PbRTvxw=;
	b=rMYKS9aoZRJoKKuHN+Q9ukzcqLP9m9jg73QLi7W6TCdF8Oo+P7Rpo+Y0O5rudpu5+3
	W33Xaid+q58vI++LUSTOt1fapfRD58uodC0exxutgAaTbtjEPnffOKlLG2jzIoc14G+i
	SVInsvbcz8l/f2GxKJZ8PNTAjHmi/HsoNp+X6i/Kgi+DHgikvDZmslp7abKnehrq4oVI
	Z3DyD87OJHfzdmuE/aAtb5GqLLEmMkBUmmlSLAp3wxFPTsmB8VheDyNNV6Ja5ofSZUkV
	DijEvMh4tXtqb03x15DFQSDNK5yqu1yLrQmZhbrcn+YmwSmFKCFrV+qhcxEm9j6XYWD9
	yF1g==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <m3txktzpf2.fsf@carbon.jhcloos.org>
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com>
	<m3txktzpf2.fsf@carbon.jhcloos.org>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Thu, 20 Jun 2013 10:45:29 -0400
Message-ID: <CA+3RNfgknnPTaWNPHr2NLFgK9_3Jwv9KKVazutHfvQPiFTRFug@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bacc7b08e94f904df9700fa
Subject: Re: [Printing-architecture] On the Continued Need for PostScript
	Workflows
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

--047d7bacc7b08e94f904df9700fa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2013/6/19 James Cloos <cloos@jhcloos.com>

>
> (It even gets the LanguageLevel wrong.  The pdftops filter in cups-1.5
> knows to pass -level3 to poppler=E2=80=99s pdftops(1) for this printer, b=
ut the
> one in cups-filters refuses to.  Hmmph.)
>
>
Just for the record, calling pdftops with -level2 is hardcoded into
cups-filters
(see a snippet from pdftops.c below):

      if (renderer =3D=3D PDFTOPS)
        /* Do not emit PS Level 3 with Poppler, some HP PostScript printers
   do not like it. See https://bugs.launchpad.net/bugs/277404. */

-Alex

--047d7bacc7b08e94f904df9700fa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">2013/6/19 James Cloos <span dir=3D"ltr">&lt;<a href=3D"mailto:cloos=
@jhcloos.com" target=3D"_blank">cloos@jhcloos.com</a>&gt;</span><br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wi=
dth:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-=
left:1ex">

<br>
(It even gets the LanguageLevel wrong. =C2=A0The pdftops filter in cups-1.5=
<br>
knows to pass -level3 to poppler=E2=80=99s pdftops(1) for this printer, but=
 the<br>
one in cups-filters refuses to. =C2=A0Hmmph.)<br>
<br></blockquote><div><br></div><div>Just for the record, calling pdftops w=
ith -level2 is hardcoded into cups-filters=C2=A0</div><div>(see a snippet f=
rom pdftops.c below):</div><div><br></div><div><div>=C2=A0 =C2=A0 =C2=A0 if=
 (renderer =3D=3D PDFTOPS)</div>

<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Do not emit PS Level 3 with Poppler, so=
me HP PostScript printers</div><div><span class=3D"" style=3D"white-space:p=
re">	</span> =C2=A0 do not like it. See <a href=3D"https://bugs.launchpad.n=
et/bugs/277404">https://bugs.launchpad.net/bugs/277404</a>. */</div>

</div><div>=C2=A0</div></div>-Alex</div></div>

--047d7bacc7b08e94f904df9700fa--
