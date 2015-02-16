Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=lrvE/+067X4BeJf+L9MqdT4vf3+amQmTt/n3hsp3FH8=;
	b=bkwFYDuZaBALlgzSpucjlhwVgTUWb9zrvfzEiP9wEyj7+AAzXgyjJp88GW8S5yaN0w
	xbUzq3/1MtDLT+9XUVx+CHZu76nT5LtRBRSmRx+yb8aYRhYFEBLBOHHzn3L1lZwU6hdb
	Ulqvpzppswkd5MOn/Ywk+JHRCRYV/HUCxpYu5tLww3Y7VsyNeELfOBZKMjcdoF0nL4G6
	LywNY6Jekz0BISjHjQaijULT6Mjrn+HaaNvSMT/DqaUnC5VFIXrv1AMkMvymU9JmRX7m
	LZNS7UFIgH9f3FkQDbp/ppIX/V1MCpddC79HeC42UGBJEKCQ5tqKGQvzUzpPRcz6daJE
	sKxg==
MIME-Version: 1.0
In-Reply-To: <54E13E46.9030902@gmail.com>
References: <CAN40gSvgCb9OjvSadx6HjvvrY0vLsyEoei-kDwCV7imZ+4D1_g@mail.gmail.com>
	<54E13E46.9030902@gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Sun, 15 Feb 2015 20:15:31 -0500
Message-ID: <CAN40gStbzOfGRwLZJ-skGV4fCR2wRJ7bPCXyQ7mK-pw4oQn2ZA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b6227ced3b9d5050f2a537e
Subject: Re: [Printing-architecture] OP Minutes (10 February 2015)
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
Cc: printing-architecture@lists.linux-foundation.org

--047d7b6227ced3b9d5050f2a537e
Content-Type: text/plain; charset=UTF-8

Hi,

Updated OP minutes w/ CUPS Filters v1.0.65 details from Till:

ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-20150210.htm

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


On Sun, Feb 15, 2015 at 7:48 PM, Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Due to a problem with the BZR I had to release cups-filters 1.0.65 shortly
> afterwards. This is now also the version in Ubuntu 15.04 (Vivid). ChangeLog
> below (all changes are bug fixes for legacy CUPS broadcasting/browsing
> contributed by Tim Waugh from Red Hat).
>
> Please update the minutes.
>
>    Till
>
> ----------
>
> NEWS - OpenPrinting CUPS Filters v1.0.65 - 2015-02-13
> -----------------------------------------------------
>
> CHANGES IN V1.0.65
>
>         - cups-browsed: Listen for NetworkManager changes (Red Hat bug
> #975933).
>         - cups-browsed: Fix for memory leak introduced in BZR rev 7059.
>         - cups-browsed: Memory leak/uninit fixes.
>         - cups-browsed: Cache prepared browse data to send.
>         - cups-browsed: Only get local notifications once per
>           BrowsePoll run.
>         - cups-browsed: Fix BrowsePoll now notifications work properly.
>           Need to maintain a list of printers to keep alive for the
>           case of there being no notifications of changes.
>         - cups-browsed: Use local browsepolling for getting initial
>           printer list.
>         - cups-browsed: Ignore browse packets for deleted printers.
>         - cups-browsed: Cache connection to local cupsd.
>         - cups-browsed: Use notifications to track local printers.
>           This avoids expensive calls to cupsGetDests().
>         - cups-browsed: Manage subscriptions for local browsepolling.
>         - cups-browsed: Track notify-sequence-number for notifications.
>
>
> On 15.02.2015 19:00, Ira McDonald wrote:
>
>> Hi,
>>
>> Minutes from last week's Open Printingcall are posted at:
>>
>> ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-20150210.htm
>>
>>
>> Action Items:
>>
>> - None
>>
>>
>> Next OP US/Europe Conference Calls:
>>
>> (1) March 2015 - US/Europe - OP Monthly Meeting
>>      - Note - complete recruiting OPS speakers for April Joint PWG/OPS
>>      - Note - send final OPS topics and speakers list to PWG for agenda
>>
>>      - Tuesday 10 March 2015, Daytime
>>        - US
>>          10am in San Francisco - US PST (Pacific Standard Time)
>>          11am in Colorado - US MST (Mountain Standard Time)
>>          12pm in Chicago - US CST (Central Standard Time)
>>          1pm in New York - US EST (Eastern Standard Time)
>>        - Europe
>>          7pm in Berlin - CET (Central European Time)
>>
>>      * Main Number (Till Kamppeter, LF, leader)
>>        International: +1-619-326-2730 <tel:%2B1-619-326-2730> (new
>> number)
>>        Access Code:   491659#
>>
>> (2) April 2015 - US/Europe - OP Monthly Meeting (tentative)
>>      - Note - US Daylight Savings Time starts 8 March 2015
>>      - Note - Europe Summer Time starts 29 March 2015
>>      - Note - resolve any issues for April Joint PWG/OPS
>>
>>      - Tuesday 7 April 2015, Daytime
>>        - US
>>          10am in San Francisco - US PDT (Pacific Daylight Time)
>>          11am in Colorado - US MDT (Mountain Daylight Time)
>>          12pm in Chicago - US CDT (Central Daylight Time)
>>          1pm in New York - US EDT (Eastern Daylight Time)
>>        - Europe
>>          7pm in Berlin - CEST (Central Europe Summer Time)
>>
>>      * Main Number (Till Kamppeter, LF, leader)
>>        International: +1-619-326-2730 <tel:%2B1-619-326-2730> (new
>> number)
>>        Access Code:   491659#
>>
>> Cheers,
>> - Ira
>>
>>
>> Ira McDonald (Musician / Software Architect)
>> Co-Chair - TCG Trusted Mobility Solutions WG
>> Chair - Linux Foundation Open Printing WG
>> Secretary - IEEE-ISTO Printer Working Group
>> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
>> IETF Designated Expert - IPP & Printer MIB
>> Blue Roof Music / High North Inc
>> http://sites.google.com/site/blueroofmusic
>> http://sites.google.com/site/highnorthinc
>> mailto: blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
>> Winter  579 Park Place  Saline, MI  48176  734-944-0094
>> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>>
>>
>

--047d7b6227ced3b9d5050f2a537e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>Updated OP minutes w/ CUPS Filters v1.0.65 details from Till:<br=
><br><span class=3D"im"><a href=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/m=
inutes/OP-Minutes-20150210.htm" target=3D"_blank">ftp://ftp.pwg.org/pub/pwg=
/openprinting/minutes/OP-Minutes-20150210.htm</a><br>
<br>Cheers,<br>- Ira<br><br clear=3D"all"></span><div><div class=3D"gmail_s=
ignature"><div dir=3D"ltr">Ira McDonald (Musician / Software Architect)<br>=
Co-Chair - TCG Trusted Mobility Solutions WG<br>Chair - Linux Foundation Op=
en Printing WG<br>Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair -=
 IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated Expert - IP=
P &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a style=3D"colo=
r:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" targe=
t=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br><a style=3D"=
color:rgb(102,0,204)" href=3D"http://sites.google.com/site/highnorthinc" ta=
rget=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>mailto: <a=
 href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroofmusic@gm=
ail.com</a><br>Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=
=A0 734-944-0094<br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=
=A0 906-494-2434<br><br><div style=3D"display:inline"></div><div style=3D"d=
isplay:inline"></div><div style=3D"display:inline"></div><div></div><div></=
div><div></div><div></div></div></div></div>
<br><div class=3D"gmail_quote">On Sun, Feb 15, 2015 at 7:48 PM, Till Kamppe=
ter <span dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter@gmail.com" targe=
t=3D"_blank">till.kamppeter@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">Due to a problem with the BZR I had to release cups-filt=
ers 1.0.65 shortly afterwards. This is now also the version in Ubuntu 15.04=
 (Vivid). ChangeLog below (all changes are bug fixes for legacy CUPS broadc=
asting/browsing contributed by Tim Waugh from Red Hat).<br>
<br>
Please update the minutes.<br>
<br>
=C2=A0 =C2=A0Till<br>
<br>
----------<br>
<br>
NEWS - OpenPrinting CUPS Filters v1.0.65 - 2015-02-13<br>
------------------------------<u></u>-----------------------<br>
<br>
CHANGES IN V1.0.65<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Listen for NetworkManager chang=
es (Red Hat bug #975933).<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Fix for memory leak introduced =
in BZR rev 7059.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Memory leak/uninit fixes.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Cache prepared browse data to s=
end.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Only get local notifications on=
ce per<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BrowsePoll run.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Fix BrowsePoll now notification=
s work properly.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Need to maintain a list of printers to k=
eep alive for the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 case of there being no notifications of =
changes.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Use local browsepolling for get=
ting initial<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printer list.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Ignore browse packets for delet=
ed printers.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Cache connection to local cupsd=
.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Use notifications to track loca=
l printers.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 This avoids expensive calls to cupsGetDe=
sts().<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Manage subscriptions for local =
browsepolling.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Track notify-sequence-number fo=
r notifications.<span class=3D""><br>
<br>
<br>
On 15.02.2015 19:00, Ira McDonald wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
Hi,<br>
<br>
Minutes from last week&#39;s Open Printingcall are posted at:<span class=3D=
""><br>
<br>
<a href=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Minutes-201502=
10.htm" target=3D"_blank">ftp://ftp.pwg.org/pub/pwg/<u></u>openprinting/min=
utes/OP-<u></u>Minutes-20150210.htm</a><br>
<br>
<br>
Action Items:<br>
<br>
- None<br>
<br>
<br>
Next OP US/Europe Conference Calls:<br>
<br>
(1) March 2015 - US/Europe - OP Monthly Meeting<br>
=C2=A0 =C2=A0 =C2=A0- Note - complete recruiting OPS speakers for April Joi=
nt PWG/OPS<br>
=C2=A0 =C2=A0 =C2=A0- Note - send final OPS topics and speakers list to PWG=
 for agenda<br>
<br>
=C2=A0 =C2=A0 =C2=A0- Tuesday 10 March 2015, Daytime<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- US<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A010am in San Francisco - US PST (Pacific S=
tandard Time)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A011am in Colorado - US MST (Mountain Stand=
ard Time)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A012pm in Chicago - US CST (Central Standar=
d Time)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01pm in New York - US EST (Eastern Standar=
d Time)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- Europe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A07pm in Berlin - CET (Central European Tim=
e)<br>
<br>
=C2=A0 =C2=A0 =C2=A0* Main Number (Till Kamppeter, LF, leader)<br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0International: <a href=3D"tel:%2B1-619-326-2730"=
 value=3D"+16193262730" target=3D"_blank">+1-619-326-2730</a> &lt;tel:%2B1-=
619-326-2730&gt; (new number)<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0Access Code:=C2=A0 =C2=A0491659#<br>
<br>
(2) April 2015 - US/Europe - OP Monthly Meeting (tentative)<br>
=C2=A0 =C2=A0 =C2=A0- Note - US Daylight Savings Time starts 8 March 2015<b=
r>
=C2=A0 =C2=A0 =C2=A0- Note - Europe Summer Time starts 29 March 2015<br>
=C2=A0 =C2=A0 =C2=A0- Note - resolve any issues for April Joint PWG/OPS<br>
<br>
=C2=A0 =C2=A0 =C2=A0- Tuesday 7 April 2015, Daytime<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- US<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A010am in San Francisco - US PDT (Pacific D=
aylight Time)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A011am in Colorado - US MDT (Mountain Dayli=
ght Time)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A012pm in Chicago - US CDT (Central Dayligh=
t Time)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01pm in New York - US EDT (Eastern Dayligh=
t Time)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- Europe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A07pm in Berlin - CEST (Central Europe Summ=
er Time)<br>
<br>
=C2=A0 =C2=A0 =C2=A0* Main Number (Till Kamppeter, LF, leader)<br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0International: <a href=3D"tel:%2B1-619-326-2730"=
 value=3D"+16193262730" target=3D"_blank">+1-619-326-2730</a> &lt;tel:%2B1-=
619-326-2730&gt; (new number)<span class=3D""><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0Access Code:=C2=A0 =C2=A0491659#<br>
<br>
Cheers,<br>
- Ira<br>
<br>
<br>
Ira McDonald (Musician / Software Architect)<br>
Co-Chair - TCG Trusted Mobility Solutions WG<br>
Chair - Linux Foundation Open Printing WG<br>
Secretary - IEEE-ISTO Printer Working Group<br>
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>
IETF Designated Expert - IPP &amp; Printer MIB<br>
Blue Roof Music / High North Inc<br>
<a href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blank">ht=
tp://sites.google.com/site/<u></u>blueroofmusic</a><br>
<a href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank">htt=
p://sites.google.com/site/<u></u>highnorthinc</a><br></span>
mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluero=
ofmusic@gmail.com</a> &lt;mailto:<a href=3D"mailto:blueroofmusic@gmail.com"=
 target=3D"_blank">blueroofmusic@gmail.<u></u>com</a>&gt;<span class=3D""><=
br>
Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 <a href=3D"t=
el:734-944-0094" value=3D"+17349440094" target=3D"_blank">734-944-0094</a><=
br>
Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 <a href=3D"tel:9=
06-494-2434" value=3D"+19064942434" target=3D"_blank">906-494-2434</a><br>
<br>
</span></blockquote>
<br>
</blockquote></div><br>

--047d7b6227ced3b9d5050f2a537e--
