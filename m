Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=VVxwJFpoUVDoMjvo1iSer7P9MLJ6Dg7DFaVCmUDKSSw=;
	b=sq2klXjWD9tnZtiD0m+qByZaBaNu382mDvmmv+mu1g5Vd2v8qsK9/2aj4sswv3Kn9n
	E3N1zusxiIKRQ3ShivyxEqAuq2U/1NFrC6jJmfhCn0OGVAf8BWK8wWlf388yL/bQRXGO
	5dau9dbxG9lCWdGWq6/JXFTA61ACuW8UDqoTdOBjoXHZVrekHShaHOcAbQ23aBJltNHe
	9zy9oha8kAASl0n1VlulID9HMkNno1hE2XDD5wFJ2694vq49ntoznm37s2/VdPgsb5mQ
	TKsmV7h7aHNilej5zY2g7xeo5dTNXghlgL/03mcFcYOLxzZfwgwkvrmDDxlWGmoqhlLy
	fB2w==
MIME-Version: 1.0
In-Reply-To: <ABD15507-E7F6-484D-974C-BFC0B69CF5B8@apple.com>
References: <1404748055.11220.7.camel@pascal.home.net>
	<CAN40gSuqu1=Y0jq6ZS+hiiJ=T4L0-Ui+JK7cBb93KjWpu9tG+Q@mail.gmail.com>
	<ABD15507-E7F6-484D-974C-BFC0B69CF5B8@apple.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Tue, 8 Jul 2014 11:40:04 -0400
Message-ID: <CAN40gSs5nCeUkxQ6aOcpX--keVKhPMZGVnfnADoxGCyYbPX1Kg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b673b4812a84904fdb0695a
Subject: Re: [Printing-architecture] CUPS and color management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--047d7b673b4812a84904fdb0695a
Content-Type: text/plain; charset=UTF-8

Hi Pascal and Mike,

[Thanks Mike for the pointer - I think I've tracked down the answer]

The result of the recent Open Printing thread on "no color management"
was this note sent by Joe Simon on 12 June:

Hi everyone,

Rev. 7225 of 'cups-filters' now replaces "no-color-management" with
"cm-calibration" for the bool option. So the following commands should work
without the added '=' symbol, and will disable ICC profile management:

$ rastertopdf 1 foo bar 1 "cm-calibration" input.ras >>output.pdf
$ foomatic-rip -p foo -o cm-calibration

Joe Simon

Cheers,
- Ira


On Tue, Jul 8, 2014 at 11:20 AM, Michael Sweet <msweet@apple.com> wrote:

> Ira,
>
> I'm on this list too, and I sent Pascal here because I don't know the
> answer... :/  There was discussion of adding an option for this just
> recently, but I just don't know what the final option name is...
>
>
> On Jul 8, 2014, at 11:12 AM, Ira McDonald <blueroofmusic@gmail.com> wrote:
>
> Hi Pascal,
>
> Copying Mike Sweet (CUPS author) for the answer to you question.
>
> Cheers,
> - Ira
>
>
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>
>
>
> On Mon, Jul 7, 2014 at 11:47 AM, Pascal Obry <pascal@obry.net> wrote:
>
>>
>> Hello,
>>
>> I have a question regarding color management with CUPS. I need to print
>> a raster image (jpeg, tiff) which has already been converted with the
>> printer profile. The printing is done using the CUPS API
>> (cupsPrintFile). I want to ensure that NO color management is done by
>> CUPS or any filters.
>>
>> Is there something to do? If so What do I need to do?
>>
>> Thanks,
>>
>> --
>>   Pascal Obry /  Magny Les Hameaux (78)
>>
>>   The best way to travel is by means of imagination
>>
>>   http://v2p.fr.eu.org
>>   http://www.obry.net
>>
>>   gpg --keyserver keys.gnupg.net --recv-key F949BD3B
>>
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>>
>
>
>  _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>

--047d7b673b4812a84904fdb0695a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Pascal and Mike,<br><br></div>[Thanks Mike fo=
r the pointer - I think I&#39;ve tracked down the answer]<br><br></div><div=
>The result of the recent Open Printing thread on &quot;no color management=
&quot;<br>

</div>was this note sent by Joe Simon on 12 June:<br><br><div><div><div><di=
v>Hi everyone,<br><br></div>Rev. 7225 of &#39;cups-filters&#39; now replace=
s &quot;no-<span class=3D"">color</span>-<span class=3D"">management</span>=
&quot;
 with &quot;cm-calibration&quot; for the bool option. So the following comm=
ands=20
should work without the added &#39;=3D&#39; symbol, and will disable ICC pr=
ofile <span class=3D"">management</span>:<br>
<br></div>$ rastertopdf 1 foo bar 1 &quot;cm-calibration&quot; input.ras &g=
t;&gt;output.pdf<br></div>$ foomatic-rip -p foo -o cm-calibration<br><br></=
div>Joe Simon<br><div class=3D"gmail_extra"><div><div dir=3D"ltr"><br></div=
>

<div>Cheers,<br></div><div>- Ira<br></div><div dir=3D"ltr"><div style=3D"di=
splay:inline"></div><div style=3D"display:inline"></div><div style=3D"displ=
ay:inline"></div><div></div><div></div><div></div><div></div></div></div>
<br><br><div class=3D"gmail_quote">On Tue, Jul 8, 2014 at 11:20 AM, Michael=
 Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@apple.com" target=3D"=
_blank">msweet@apple.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">

<div style=3D"word-wrap:break-word">Ira,<div><br></div><div>I&#39;m on this=
 list too, and I sent Pascal here because I don&#39;t know the answer... :/=
 =C2=A0There was discussion of adding an option for this just recently, but=
 I just don&#39;t know what the final option name is...</div>

<div><br></div><div><div><div class=3D"h5"><br><div><div>On Jul 8, 2014, at=
 11:12 AM, Ira McDonald &lt;<a href=3D"mailto:blueroofmusic@gmail.com" targ=
et=3D"_blank">blueroofmusic@gmail.com</a>&gt; wrote:</div><br><blockquote t=
ype=3D"cite">

<div dir=3D"ltr"><div><div><div>Hi Pascal,<br><br></div>Copying Mike Sweet =
(CUPS author) for the answer to you question.<br><br></div>Cheers,<br></div=
>- Ira<br><br></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div =
dir=3D"ltr">



Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG Trusted Mobi=
lity Solutions WG<br>Chair - Linux Foundation Open Printing WG<br>Secretary=
 - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG Internet Pri=
nting Protocol WG<br>



IETF Designated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High No=
rth Inc<br><a style=3D"color:rgb(51,51,255)" href=3D"http://sites.google.co=
m/site/blueroofmusic" target=3D"_blank">http://sites.google.com/site/bluero=
ofmusic</a><br>



<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blue=
roofmusic@gmail.com</a><br>



Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 <a href=3D"t=
el:734-944-0094" value=3D"+17349440094" target=3D"_blank">734-944-0094</a><=
br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 <a href=3D"te=
l:906-494-2434" value=3D"+19064942434" target=3D"_blank">906-494-2434</a><b=
r>

<br><div style=3D"display:inline"></div><div style=3D"display:inline"></div=
><div style=3D"display:inline"></div>

<div></div><div></div><div></div><div></div></div></div>
<br><br><div class=3D"gmail_quote">On Mon, Jul 7, 2014 at 11:47 AM, Pascal =
Obry <span dir=3D"ltr">&lt;<a href=3D"mailto:pascal@obry.net" target=3D"_bl=
ank">pascal@obry.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">



<br>
Hello,<br>
<br>
I have a question regarding color management with CUPS. I need to print<br>
a raster image (jpeg, tiff) which has already been converted with the<br>
printer profile. The printing is done using the CUPS API<br>
(cupsPrintFile). I want to ensure that NO color management is done by<br>
CUPS or any filters.<br>
<br>
Is there something to do? If so What do I need to do?<br>
<br>
Thanks,<br>
<br>
--<br>
=C2=A0 Pascal Obry / =C2=A0Magny Les Hameaux (78)<br>
<br>
=C2=A0 The best way to travel is by means of imagination<br>
<br>
=C2=A0 <a href=3D"http://v2p.fr.eu.org/" target=3D"_blank">http://v2p.fr.eu=
.org</a><br>
=C2=A0 <a href=3D"http://www.obry.net/" target=3D"_blank">http://www.obry.n=
et</a><br>
<br>
=C2=A0 gpg --keyserver <a href=3D"http://keys.gnupg.net/" target=3D"_blank"=
>keys.gnupg.net</a> --recv-key F949BD3B<br>
<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
</blockquote></div><br></div>
</blockquote></div><br></div></div><div>
<span style=3D"border-collapse:separate;color:rgb(0,0,0);font-family:&#39;A=
ndale Mono&#39;;font-style:normal;font-variant:normal;font-weight:normal;le=
tter-spacing:normal;line-height:normal;text-align:-webkit-auto;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px"><span style=3D=
"border-collapse:separate;color:rgb(0,0,0);font-family:&#39;Andale Mono&#39=
;;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:n=
ormal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px"><div style=3D"word-wrap:brea=
k-word">

_________________________________________________________<br>Michael Sweet,=
 Senior Printing System=C2=A0Engineer, PWG Chair</div></span></span>
</div>
<br></div></div></blockquote></div><br></div></div>

--047d7b673b4812a84904fdb0695a--
