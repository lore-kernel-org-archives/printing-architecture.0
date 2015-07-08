Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=oicDefmUsgVC+8OiyPRDIoIwKgTeH8Y6AcbwJ0KSzwo=;
	b=gg28ITv2WKJFpEKrVXoeNcS8HEDYoVC8OeUAGXAFaUSol9YxACTfVXLMWX1WGgFKU8
	VMvzUAa78H7TlGeybTlhsJ7XJrqRJhKZYVQljYOPVAPxOTA/+5E+A43caL1I+VnlJmYg
	2YCobowbjlmZov+kftIIhRph+N8iqv6wH8M3jZ8Pp/CB/XPQSwMkaJXdOWaSsjSJLcKp
	g93bmJ4i24XY0lRDSvG5rM71g3qwey2UoYoRQjZne2oHwktcJGa5oSfvZ0GPHa5LzSQL
	QCVFsySBw/E7kKdB7CGB9G7uZOHv5SZ1lma8JI43IhZbmS5XHQz9lmFEIfe5fom5z7Lg
	UI4w==
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1507081104010.31457@nelson.suse.de>
References: <559B2849.7060907@gmail.com> <m3egkk5ft5.fsf@carbon.jhcloos.org>
	<alpine.LNX.2.00.1507071604010.29822@nelson.suse.de>
	<m38uas552b.fsf@carbon.jhcloos.org>
	<alpine.LNX.2.00.1507081104010.31457@nelson.suse.de>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 8 Jul 2015 08:40:37 -0400
Message-ID: <CAN40gSuQ70vpuCMX=1QCxiO0a+78y5G3OykniJepA08fM8V9Ng@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bfcec3e501628051a5c73f6
Subject: Re: [Printing-architecture] Upstream future of ippusbxd
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>, Ira McDonald <blueroofmusic@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Debian-printing@lists.debian.org, James Cloos <cloos@jhcloos.com>, Till Kamppeter <till.kamppeter@gmail.com>

--047d7bfcec3e501628051a5c73f6
Content-Type: text/plain; charset=UTF-8

Hi,

When Till and I talked about this on yesterday's OP monthly call,
we concluded that keeping ippusbxd in a separate package was
the best choice.  Till said that he would move the code to a Git
repository (I hope this pleases you Tim) and link it off the Open
Printing website.

If anyone objects to keeping ippusbxd in a separate package,
please speak up now.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music / High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto: blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434


On Wed, Jul 8, 2015 at 5:12 AM, Johannes Meixner <jsmeix@suse.de> wrote:

>
> Hello,
>
> On Jul 7 12:02 James Cloos wrote (excerpt):
>
>> "TK" == Till Kamppeter <till.kamppeter@gmail.com> writes:
>>>>>
>>>> TK> I am thinking about joining [ippusbxd] into the cups-filters
>> TK> upstream package to not have too many tiny packages
>>
> ...
>
>> JC>> licenses are incompatible.  (GPL2 vs Apache2).
>>
> ...
>
>> If, after some time, anyone looks ast the code and thinks
>> that something can be merged or thst one set of code could
>> be improved by incorporating something from the other set,
>> they need to know the legal limitations.
>>
>
> This is a good example how it could happen that accidentally
> convoluted code is made with unexpected interdependencies
> (in this case there are legal interdependencies) and why
> it is probably better to keep separated things separated.
>
>
> Kind Regards
> Johannes Meixner
> --
> SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,
> Dilip Upmanyu, Graham Norton - HRB 21284 (AG Nuernberg)
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--047d7bfcec3e501628051a5c73f6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>When Till and I talked about this on yesterday&#39;s OP monthly =
call,<br>we concluded that keeping ippusbxd in a separate package was<br>th=
e best choice.=C2=A0 Till said that he would move the code to a Git<br>repo=
sitory (I hope this pleases you Tim) and link it off the Open<br>Printing w=
ebsite.<br><br>If anyone objects to keeping ippusbxd in a separate package,=
<br>please speak up now.<br><br>Cheers,<br>- Ira<br><br><br><div><div class=
=3D"gmail_signature"><div dir=3D"ltr">Ira McDonald (Musician / Software Arc=
hitect)<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - Linux Fo=
undation Open Printing WG<br>Secretary - IEEE-ISTO Printer Working Group<br=
>Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated =
Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a st=
yle=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofm=
usic" target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br><=
a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/highn=
orthinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><br=
>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluer=
oofmusic@gmail.com</a><br>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=
=A0 48176=C2=A0 734-944-0094<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais,=
 MI 49839=C2=A0 906-494-2434<br><br><div style=3D"display:inline"></div><di=
v style=3D"display:inline"></div><div style=3D"display:inline"></div><div><=
/div><div></div><div></div><div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Jul 8, 2015 at 5:12 AM, Johannes Mei=
xner <span dir=3D"ltr">&lt;<a href=3D"mailto:jsmeix@suse.de" target=3D"_bla=
nk">jsmeix@suse.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<br>
Hello,<br>
<br>
On Jul 7 12:02 James Cloos wrote (excerpt):<span class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
&quot;TK&quot; =3D=3D Till Kamppeter &lt;<a href=3D"mailto:till.kamppeter@g=
mail.com" target=3D"_blank">till.kamppeter@gmail.com</a>&gt; writes:<br>
</blockquote></blockquote></blockquote>
TK&gt; I am thinking about joining [ippusbxd] into the cups-filters<br>
TK&gt; upstream package to not have too many tiny packages<br>
</blockquote></span>
...<span class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
JC&gt;&gt; licenses are incompatible.=C2=A0 (GPL2 vs Apache2).<br>
</blockquote></span>
...<span class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
If, after some time, anyone looks ast the code and thinks<br>
that something can be merged or thst one set of code could<br>
be improved by incorporating something from the other set,<br>
they need to know the legal limitations.<br>
</blockquote>
<br></span>
This is a good example how it could happen that accidentally<br>
convoluted code is made with unexpected interdependencies<br>
(in this case there are legal interdependencies) and why<br>
it is probably better to keep separated things separated.<span class=3D"im =
HOEnZb"><br>
<br>
<br>
Kind Regards<br>
Johannes Meixner<br>
-- <br>
SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,<br>
Dilip Upmanyu, Graham Norton - HRB 21284 (AG Nuernberg)<br>
<br></span><div class=3D"HOEnZb"><div class=3D"h5">
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.org/mailman/listinfo/printing-architecture</a><br>
</div></div></blockquote></div><br>

--047d7bfcec3e501628051a5c73f6--
