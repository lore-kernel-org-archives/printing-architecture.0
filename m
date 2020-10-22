Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pee25lPa+ax/VxockSGwsFVlFinm8eXyE784C43P7I8=;
 b=B3JsZT4F30mFh4vu7DJe9uICEzysDEdEsRIwDLcrfmF1axpe4YKC7NYkybuu9Mn3fY
 NQZi7wpa6N615Z0+0R3WepBgCuGjPsoIewVui/8ahCFwn2LYnqzYvcNxS04s1XSGiDtd
 ogUc6cPrGMQj4pN/qZ5S4LQmu1fSeTDUwoNmpUF9lp3panh1CNu8xxcSxU03l90BHTUm
 6G4s8t20eLszq8TcBsYriGVlKl6lTq1iRpb9YzIs0VJAkHhS5DumO4vIt8H/Ozve0fag
 JBypXsMQtq3ZY7IfyCZ0uPX1AE3myFOGrY/bMtlapVawLjP5l6ngoMcfsTl15WMAeQj0
 ZtHA==
MIME-Version: 1.0
References: <f46bf16f-d469-cd4e-698e-525481cc98f6@redhat.com>
 <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
In-Reply-To: <90443F3C-FBAE-4CF6-B34B-55887A90F11D@msweet.org>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 21 Oct 2020 20:48:55 -0400
Message-ID: <CAN40gSuSTBfPHichG9Qi4fCRyG+DSgdxK1f8Q73c5-FrxvM8_Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000d24fd105b237d497"
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
To: Michael Sweet <msweet@msweet.org>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "The CUPS developer list." <cups-devel@cups.org>, "The CUPS user discussion list." <cups@cups.org>

--000000000000d24fd105b237d497
Content-Type: text/plain; charset="UTF-8"

Hi,

Note that IPP/2.0 reducing Validate-Job from REQUIRED is a known technical
error.

IPP/2.0 (or any other later IPP spec) CANNOT reduce any REQUIRED operation
conformance from IETF Standard IPP/1.1 (STD92/RFC 8010/RFC 8011).

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


On Wed, Oct 21, 2020 at 4:49 PM Michael Sweet <msweet@msweet.org> wrote:

> Zdenek,
>
> > On Oct 21, 2020, at 9:18 AM, Zdenek Dohnal <zdohnal@redhat.com> wrote:
> > ...
> > In this email I would like to ask if there can be a way how to work
> around such printer issues within CUPS, which can be aligned with RFC and
> PWG standards, and can be merged into OpenPrinting/cups project.
>
> Aside from maybe retrying the Validate-Job request if it fails the first
> time, I'm not sure
>
> > I have several ideas:
> >
> > 1) Validate-Job operation is 'only' recommended since IPP 2.0, so the
> backend would have printed only warning if Validate-Job failed and the IPP
> protocol used for communication is 2.0 or newer
>
> Actually, while Validate-Job was listed as RECOMMENDED in IPP 2.0, IPP
> Everywhere restores it to REQUIRED, just as STD 92 has required it going
> all the way back to the IPP/1.0 experimental version.
>
> > 2) configurable retries for Validate-Job operation - this idea came up
> from printer behavior (Validate-Job works after N retries) and from
> knowledge there are already configurable variables in backends via device
> uri
>
> I'd rather it be automatic - either retry the Validate-Job operation or
> just move on to printing without validation.
>
> > 3) define a specific IPP_STATUS_* enum variable for failing
> Validate-Job, let the backend fail if ipp_status is that variable and let
> error-policy handle the possible retry
>
> I'm not keen on "supporting" broken behavior.  Usually I've tried to
> "gracefully degrade" in these situations, which would basically mean option
> 2 without the retry (just attempt to validate and continue if we don't get
> a valid response.
>
> ________________________
> Michael Sweet
>
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--000000000000d24fd105b237d497
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Note that IPP/2.0 reduci=
ng Validate-Job from REQUIRED is a known technical error.</div><div><br></d=
iv><div>IPP/2.0 (or any other later IPP spec) CANNOT reduce any REQUIRED op=
eration</div><div>conformance from IETF Standard IPP/1.1 (STD92/RFC 8010/RF=
C 8011).</div><div><br></div><div>Cheers,</div><div>- Ira</div><div><br></d=
iv><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><i><font size=3D=
"1">Ira McDonald (Musician / Software Architect)</font></i></div><div><i><f=
ont size=3D"1">Chair - SAE Trust Anchors and Authentication TF<br></font></=
i></div><div dir=3D"ltr"><i><font size=3D"1">Co-Chair - TCG Trusted Mobilit=
y Solutions WG</font></i></div><div><i><font size=3D"1">Co-Chair - TCG Meta=
data Access Protocol SG<br></font></i></div><div dir=3D"ltr"><i><font size=
=3D"1">Chair - Linux Foundation Open Printing WG<br>Secretary - IEEE-ISTO P=
rinter Working Group<br>Co-Chair - IEEE-ISTO PWG Internet Printing Protocol=
 WG<br>IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / =
High North Inc<br><a style=3D"color:rgb(51,51,255)" href=3D"http://sites.go=
ogle.com/site/blueroofmusic" target=3D"_blank">http://sites.google.com/site=
/blueroofmusic</a><br><a style=3D"color:rgb(102,0,204)" href=3D"http://site=
s.google.com/site/highnorthinc" target=3D"_blank">http://sites.google.com/s=
ite/highnorthinc</a><br>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" =
target=3D"_blank">blueroofmusic@gmail.com</a><br>(permanent) PO Box 221=C2=
=A0 Grand Marais, MI 49839=C2=A0 906-494-2434</font></i></div></div></div><=
/div></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Oct 21, 2020 at 4:49 PM Michael Sweet=
 &lt;<a href=3D"mailto:msweet@msweet.org">msweet@msweet.org</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Zdenek,<br>
<br>
&gt; On Oct 21, 2020, at 9:18 AM, Zdenek Dohnal &lt;<a href=3D"mailto:zdohn=
al@redhat.com" target=3D"_blank">zdohnal@redhat.com</a>&gt; wrote:<br>
&gt; ...<br>
&gt; In this email I would like to ask if there can be a way how to work ar=
ound such printer issues within CUPS, which can be aligned with RFC and PWG=
 standards, and can be merged into OpenPrinting/cups project.<br>
<br>
Aside from maybe retrying the Validate-Job request if it fails the first ti=
me, I&#39;m not sure <br>
<br>
&gt; I have several ideas:<br>
&gt; <br>
&gt; 1) Validate-Job operation is &#39;only&#39; recommended since IPP 2.0,=
 so the backend would have printed only warning if Validate-Job failed and =
the IPP protocol used for communication is 2.0 or newer<br>
<br>
Actually, while Validate-Job was listed as RECOMMENDED in IPP 2.0, IPP Ever=
ywhere restores it to REQUIRED, just as STD 92 has required it going all th=
e way back to the IPP/1.0 experimental version.<br>
<br>
&gt; 2) configurable retries for Validate-Job operation - this idea came up=
 from printer behavior (Validate-Job works after N retries) and from knowle=
dge there are already configurable variables in backends via device uri<br>
<br>
I&#39;d rather it be automatic - either retry the Validate-Job operation or=
 just move on to printing without validation.<br>
<br>
&gt; 3) define a specific IPP_STATUS_* enum variable for failing Validate-J=
ob, let the backend fail if ipp_status is that variable and let error-polic=
y handle the possible retry<br>
<br>
I&#39;m not keen on &quot;supporting&quot; broken behavior.=C2=A0 Usually I=
&#39;ve tried to &quot;gracefully degrade&quot; in these situations, which =
would basically mean option 2 without the retry (just attempt to validate a=
nd continue if we don&#39;t get a valid response.<br>
<br>
________________________<br>
Michael Sweet<br>
<br>
<br>
<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</blockquote></div>

--000000000000d24fd105b237d497--
