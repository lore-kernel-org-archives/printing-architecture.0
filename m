Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kQBGvhDlut07fbq9N+wE5q+Ki+I8X3xodYe067KwdDI=;
 b=Wu6rh136Kqtdth5HBbU9wMP6sgmZ5F5/PYO7dwOrKEV4siXjob2OZzxGm3SG3hfmfs
 mvWbLMRpJcNLFIbYfXTZIutVlZg2j7brqSmMhuxyk2Pb1iXwukxonlCqAcc+7tinpOCn
 K6MWP+cve4HEA4NE5pNdbSdrR6jE7yg9VQtuXen1BkHtzGzimhzXhc0JMZtW+B965CD5
 y7/baq+3c0CPwTBq/HyfJWGjaNYJu8eS8gJVonoEXo0U8DZKztqG/yx7PhNHC8G+z7Ek
 dPI+iwFU9oRoMWpEVoLe9dmjgMfD9Q3ybjwIoLA3IGIih7oJFfxl4hVw6vjY4YmbHs6q
 LVKA==
MIME-Version: 1.0
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
 <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
 <9e45b8ca-0bde-12bb-5555-e469bdd27852@apevzner.com>
In-Reply-To: <9e45b8ca-0bde-12bb-5555-e469bdd27852@apevzner.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Thu, 22 Oct 2020 16:31:13 -0400
Message-ID: <CAN40gSvUZJ+cJjQUYfP95AZy2Ka56y=-+4a_ZNzrDaVuZHNTQw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000035316005b2485963"
Subject: Re: [Printing-architecture] IPP Validate-Job operation and its
 implementation in CUPS
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Pevzner <pzz@apevzner.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--00000000000035316005b2485963
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

You don't want to just always do Print-Job because the associated Document
content
may be large (and have to be spooled), rather than first checking the
validity of all the
IPP Job Template attributes w/ Validate-Job.

Cheers,
- Ira

*Ira McDonald (Musician / Software Architect)*

*Chair - SAE Trust Anchors and Authentication TF*
*Co-Chair - TCG Trusted Mobility Solutions WG*

*Co-Chair - TCG Metadata Access Protocol SG*








*Chair - Linux Foundation Open Printing WGSecretary - IEEE-ISTO Printer
Working GroupCo-Chair - IEEE-ISTO PWG Internet Printing Protocol WGIETF
Designated Expert - IPP & Printer MIBBlue Roof Music / High North
Inchttp://sites.google.com/site/blueroofmusic
<http://sites.google.com/site/blueroofmusic>http://sites.google.com/site/highnorthinc
<http://sites.google.com/site/highnorthinc>mailto: blueroofmusic@gmail.com
<blueroofmusic@gmail.com>(permanent) PO Box 221  Grand Marais, MI 49839
906-494-2434*


On Thu, Oct 22, 2020 at 4:13 PM Alexander Pevzner <pzz@apevzner.com> wrote:

> Hi Michael,
>
> On 10/21/20 11:49 PM, Michael Sweet wrote:
> > Aside from maybe retrying the Validate-Job request if it fails the first
> time, I'm not sure
>
> I wonder why we can't always send Print-Job and bypass the Validate-Job
> step?
>
> --
>
>         Wishes, Alexander Pevzner (pzz@apevzner.com)
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--00000000000035316005b2485963
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Alexander,</div><div><br></div><div>You don&#39;t =
want to just always do Print-Job because the associated Document content</d=
iv><div>may be large (and have to be spooled), rather than first checking t=
he validity of all the</div><div>IPP Job Template attributes w/ Validate-Jo=
b.</div><div><br></div><div>Cheers,</div><div>- Ira</div><div><br></div><di=
v><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><i><font size=3D"1">Ir=
a McDonald (Musician / Software Architect)</font></i></div><div><i><font si=
ze=3D"1">Chair - SAE Trust Anchors and Authentication TF<br></font></i></di=
v><div dir=3D"ltr"><i><font size=3D"1">Co-Chair - TCG Trusted Mobility Solu=
tions WG</font></i></div><div><i><font size=3D"1">Co-Chair - TCG Metadata A=
ccess Protocol SG<br></font></i></div><div dir=3D"ltr"><i><font size=3D"1">=
Chair - Linux Foundation Open Printing WG<br>Secretary - IEEE-ISTO Printer =
Working Group<br>Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>=
IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High No=
rth Inc<br><a style=3D"color:rgb(51,51,255)" href=3D"http://sites.google.co=
m/site/blueroofmusic" target=3D"_blank">http://sites.google.com/site/bluero=
ofmusic</a><br><a style=3D"color:rgb(102,0,204)" href=3D"http://sites.googl=
e.com/site/highnorthinc" target=3D"_blank">http://sites.google.com/site/hig=
hnorthinc</a><br>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=
=3D"_blank">blueroofmusic@gmail.com</a><br>(permanent) PO Box 221=C2=A0 Gra=
nd Marais, MI 49839=C2=A0 906-494-2434</font></i></div></div></div></div></=
div></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Oct 22, 2020 at 4:13 PM Alexander Pevzner &l=
t;<a href=3D"mailto:pzz@apevzner.com">pzz@apevzner.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Michael,<br>
<br>
On 10/21/20 11:49 PM, Michael Sweet wrote:<br>
&gt; Aside from maybe retrying the Validate-Job request if it fails the fir=
st time, I&#39;m not sure<br>
<br>
I wonder why we can&#39;t always send Print-Job and bypass the Validate-Job=
 <br>
step?<br>
<br>
-- <br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Wishes, Alexander Pevzner (<a href=3D"mailto:pz=
z@apevzner.com" target=3D"_blank">pzz@apevzner.com</a>)<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</blockquote></div>

--00000000000035316005b2485963--
