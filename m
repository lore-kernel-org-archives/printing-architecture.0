Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FmkOfA45ga+00UFHl12oSKMkP37arxtZcSNjLlBHyz0=;
	b=d3/3vGv2ge7Fq2UxBW/sEt2oMxe9ginVZJqMeaxYRUfMTcW+9Y6EsRVfGPEzwW70G1
	fP7VExJAK7yUwoIU6/DjUeCksijYelRu2FeGFOQHW7VfLWEDXvpcdsAAFfJ6ONgmF8zN
	xDPK7KbYzT1KA8cnnSfP4PYswzVpDz7X1PLEmTw496PE5+vRYidSdm6DMCy3bboERmRx
	0tqzR2l7wzvOQbgfzQP1KZB8BZrVOA7S/jeU3mFo4bRNG8v88Ys3Et8LQi0pRwM0nU9N
	//oHIafUHPlAKW39zoVTB4o4RCuDMJLtIv7AeI3ej6lbIPFlq4sMyurkzqwQMLXJTC8w
	MZnw==
MIME-Version: 1.0
In-Reply-To: <53E3E1A4-D11B-43AA-8D56-A3EA0E809A38@apple.com>
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
	<4F97B82B.7040306@gmail.com>
	<CAN40gStH4vSYTEm4syWMUO1j3itm7V7iTE23e+1mFEAWthbjVg@mail.gmail.com>
	<53E3E1A4-D11B-43AA-8D56-A3EA0E809A38@apple.com>
Date: Wed, 25 Apr 2012 12:09:58 -0400
Message-ID: <CAN40gSuYX_QoRr3FGB61R881DRU7Kbq1nmx7ZMcVT9HK8jR+8w@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: multipart/alternative; boundary=e89a8f234ce5538fc304be831a53
Subject: Re: [Printing-architecture] printerd
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, "printing-summit@lists.linux-foundation.org" <printing-summit@lists.linux-foundation.org>, Tim Waugh <cyberelk11@gmail.com>, Till Kamppeter <till.kamppeter@gmail.com>

--e89a8f234ce5538fc304be831a53
Content-Type: text/plain; charset=ISO-8859-1

Hi Mike and Tim,

I'm not sure how much time we'll spend on color management,
but I wanted to schedule some fixed timeslot for those calling
in.

We could move this back to 10:30am US Pacific and plan for
a long lunch hour, but I thought we might wind up spending
quite a lot of time talking about color management.

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



On Wed, Apr 25, 2012 at 11:04 AM, Michael Sweet <msweet@apple.com> wrote:

> Ira,
>
> I have no problem including some discussion of this after the ICC
> discussions are concluded, but I don't know about the timing (i.e. how much
> time we'll spend on ICC?)
>
>
> On Apr 25, 2012, at 7:06 AM, Ira McDonald wrote:
>
> Hi Tim and Till,
>
> Yes, please, Tim should present these slides this morning
> (California time) at 11:00am US Pacific Daylight Time,
> right after the Color Management topic.
>
> Mike - please add a session this morning titled "New
> Printer Spooler - printerd" and upload these slides.
>
> Tim - I hope this time works for you - if not, please let us
> know RIGHT AWAY.  Sometime this California morning
> is really the only flexible time left in our schedule.
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
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>
>
>
> On Wed, Apr 25, 2012 at 4:39 AM, Till Kamppeter <till.kamppeter@gmail.com>wrote:
>
>> Hi,
>>
>> Tim Waugh has developed a new piece of printing infrastructure. It is
>> some D-Bus service owned by the desktop user which takes PDF print jobs
>> from the application and dispatching it to CUPS, Google Cloud, network
>> printers, ...
>>
>> This could especially solve problems like per-user print destinations
>> like Google Cloud Print printers.
>>
>> Tim has put up some slides
>>
>> http://cyberelk.net/tim/wp-**content/uploads/2012/04/**printerd.pdf<http://cyberelk.net/tim/wp-content/uploads/2012/04/printerd.pdf>
>>
>> Could we let him present them in some session of the OpenPrinting Summit?
>>
>> Here is a link with some more background info
>>
>> http://cyberelk.net/tim/2012/**03/08/session-printing/<http://cyberelk.net/tim/2012/03/08/session-printing/>
>>
>> and first code:
>>
>> https://gitorious.org/printerd
>>
>>   Till
>>
>>
>>
>> On 04/24/2012 11:57 AM, Tim Waugh wrote:
>>
>>> FWIW, I wrote up a couple of slides in case you want me to talk about it:
>>>   http://cyberelk.net/tim/wp-**content/uploads/2012/04/**printerd.pdf<http://cyberelk.net/tim/wp-content/uploads/2012/04/printerd.pdf>
>>>
>>> (Note: I won't be here on Thursday)
>>>
>>> Tim.
>>> */
>>>
>>>
>> ______________________________**_________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.**linux-foundation.org<Printing-architecture@lists.linux-foundation.org>
>> https://lists.linuxfoundation.**org/mailman/listinfo/printing-**
>> architecture<https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>
>>
>
> <redhat-printerd-tim-waugh.pdf>
>
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>

--e89a8f234ce5538fc304be831a53
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Mike and Tim,<br><br>I&#39;m not sure how much time we&#39;ll spend on c=
olor management,<br>but I wanted to schedule some fixed timeslot for those =
calling<br>in.<br><br>We could move this back to 10:30am US Pacific and pla=
n for<br>
a long lunch hour, but I thought we might wind up spending<br>quite a lot o=
f time talking about color management.<br><br>Cheers,<br>- Ira<br><br><br c=
lear=3D"all">Ira McDonald (Musician / Software Architect)<br>Chair - Linux =
Foundation Open Printing WG<br>
Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG IPP=
 WG<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - TCG Embedded=
 Systems Hardcopy SG<br>IETF Designated Expert - IPP &amp; Printer MIB<br>
Blue Roof Music/High North Inc<br><a style=3D"color:rgb(51,51,255)" href=3D=
"http://sites.google.com/site/blueroofmusic" target=3D"_blank">http://sites=
.google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(102,0,204)" hre=
f=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank">http://si=
tes.google.com/site/highnorthinc</a><br>
mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroo=
fmusic@gmail.com</a><br>Winter=A0 579 Park Place=A0 Saline, MI=A0 48176=A0 =
734-944-0094<br>Summer=A0 PO Box 221=A0 Grand Marais, MI 49839=A0 906-494-2=
434<div style=3D"display:inline">
</div><div style=3D"display:inline"></div><div style=3D"display:inline"></d=
iv><div></div><div></div><div></div><div></div><br>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Apr 2=
5, 2012 at 11:04 AM, Michael Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:=
msweet@apple.com" target=3D"_blank">msweet@apple.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
<div style=3D"word-wrap:break-word">Ira,<div><br></div><div>I have no probl=
em including some discussion of this after the ICC discussions are conclude=
d, but I don&#39;t know about the timing (i.e. how much time we&#39;ll spen=
d on ICC?)</div>
<div><br></div><div><br><div><div><div><div class=3D"h5"><div>On Apr 25, 20=
12, at 7:06 AM, Ira McDonald wrote:</div><br></div></div><blockquote type=
=3D"cite"><div><div class=3D"h5">Hi Tim and Till,<br><br>Yes, please, Tim s=
hould present these slides this morning<br>
(California time) at 11:00am US Pacific Daylight Time,<br>right after the C=
olor Management topic.<br><br>Mike - please add a session this morning titl=
ed &quot;New <br>
Printer Spooler - printerd&quot; and upload these slides.<br><br>Tim - I ho=
pe this time works for you - if not, please let us<br>know RIGHT AWAY.=A0 S=
ometime this California morning<br>is really the only flexible time left in=
 our schedule.<br>

<br>Cheers,<br>- Ira<br><br clear=3D"all">Ira McDonald (Musician / Software=
 Architect)<br>Chair - Linux Foundation Open Printing WG<br>Secretary - IEE=
E-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG IPP WG<br>Co-Chair=
 - TCG Trusted Mobility Solutions WG<br>

Chair - TCG Embedded Systems Hardcopy SG<br>IETF Designated Expert - IPP &a=
mp; Printer MIB<br>Blue Roof Music/High North Inc<br><a style=3D"color:rgb(=
51,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_=
blank">http://sites.google.com/site/blueroofmusic</a><br>

<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluer=
oofmusic@gmail.com</a><br>

Winter=A0 579 Park Place=A0 Saline, MI=A0 48176=A0 <a href=3D"tel:734-944-0=
094" value=3D"+17349440094" target=3D"_blank">734-944-0094</a><br>Summer=A0=
 PO Box 221=A0 Grand Marais, MI 49839=A0 <a href=3D"tel:906-494-2434" value=
=3D"+19064942434" target=3D"_blank">906-494-2434</a><div style=3D"display:i=
nline">
</div><div style=3D"display:inline"></div><div style=3D"display:inline"></d=
iv><div>
</div><div></div><div></div><div></div><br>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Apr 2=
5, 2012 at 4:39 AM, Till Kamppeter <span dir=3D"ltr">&lt;<a href=3D"mailto:=
till.kamppeter@gmail.com" target=3D"_blank">till.kamppeter@gmail.com</a>&gt=
;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
Tim Waugh has developed a new piece of printing infrastructure. It is some =
D-Bus service owned by the desktop user which takes PDF print jobs from the=
 application and dispatching it to CUPS, Google Cloud, network printers, ..=
.<br>


<br>
This could especially solve problems like per-user print destinations like =
Google Cloud Print printers.<br>
<br>
Tim has put up some slides<br>
<br>
<a href=3D"http://cyberelk.net/tim/wp-content/uploads/2012/04/printerd.pdf"=
 target=3D"_blank">http://cyberelk.net/tim/wp-<u></u>content/uploads/2012/0=
4/<u></u>printerd.pdf</a><br>
<br>
Could we let him present them in some session of the OpenPrinting Summit?<b=
r>
<br>
Here is a link with some more background info<br>
<br>
<a href=3D"http://cyberelk.net/tim/2012/03/08/session-printing/" target=3D"=
_blank">http://cyberelk.net/tim/2012/<u></u>03/08/session-printing/</a><br>
<br>
and first code:<br>
<br>
<a href=3D"https://gitorious.org/printerd" target=3D"_blank">https://gitori=
ous.org/printerd</a><br>
<br>
 =A0 Till<br>
<br>
<br>
<br>
On 04/24/2012 11:57 AM, Tim Waugh wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
FWIW, I wrote up a couple of slides in case you want me to talk about it:<b=
r>
 =A0 <a href=3D"http://cyberelk.net/tim/wp-content/uploads/2012/04/printerd=
.pdf" target=3D"_blank">http://cyberelk.net/tim/wp-<u></u>content/uploads/2=
012/04/<u></u>printerd.pdf</a><br>
<br>
(Note: I won&#39;t be here on Thursday)<br>
<br>
Tim.<br>
*/<br>
<br>
</blockquote>
<br>
______________________________<u></u>_________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org" target=
=3D"_blank">Printing-architecture@lists.<u></u>linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.<u></u>org/mailma=
n/listinfo/printing-<u></u>architecture</a><br>
</blockquote></div><br></div>
</div></div><span>&lt;redhat-printerd-tim-waugh.pdf&gt;</span></blockquote>=
</div><div class=3D"im"><br><div>
<span style=3D"text-indent:0px;letter-spacing:normal;font-variant:normal;te=
xt-align:-webkit-auto;font-style:normal;font-weight:normal;line-height:norm=
al;border-collapse:separate;text-transform:none;font-size:medium;white-spac=
e:normal;font-family:&#39;Andale Mono&#39;;word-spacing:0px"><span style=3D=
"text-indent:0px;letter-spacing:normal;font-variant:normal;text-align:-webk=
it-auto;font-style:normal;font-weight:normal;line-height:normal;border-coll=
apse:separate;text-transform:none;font-size:medium;white-space:normal;font-=
family:&#39;Andale Mono&#39;;word-spacing:0px"><div style=3D"word-wrap:brea=
k-word">
_________________________________________________________<br>Michael Sweet,=
 Senior Printing System=A0Engineer, PWG Chair</div></span></span>
</div>
<br></div></div></div></div></blockquote></div><br></div>

--e89a8f234ce5538fc304be831a53--
