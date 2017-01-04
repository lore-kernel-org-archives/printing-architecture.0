Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JUib6V6U29GZphLzWiu47ctRuXj0ZdSdUxSNdoyJo4U=;
	b=rbn8QtzBzTGqvb3SKoZOuPpWatRfT/8IUSJZT3jxBnlmuMQPvmOmizyFhf6jp3THww
	nKPtQ0kZRUayjUV4GYOw3Ganjdu1IdmZ99hc9I+0598YZTGKd+qH9OTVan46nl8iIIbO
	VLKxvYs/BlPckvMGgvqkHDA3HQQJdBm6Scy0YJVjf0Pqlp8Z0mjMqAkBMeLFddc+/BNB
	ZSXoBVWLN34qLa0comBxo57ZSglLd9Jml6CmrM5wdcA6YeE27QlGk5oPFh88P/opk0uT
	jYm/6ivz0/y7kdcO+Dn3oeo0hPfbDuX5FAgG8mtGiwyZE/T+bPCvy7oLZZNk7erJu/xQ
	J8UA==
MIME-Version: 1.0
In-Reply-To: <6e6cd313-6273-bee6-77ff-554924d9796c@gmail.com>
References: <c8eab08c-255b-c00d-a4dd-320f362a04a3@gmail.com>
	<A18DDFC9-8572-442A-ABFF-60FFA167E2D3@apple.com>
	<6e6cd313-6273-bee6-77ff-554924d9796c@gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 4 Jan 2017 10:54:30 -0500
Message-ID: <CAN40gStMdXHT=v6m9e5HUK0U8TSbsg0cH1eHF54afFQnHuK_FQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114dcd7213fe8b054546cec5
Subject: Re: [Printing-architecture] IPP Scanning: GSoC project for a SANE
 module for IPP-based driverless scanning?
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

--001a114dcd7213fe8b054546cec5
Content-Type: text/plain; charset=UTF-8

Hi Till,

Manufacturers *never* pre-announce forthcoming multi-function products.
Until someone actually ships and announces an IPP Scan-capable device,
PWG folks won't know any more than you do.

I think that for GSoC2017, IPP Scan is premature as a project.  We first
need to finish IPP System Service, get it prototyped, and get it into new
products.  That's the only way to do coordinated startup/shutdown of
individual services on an MFD.

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
Jan-April: 579 Park Place  Saline, MI  48176  734-944-0094
May-Dec: PO Box 221  Grand Marais, MI 49839  906-494-2434


On Tue, Jan 3, 2017 at 8:27 PM, Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> [ Re-posting to printing-architecture list. ]
>
> On 01/03/2017 02:31 PM, Michael Sweet wrote:
>
>> Till,
>>
>>> <mailto:till.kamppeter@gmail.com>> wrote:
>>> Are there already scanners or multi-function printers which do IPP
>>> scanning?
>>>
>>
>> Nobody has come forward to report on this, and I haven't seen any in the
>> wild.  It was prototyped by Xerox...
>>
>>
> Is there still interest in this standard at the printer manufacturers? Or
> was it worked out and as soon as it got approved all the manufacturer's
> interest was gone?
>
> Can someone ask on some PWG list or call to find out about the
> manufacturer's interest? Would be nice to know for me before investing time
> and students in implementing support for this standard.
>
> Thanks in advance
>
>
>    Till
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>

--001a114dcd7213fe8b054546cec5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div>Hi Till,<br><=
br></div>Manufacturers *never* pre-announce forthcoming multi-function prod=
ucts.<br></div>Until someone actually ships and announces an IPP Scan-capab=
le device,<br></div>PWG folks won&#39;t know any more than you do.<br><br><=
/div>I think that for GSoC2017, IPP Scan is premature as a project.=C2=A0 W=
e first<br></div>need to finish IPP System Service, get it prototyped, and =
get it into new<br></div>products.=C2=A0 That&#39;s the only way to do coor=
dinated startup/shutdown of<br></div>individual services on an MFD.<br><br>=
</div>Cheers,<br></div>- Ira<br><br></div><div class=3D"gmail_extra"><br cl=
ear=3D"all"><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><div dir=3D"ltr">Ira McDonald (Musician / Sof=
tware Architect)<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair -=
 Linux Foundation Open Printing WG<br>Secretary - IEEE-ISTO Printer Working=
 Group<br>Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF De=
signated Expert - IPP &amp; Printer MIB<br>Blue Roof Music / High North Inc=
<br><a style=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/=
blueroofmusic" target=3D"_blank">http://sites.google.com/site/blueroofmusic=
</a><br><a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/s=
ite/highnorthinc" target=3D"_blank">http://sites.google.com/site/highnorthi=
nc</a><br>mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_bla=
nk">blueroofmusic@gmail.com</a><br>Jan-April: 579 Park Place=C2=A0 Saline, =
MI=C2=A0 48176=C2=A0 734-944-0094<br>May-Dec: PO Box 221=C2=A0 Grand Marais=
, MI 49839=C2=A0 906-494-2434<br><br><div style=3D"display:inline"></div><d=
iv style=3D"display:inline"></div><div style=3D"display:inline"></div><div>=
</div><div></div><div></div><div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Jan 3, 2017 at 8:27 PM, Till Kamppet=
er <span dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter@gmail.com" target=
=3D"_blank">till.kamppeter@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">[ Re-posting to printing-architecture list. ]<span class=
=3D""><br>
<br>
On 01/03/2017 02:31 PM, Michael Sweet wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
Till,<span class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
&lt;mailto:<a href=3D"mailto:till.kamppeter@gmail.com" target=3D"_blank">ti=
ll.kamppeter@gmail.c<wbr>om</a>&gt;&gt; wrote:<br>
Are there already scanners or multi-function printers which do IPP<br>
scanning?<br>
</blockquote>
<br></span><span class=3D"">
Nobody has come forward to report on this, and I haven&#39;t seen any in th=
e<br>
wild.=C2=A0 It was prototyped by Xerox...<br>
<br>
</span></blockquote>
<br>
Is there still interest in this standard at the printer manufacturers? Or w=
as it worked out and as soon as it got approved all the manufacturer&#39;s =
interest was gone?<br>
<br>
Can someone ask on some PWG list or call to find out about the manufacturer=
&#39;s interest? Would be nice to know for me before investing time and stu=
dents in implementing support for this standard.<br>
<br>
Thanks in advance<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
=C2=A0 =C2=A0Till<br>
<br>
______________________________<wbr>_________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.li<wbr>nux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">https://lists.linuxfoundatio=
n.<wbr>org/mailman/listinfo/printing-<wbr>architecture</a><br>
</div></div></blockquote></div><br></div>

--001a114dcd7213fe8b054546cec5--
