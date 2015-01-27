Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=vYrMB1xgCIJ6TzxeeVZGN3RQo3r73YH4m3U3gZkMeX4=;
	b=mtHvvDJBI+67K/Y81aVfGHa3xLHB1SfeR5VP6d1Ho+LCwol30+V5o5JWgdus5CE/qr
	WhIxCzImkVApI4jsK1p34X3IopkKLhCC3Uy9S314o4BtNLt1yUrEBTS1fTltEzUMwrba
	fy3qPJcnWoWqrV2uY+fGzPHrqsYS5Tu06UpmCeWFb7uFgUvLCEU5HWxVt5+O39PK61H9
	FipWtiPGv47FQdQfdp4EpQ2hS351doZV/jPc6qKFZSL5/oTDsANDLmQxMv1vqsUbitEL
	iwJGtcXItnFtGtjutaBQh8oZaWR6sDnTEmfJVUPT4wWDi1L+6I3vSLza1lkAiJxdwuXN
	ADYA==
MIME-Version: 1.0
In-Reply-To: <54C79494.20402@gmail.com>
References: <54C65044.7030501@gmail.com>
	<CAN40gStNSnXwgw7r-cdXHGiLk10LPQj2Uq1qYh+CmRjZNuO-bg@mail.gmail.com>
	<BFBB8879-FEAD-4797-8ADC-7EEF6A810E19@apple.com>
	<54C79494.20402@gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Tue, 27 Jan 2015 11:01:57 -0500
Message-ID: <CAN40gSvS+q2Sd61TqF62tHo5a=GkcsUjcxXi7mFZBTm0zZJF6Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d043895770e286f050da461ea
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
Cc: "printing-architecture@lists.linux-foundation.org" <Printing-architecture@lists.linux-foundation.org>

--f46d043895770e286f050da461ea
Content-Type: text/plain; charset=UTF-8

Hi Till,

I'm not sure that there are recent IPP standards that are suitable for GSoC
2015
projects.

I have reservations about SANE, because it competes with new IPP Scan
Service,
but doesn't add any value (that I can see).

IPP Everywhere self-certification is moving forward, but slower than we all
hoped.

IPP Finishings 2.0, IPP FaxOut, IPP Scan are all good technology, but much
too
new to be widely deployed in shipping printers.

IPP MSN 2.0 (Media Standardized Names) does do important extensions to
media properties that would be worth reflecting in client print UIs, but it
might be hard to get
a student excited about more complete and accurate media properties.

IPP JPS3 (Job and Printer Extensions Set 3) is full of good stuff - high
value
new attributes include "ipp-features-supported", "job-contraints-supported",
"media-source-supported", "preferred-attributes-supported",
"printer-geo-location", "printer-get-attributes-supported", "printer-icons",
"printer-mandatory-job-attributes", and "printer-supply".  Many of these are
required by the subsequent IPP Everywhere spec, but it's IPP Everywhere
that will be the impetus for widespread adoption, I think.

We should talk about GSoC 2015 more after next week's PWG F2F meeting.

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


On Tue, Jan 27, 2015 at 8:37 AM, Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> On 27.01.2015 10:53, Michael Sweet wrote:
>
>> Ira,
>>
>>  On Jan 26, 2015, at 8:59 PM, Ira McDonald <blueroofmusic@gmail.com>
>>> wrote:
>>> ...
>>> <ira> The IPP standard for uploading firmware will only be in the
>>> work-in-progress
>>> IPP System Service (milestone of Q3/Q4 2015 for Prototype draft).
>>>  Actually doing
>>> the reboot to the new firmware is currently just an idea of mine for a
>>> new operation
>>> in IPP System Service.
>>>
>>
>> There are a lot of security issues to address with firmware updates, and
>> we'll need widespread adoption to make this useful.  On the consumer end of
>> printers, most now offer updates via their control panels and/or web
>> interfaces, and on the high end you need a service engineer to apply the
>> update.
>>
>> In any case, I don't see this as a GSoC 2015 project (2016?)
>>
>>
> OK, so my suggestions (1) and (3) are not (yet) suitable for a GSoC
> project.
>
> WDYT about my suggestion (2), the SANE drier for IPP network scanners? Is
> the standard already in a usable state? Are there already MF devices with
> standard-conforming scanners?
>
> Ira, what were your ideas of implementing PWG standards in GSoC projects?
>
>    Till
>
>
>

--f46d043895770e286f050da461ea
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Till,<br><br>I&#39;m not sure that there are recent IPP standards that a=
re suitable for GSoC 2015<br>projects.<br><br>I have reservations about SAN=
E, because it competes with new IPP Scan Service,<br>but doesn&#39;t add an=
y value (that I can see).<br><br>IPP Everywhere self-certification is movin=
g forward, but slower than we all hoped.<br><br>IPP Finishings 2.0, IPP Fax=
Out, IPP Scan are all good technology, but much too<br>new to be widely dep=
loyed in shipping printers.<br><br>IPP MSN 2.0 (Media Standardized Names) d=
oes do important extensions to media properties that would be worth reflect=
ing in client print UIs, but it might be hard to get <br>a student excited =
about more complete and accurate media properties.<br><br>IPP JPS3 (Job and=
 Printer Extensions Set 3) is full of good stuff - high value<br>new attrib=
utes include &quot;ipp-features-supported&quot;, &quot;job-contraints-suppo=
rted&quot;,<br>&quot;media-source-supported&quot;, &quot;preferred-attribut=
es-supported&quot;, <br>&quot;printer-geo-location&quot;, &quot;printer-get=
-attributes-supported&quot;, &quot;printer-icons&quot;,<br>&quot;printer-ma=
ndatory-job-attributes&quot;, and &quot;printer-supply&quot;.=C2=A0 Many of=
 these are<br>required by the subsequent IPP Everywhere spec, but it&#39;s =
IPP Everywhere<br>that will be the impetus for widespread adoption, I think=
.<br><br>We should talk about GSoC 2015 more after next week&#39;s PWG F2F =
meeting.<br><br>Cheers,<br>- Ira<br><br clear=3D"all"><div><div class=3D"gm=
ail_signature"><div dir=3D"ltr">Ira McDonald (Musician / Software Architect=
)<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - Linux Foundati=
on Open Printing WG<br>Secretary - IEEE-ISTO Printer Working Group<br>Co-Ch=
air - IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated Expert=
 - IPP &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a style=3D=
"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" =
target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br><a styl=
e=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/highnorthin=
c" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>mailt=
o: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroofmus=
ic@gmail.com</a><br>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 4817=
6=C2=A0 734-944-0094<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 4983=
9=C2=A0 906-494-2434<br><br><div style=3D"display:inline"></div><div style=
=3D"display:inline"></div><div style=3D"display:inline"></div><div></div><d=
iv></div><div></div><div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Jan 27, 2015 at 8:37 AM, Till Kamppe=
ter <span dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter@gmail.com" targe=
t=3D"_blank">till.kamppeter@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><span class=3D"im HOEnZb">On 27.01.2015 10:53, Michael S=
weet wrote:<br>
</span><span class=3D"im HOEnZb"><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Ira,<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Jan 26, 2015, at 8:59 PM, Ira McDonald &lt;<a href=3D"mailto:blueroofmus=
ic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a>&gt; wrote:<br>
...<br>
&lt;ira&gt; The IPP standard for uploading firmware will only be in the wor=
k-in-progress<br>
IPP System Service (milestone of Q3/Q4 2015 for Prototype draft).=C2=A0 =C2=
=A0Actually doing<br>
the reboot to the new firmware is currently just an idea of mine for a new =
operation<br>
in IPP System Service.<br>
</blockquote>
<br>
There are a lot of security issues to address with firmware updates, and we=
&#39;ll need widespread adoption to make this useful.=C2=A0 On the consumer=
 end of printers, most now offer updates via their control panels and/or we=
b interfaces, and on the high end you need a service engineer to apply the =
update.<br>
<br>
In any case, I don&#39;t see this as a GSoC 2015 project (2016?)<br>
<br>
</blockquote>
<br></span><div class=3D"HOEnZb"><div class=3D"h5">
OK, so my suggestions (1) and (3) are not (yet) suitable for a GSoC project=
.<br>
<br>
WDYT about my suggestion (2), the SANE drier for IPP network scanners? Is t=
he standard already in a usable state? Are there already MF devices with st=
andard-conforming scanners?<br>
<br>
Ira, what were your ideas of implementing PWG standards in GSoC projects?<b=
r>
<br>
=C2=A0 =C2=A0Till<br>
<br>
<br>
</div></div></blockquote></div><br>

--f46d043895770e286f050da461ea--
