Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7U/0ENTSVWRqq3+orI9GUMAsslhACg4MzpEBE9jtBuA=;
	b=wsOzm+IT3DUT/5SJ1Hu/APkXIZ9ulLLPgnrq4XLdZ1zGP1NqPttzRMrNYLUZG72gZs
	ZW8iHyqQ//c4YoImkC9KAnf6ah9B6tM9H5QuNHNGBynCLmLqH91N9ZiwkZ5gVqRENt63
	uKxgRRTzFI1cj0/TSmJVUymekNgDXIlOPcdD3H+SwjXjd3RQ5pMDweCdnBuXQBCwZWpM
	MU/Nf7AfFNBSBE6YATrSSmGmQsoAL1pzCCgNRZAGDei0KrCHl1WTNrX3yrWl46wDxWkB
	zo17DmVBQ4OytOI/TAq3Lu+jYj/nyFwXDIlQyGOjt9P0NtKyBj0PkdVOxr1oWQ5Wa1+n
	dwFQ==
MIME-Version: 1.0
In-Reply-To: <CAGC3nLDxxYjy7ydTqUHncKW9CCLqTiGyP0t-E_Wqf3pob1avDg@mail.gmail.com>
References: <CAN40gSuYBV51pJ3hmCrbup2XnavgCbVT5JDXqxiuRYDJk78BQw@mail.gmail.com>
	<CAGC3nLDxxYjy7ydTqUHncKW9CCLqTiGyP0t-E_Wqf3pob1avDg@mail.gmail.com>
Date: Thu, 29 Mar 2012 00:17:34 -0400
Message-ID: <CAN40gSsksMRO2+r8uZ_=VPaxKRbb3GZBdd7WpmPZYGuEcqnSEQ@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Content-Type: multipart/alternative; boundary=f46d044268e6ddc4aa04bc5a00bc
Subject: Re: [Printing-architecture] [Printing-summit] OPS Preparation
	minutes (28 March 2012)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Daniel Dressler <danieru.dressler@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

--f46d044268e6ddc4aa04bc5a00bc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

Comments inline below.

Cheers,
- Ira


On Wed, Mar 28, 2012 at 7:09 PM, Daniel Dressler <danieru.dressler@gmail.co=
m
> wrote:

> In response to some comments in the meeting.
>
> 1. I would prefer an 'op' prefix to 'fsgjt'. I assume fsgjt means free
> standards group job ticket? Since the fsg does not exist anymore I think
> 'op' would avoid confusion. And it is shorter.
>
> Do we know of any namespace conflicts with other op libraries? It's been
> 5+ years, has this situation changed?
>
> <ira>
The Open Printing Vector API uses 'opvp' as prefix throughout.
It's sloppy and amateur coding practice not to use a library
specific unique prefix (e.g., 'opjt') for variables and functions.

The scope is NOT just OP libraries, but the entire universe of
code that might be linked into a vendor or third-party tool.
</ira>


> 2. I will be attending as much of the summit as I can by phone-in, the
> summit takes place over my finals so I will be missing some sessions.
>
> <ira>
Understood - we'll be glad to have you when you can attend.
</ira>

3. If the wiki has no history does that mean it is pointless for me to fill
> in the change log when making edits?
>
> <ira>
Till can hopefully answer this one - we're not any of us happy
about the move from a full-function Wiki tool to a limited Wiki
tool by the Linux Foundation.
</ira>

Daniel

>
> 2012=E5=B9=B43=E6=9C=8828=E6=97=A513:38 Ira McDonald <blueroofmusic@gmail=
.com>:
>
>> Hi,
>>
>> Minutes from today's Open Printing Summit planning call are posted at:
>>
>>
>> ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit-Prep-20120328.h=
tm
>>
>> Note:  New FTP directory - see above
>>
>> - ACTION - Till - contact Linux Foundation about Glen/Hin-Tak updates
>>   to GSoC projects - no website fall-backs allowed until late April
>>   - OPEN
>>
>> - ACTION - Till - contact Ghostscript and other color management folks
>>   as presenters (or send slides?)
>>   - Michael Vrhel (Artifex, Ghostscript) will attend OPS
>>   - OPEN
>>
>> - ACTION - All - Draft presentation slides/outlines for review 11 April
>>   - OPEN
>>
>> - ACTION - Presenters - tell Till EARLY about any special requirements
>>   (e.g., speakers for video, demo printers, etc.)
>>   - OPEN
>>
>> - ACTION - Presenters - send PDF slides to Till EARLY (or upload to OP)
>>   (so that participants can download slides as backup for screencast)
>>   - OPEN
>>
>> - ACTION - Ira - draft slides for OP Plenary by 11 April
>>   - OPEN
>>
>> Next OP Conference Calls:
>> (1) April 2012 - OPS Preparation
>>     - Note - US Daylight Savings Time started on Sunday 11 March 2012
>>     - Note - Europe Summer Time started on Sunday 25 March 2012
>>
>>     - Wednesday 11 April 2012, Daytime
>>       - US
>>         9am in San Francisco - US PDT (Pacific Daylight Time)
>>         10am in Colorado - US MDT (Mountain Daylight Time)
>>         11am in Chicago - US CDT (Central Daylight Time)
>>         12pm in New York - US EDT (Eastern Daylight Time)
>>       - Europe
>>         6pm in Berlin - CEST (Central European Summer Time)
>>
>>     * Main Number (Till Kamppeter, LF, leader)
>>       International: +1-218-936-7999
>>       Access Code:   491659#
>>
>> (2) April 2012 - Joint PWG / Open Printing Summit
>>     - Note - OPS is NOT hosted by Linux Foundation Collaboration Summit
>>
>>     - Tuesday to Friday 24-27 April 2012 at Apple in Cupertino, CA
>>       - US
>>         9am in San Francisco - US PDT (Pacific Daylight Time)
>>         10am in Colorado - US MDT (Mountain Daylight Time)
>>         11am in Chicago - US CDT (Central Daylight Time)
>>         12pm in New York - US EDT (Eastern Daylight Time)
>>       - Europe
>>         6pm in Berlin - CEST (Central European Summer Time)
>>
>>     * Main PWG Number (Mike Sweet, Apple, leader)
>>       US Toll-Free:  +1-866-469-3239
>>       International: +1-650-429-3300
>>       Access Code:   By request to Ira McDonald (do NOT publish)
>>
>> (3) May 2012 - US/Europe - OP Monthly Meeting
>>     - Note - Joint PWG/OPS is 24-27 April at Apple in Cupertino, CA
>>     - Note - Ubuntu Developer Summit is 7-11 May in Oakland, CA
>>     - Note - Ira has a conflict on 16 May
>>
>>     - Wednesday 23 May 2012, Daytime
>>       - US
>>         9am in San Francisco - US PDT (Pacific Daylight Time)
>>         10am in Colorado - US MDT (Mountain Daylight Time)
>>         11am in Chicago - US CDT (Central Daylight Time)
>>         12pm in New York - US EDT (Eastern Daylight Time)
>>       - Europe
>>         6pm in Berlin - CEST (Central European Summer Time)
>>
>>     * Main Number (Till Kamppeter, LF, leader)
>>       International: +1-218-936-7999
>>       Access Code:   491659#
>>
>> Cheers,
>> - Ira
>>
>> Ira McDonald (Musician / Software Architect)
>> Chair - Linux Foundation Open Printing WG
>> Secretary - IEEE-ISTO Printer Working Group
>> Co-Chair - IEEE-ISTO PWG IPP WG
>> Co-Chair - TCG Trusted Mobility Solutions WG
>> Chair - TCG Embedded Systems Hardcopy SG
>> IETF Designated Expert - IPP & Printer MIB
>> Blue Roof Music/High North Inc
>> http://sites.google.com/site/blueroofmusic
>> http://sites.google.com/site/highnorthinc
>> mailto:blueroofmusic@gmail.com
>> Winter  579 Park Place  Saline, MI  48176  734-944-0094
>> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>>
>>
>> _______________________________________________
>> Printing-summit mailing list
>> Printing-summit@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-summit
>>
>>
>

--f46d044268e6ddc4aa04bc5a00bc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Daniel,<br><br>Comments inline below.<br><br>Cheers,<br>- Ira<br><br><br=
><div class=3D"gmail_quote">On Wed, Mar 28, 2012 at 7:09 PM, Daniel Dressle=
r <span dir=3D"ltr">&lt;<a href=3D"mailto:danieru.dressler@gmail.com">danie=
ru.dressler@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">In response to some comments in the meeting.=
<br><br>1. I would prefer an &#39;op&#39; prefix to &#39;fsgjt&#39;. I assu=
me fsgjt means free standards group job ticket? Since the fsg does not exis=
t anymore I think &#39;op&#39; would avoid confusion. And it is shorter.<br=
>

<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt =
0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Do we kn=
ow of any namespace conflicts with other op libraries? It&#39;s been 5+ yea=
rs, has this situation changed?<br>
<br></blockquote><div>&lt;ira&gt;<br>
The Open Printing Vector API uses &#39;opvp&#39; as prefix throughout.<br>
It&#39;s sloppy and amateur coding practice not to use a library <br>
specific unique prefix (e.g., &#39;opjt&#39;) for variables and functions.<=
br><br>The scope is NOT just OP libraries, but the entire universe of<br>co=
de that might be linked into a vendor or third-party tool.<br>
&lt;/ira&gt;<br>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">2. I will be attending as much of the summit as I can by phone-in, t=
he summit takes place over my finals so I will be missing some sessions.<br=
>

<br></blockquote><div>&lt;ira&gt; <br>Understood - we&#39;ll be glad to hav=
e you when you can attend.<br>&lt;/ira&gt;<br><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
3. If the wiki has no history does that mean it is pointless for me to fill=
 in the change log when making edits?<br><br></blockquote><div>&lt;ira&gt;<=
br>Till can hopefully answer this one - we&#39;re not any of us happy<br>
about the move from a full-function Wiki tool to a limited Wiki<br>tool by =
the Linux Foundation.<br>&lt;/ira&gt;<br><br>Daniel<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
<br><div class=3D"gmail_quote">2012=E5=B9=B43=E6=9C=8828=E6=97=A513:38 Ira =
McDonald <span dir=3D"ltr">&lt;<a href=3D"mailto:blueroofmusic@gmail.com" t=
arget=3D"_blank">blueroofmusic@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"h5">Hi, <br><br>Minutes f=
rom today&#39;s Open Printing <span>Summit planning call</span> are posted =
at:<br>

<br>
=C2=A0<a href=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit-P=
rep-20120328.htm" target=3D"_blank">ftp://ftp.pwg.org/pub/pwg/openprinting/=
minutes/OP-Summit-Prep-20120328.htm</a><br><br>Note:=C2=A0 New FTP director=
y - see above<br>


<br>- ACTION - Till - contact Linux Foundation about Glen/Hin-Tak updates<b=
r>=C2=A0 to GSoC projects - no website fall-backs allowed until late April<=
br>=C2=A0 - OPEN<br><br>- ACTION - Till - contact Ghostscript and other col=
or management folks<br>


=C2=A0 as presenters (or send slides?)<br>=C2=A0 - Michael Vrhel (Artifex, =
Ghostscript) will attend OPS<br>=C2=A0 - OPEN<br><br>- ACTION - All - Draft=
 presentation slides/outlines for review 11 April<br>=C2=A0 - OPEN<br><br>-=
 ACTION - Presenters - tell Till EARLY about any special requirements<br>


=C2=A0 (e.g., speakers for video, demo printers, etc.)<br>=C2=A0 - OPEN<br>
<br>- ACTION - Presenters - send PDF slides to Till EARLY (or upload to OP)=
<br>=C2=A0 (so that participants can download slides as backup for screenca=
st)<br>=C2=A0 - OPEN<br><br>- ACTION - Ira - draft slides for OP Plenary by=
 11 April<br>


=C2=A0 - OPEN<br><br>Next OP Conference Calls:<br>
(1) April 2012 - OPS Preparation<br>=C2=A0=C2=A0=C2=A0 - Note - US Daylight=
 Savings Time started on Sunday 11 March 2012<br>=C2=A0=C2=A0=C2=A0 - Note =
- Europe Summer Time started on Sunday 25 March 2012<br><br>=C2=A0=C2=A0=C2=
=A0 - Wednesday 11 April 2012, Daytime<br>


=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - US<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 9am in San Francisco - US PDT (Pacific Daylight Time)<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10am in Colorado - US MDT (Mountain Dayli=
ght Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11am in Chicago - U=
S CDT (Central Daylight Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 12pm in New York - US EDT (Eastern Daylight Time)<br>


=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Europe<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 6pm in Berlin - CEST (Central European Summer Time)<br><br>=C2=
=A0=C2=A0=C2=A0 * Main Number (Till Kamppeter, LF, leader)<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 International: <a href=3D"tel:%2B1-218-936-7999" value=
=3D"+12189367999" target=3D"_blank">+1-218-936-7999</a><br>

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Access Code:=C2=A0=C2=A0 491659#<br><br>(2) =
April 2012 - Joint PWG / Open Printing Summit<br>
=C2=A0=C2=A0=C2=A0 - Note - OPS is NOT hosted by Linux Foundation Collabora=
tion Summit<br><br>=C2=A0=C2=A0=C2=A0 - Tuesday to Friday 24-27 April 2012 =
at Apple in Cupertino, CA<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - US<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 9am in San Francisco - US PDT (Pacific Daylight Time)<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10am in Colorado - US MDT (Mountain Dayli=
ght Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11am in Chicago - U=
S CDT (Central Daylight Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 12pm in New York - US EDT (Eastern Daylight Time)<br>



=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Europe<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 6pm in Berlin - CEST (Central European Summer Time)<br><br>=C2=
=A0=C2=A0=C2=A0 * Main PWG Number (Mike Sweet, Apple, leader)<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 US Toll-Free:=C2=A0 <a href=3D"tel:%2B1-866-469-3239"=
 value=3D"+18664693239" target=3D"_blank">+1-866-469-3239</a><br>


=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 International: <a href=3D"tel:%2B1-650-429-3=
300" value=3D"+16504293300" target=3D"_blank">+1-650-429-3300</a><br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 Access Code:=C2=A0=C2=A0 By request to Ira McDonal=
d (do NOT publish)<br>
<br>(3) May 2012 - US/Europe - OP Monthly Meeting<br>=C2=A0=C2=A0=C2=A0 - N=
ote - Joint PWG/OPS is 24-27 April at Apple in Cupertino, CA<br>=C2=A0=C2=
=A0=C2=A0 - Note - Ubuntu Developer Summit is 7-11 May in Oakland, CA<br>=
=C2=A0=C2=A0=C2=A0 - Note - Ira has a conflict on 16 May<br>


<br>=C2=A0=C2=A0=C2=A0 - Wednesday 23 May 2012, Daytime<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 - US<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 9am in S=
an Francisco - US PDT (Pacific Daylight Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 10am in Colorado - US MDT (Mountain Daylight Time)<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11am in Chicago - US CDT (Centra=
l Daylight Time)<br>


=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12pm in New York - US EDT (Easte=
rn Daylight Time)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Europe<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6pm in Berlin - CEST (Central European Su=
mmer Time)<br><br>=C2=A0=C2=A0=C2=A0 * Main Number (Till Kamppeter, LF, lea=
der)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 International: <a href=3D"tel:%2B1-2=
18-936-7999" value=3D"+12189367999" target=3D"_blank">+1-218-936-7999</a><b=
r>


=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Access Code:=C2=A0=C2=A0 491659#<br><br>Chee=
rs,<br>
- Ira<br><br clear=3D"all">Ira McDonald (Musician / Software Architect)<br>=
Chair - Linux Foundation Open Printing WG<br>Secretary - IEEE-ISTO Printer =
Working Group<br>Co-Chair - IEEE-ISTO PWG IPP WG<br>Co-Chair - TCG Trusted =
Mobility Solutions WG<br>


Chair - TCG Embedded Systems Hardcopy SG<br>IETF Designated Expert - IPP &a=
mp; Printer MIB<br>Blue Roof Music/High North Inc<br><a style=3D"color:rgb(=
51,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_=
blank">http://sites.google.com/site/blueroofmusic</a><br>


<a style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/high=
northinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><b=
r>mailto:<a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluer=
oofmusic@gmail.com</a><br>


Winter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 <a href=3D"t=
el:734-944-0094" value=3D"+17349440094" target=3D"_blank">734-944-0094</a><=
br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 <a href=3D"te=
l:906-494-2434" value=3D"+19064942434" target=3D"_blank">906-494-2434</a><d=
iv style=3D"display:inline">

</div><div style=3D"display:inline"></div><div style=3D"display:inline"></d=
iv><div>
</div><div></div><div></div><div></div><br>
<br></div></div>_______________________________________________<br>
Printing-summit mailing list<br>
<a href=3D"mailto:Printing-summit@lists.linux-foundation.org" target=3D"_bl=
ank">Printing-summit@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-summ=
it" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listinfo/pr=
inting-summit</a><br>
<br></blockquote></div><br>
</blockquote></div><br>

--f46d044268e6ddc4aa04bc5a00bc--
