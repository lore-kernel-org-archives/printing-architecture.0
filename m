Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_PTNlVJDQY6FWfoy63HVacQ)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAN40gSvKGyc69tBh0A=h7vf-h3OjDTp3Ardoe3NNEPxwJWXyZQ@mail.gmail.com>
Date: Thu, 29 Mar 2012 09:03:07 -0700
Message-id: <3B2A0E54-BEB5-45C3-98D9-1D7C8D058EF8@apple.com>
References: <CAN40gSuYBV51pJ3hmCrbup2XnavgCbVT5JDXqxiuRYDJk78BQw@mail.gmail.com>
	<CAGC3nLDxxYjy7ydTqUHncKW9CCLqTiGyP0t-E_Wqf3pob1avDg@mail.gmail.com>
	<CAN40gSsksMRO2+r8uZ_=VPaxKRbb3GZBdd7WpmPZYGuEcqnSEQ@mail.gmail.com>
	<CAGC3nLDwMYRqmAEgS4VSwwp8=2n8Q2Ff-WcXsnWEgVKCkP8nbg@mail.gmail.com>
	<CAN40gSvKGyc69tBh0A=h7vf-h3OjDTp3Ardoe3NNEPxwJWXyZQ@mail.gmail.com>
Subject: Re: [Printing-architecture] [Printing-summit] OPS
 Preparation	minutes (28 March 2012)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org


--Boundary_(ID_PTNlVJDQY6FWfoy63HVacQ)
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable

Ira,

Internal/private APIs are often coded with a leading underscore, e.g. =
"_opjtInternalFunction".  Functions with a leading underscore are =
typically not exported by default (a nice side-effect).


On Mar 29, 2012, at 5:29 AM, Ira McDonald wrote:

> Hi Daniel,
>=20
> Yes, any globally scoped function or variable is a potential
> source of collision.
>=20
> A specific instance - a printer manufacturer might link JTAPI
> into their implementation of IPP or PWG SM Print (over SOAP).
> In that case, we have to be concerned that their original source
> code may not always have used good programming practice
> with scoping prefixes.
>=20
> For internal functions that are globally scoped, I suggest that
> a distinct prefix such as "opjtint" would be good for readability
> and to clarify that the given function/variable is NOT intended
> to be used by the application integrator.
>=20
> Glen - WDYT?
>=20
> Cheers,
> - Ira
>=20
>=20
>=20
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
>=20
>=20
>=20
> On Thu, Mar 29, 2012 at 12:29 AM, Daniel Dressler =
<danieru.dressler@gmail.com> wrote:
> Thank you Ira
>=20
> Is it correct that I have to worry about all globally scoped things =
that will get linked in the library user's program(which would be =
everything)? So for instance will the internal functions require a =
prefix?
>=20
> I think opjt would be equally nice, is that a possible prefixy?
>=20
> Daniel
>=20
> 2012=E5=B9=B43=E6=9C=8828=E6=97=A522:17 Ira McDonald =
<blueroofmusic@gmail.com>:
>=20
> Hi Daniel,
>=20
> Comments inline below.
>=20
> Cheers,
> - Ira
>=20
>=20
> On Wed, Mar 28, 2012 at 7:09 PM, Daniel Dressler =
<danieru.dressler@gmail.com> wrote:
> In response to some comments in the meeting.
>=20
> 1. I would prefer an 'op' prefix to 'fsgjt'. I assume fsgjt means free =
standards group job ticket? Since the fsg does not exist anymore I think =
'op' would avoid confusion. And it is shorter.
>=20
> Do we know of any namespace conflicts with other op libraries? It's =
been 5+ years, has this situation changed?
>=20
> <ira>
> The Open Printing Vector API uses 'opvp' as prefix throughout.
> It's sloppy and amateur coding practice not to use a library specific =
unique prefix (e.g., 'opjt') for variables and functions.
>=20
> The scope is NOT just OP libraries, but the entire universe of
> code that might be linked into a vendor or third-party tool.
> </ira>
> =20
> 2. I will be attending as much of the summit as I can by phone-in, the =
summit takes place over my finals so I will be missing some sessions.
>=20
> <ira>=20
> Understood - we'll be glad to have you when you can attend.
> </ira>
>=20
> 3. If the wiki has no history does that mean it is pointless for me to =
fill in the change log when making edits?
>=20
> <ira>
> Till can hopefully answer this one - we're not any of us happy
> about the move from a full-function Wiki tool to a limited Wiki
> tool by the Linux Foundation.
> </ira>
>=20
> Daniel
>=20
> 2012=E5=B9=B43=E6=9C=8828=E6=97=A513:38 Ira McDonald =
<blueroofmusic@gmail.com>:
> Hi,=20
>=20
> Minutes from today's Open Printing Summit planning call are posted at:
>=20
>  =
ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit-Prep-20120328.htm=

>=20
> Note:  New FTP directory - see above
>=20
> - ACTION - Till - contact Linux Foundation about Glen/Hin-Tak updates
>   to GSoC projects - no website fall-backs allowed until late April
>   - OPEN
>=20
> - ACTION - Till - contact Ghostscript and other color management folks
>   as presenters (or send slides?)
>   - Michael Vrhel (Artifex, Ghostscript) will attend OPS
>   - OPEN
>=20
> - ACTION - All - Draft presentation slides/outlines for review 11 =
April
>   - OPEN
>=20
> - ACTION - Presenters - tell Till EARLY about any special requirements
>   (e.g., speakers for video, demo printers, etc.)
>   - OPEN
>=20
> - ACTION - Presenters - send PDF slides to Till EARLY (or upload to =
OP)
>   (so that participants can download slides as backup for screencast)
>   - OPEN
>=20
> - ACTION - Ira - draft slides for OP Plenary by 11 April
>   - OPEN
>=20
> Next OP Conference Calls:
> (1) April 2012 - OPS Preparation
>     - Note - US Daylight Savings Time started on Sunday 11 March 2012
>     - Note - Europe Summer Time started on Sunday 25 March 2012
>=20
>     - Wednesday 11 April 2012, Daytime
>       - US
>         9am in San Francisco - US PDT (Pacific Daylight Time)
>         10am in Colorado - US MDT (Mountain Daylight Time)
>         11am in Chicago - US CDT (Central Daylight Time)
>         12pm in New York - US EDT (Eastern Daylight Time)
>       - Europe
>         6pm in Berlin - CEST (Central European Summer Time)
>=20
>     * Main Number (Till Kamppeter, LF, leader)
>       International: +1-218-936-7999
>       Access Code:   491659#
>=20
> (2) April 2012 - Joint PWG / Open Printing Summit
>     - Note - OPS is NOT hosted by Linux Foundation Collaboration =
Summit
>=20
>     - Tuesday to Friday 24-27 April 2012 at Apple in Cupertino, CA
>       - US
>         9am in San Francisco - US PDT (Pacific Daylight Time)
>         10am in Colorado - US MDT (Mountain Daylight Time)
>         11am in Chicago - US CDT (Central Daylight Time)
>         12pm in New York - US EDT (Eastern Daylight Time)
>       - Europe
>         6pm in Berlin - CEST (Central European Summer Time)
>=20
>     * Main PWG Number (Mike Sweet, Apple, leader)
>       US Toll-Free:  +1-866-469-3239
>       International: +1-650-429-3300
>       Access Code:   By request to Ira McDonald (do NOT publish)
>=20
> (3) May 2012 - US/Europe - OP Monthly Meeting
>     - Note - Joint PWG/OPS is 24-27 April at Apple in Cupertino, CA
>     - Note - Ubuntu Developer Summit is 7-11 May in Oakland, CA
>     - Note - Ira has a conflict on 16 May
>=20
>     - Wednesday 23 May 2012, Daytime
>       - US
>         9am in San Francisco - US PDT (Pacific Daylight Time)
>         10am in Colorado - US MDT (Mountain Daylight Time)
>         11am in Chicago - US CDT (Central Daylight Time)
>         12pm in New York - US EDT (Eastern Daylight Time)
>       - Europe
>         6pm in Berlin - CEST (Central European Summer Time)
>=20
>     * Main Number (Till Kamppeter, LF, leader)
>       International: +1-218-936-7999
>       Access Code:   491659#
>=20
> Cheers,
> - Ira
>=20
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
>=20
>=20
> _______________________________________________
> Printing-summit mailing list
> Printing-summit@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-summit
>=20
>=20
>=20
>=20
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_PTNlVJDQY6FWfoy63HVacQ)
Content-type: text/html; charset=utf-8
Content-transfer-encoding: quoted-printable

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Ira,<div><br></div><div>Internal/private APIs are often coded with a =
leading underscore, e.g. "_opjtInternalFunction". &nbsp;Functions with a =
leading underscore are typically not exported by default (a nice =
side-effect).</div><div><br></div><div><br></div><div><div><div>On Mar =
29, 2012, at 5:29 AM, Ira McDonald wrote:</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite">Hi =
Daniel,<br><br>Yes, any globally scoped function or variable is a =
potential<br>source of collision.<br><br>A specific instance - a printer =
manufacturer might link JTAPI<br>into their implementation of IPP or PWG =
SM Print (over SOAP).<br>
In that case, we have to be concerned that their original source<br>code =
may not always have used good programming practice<br>with scoping =
prefixes.<br><br>For internal functions that are globally scoped, I =
suggest that<br>
a distinct prefix such as "opjtint" would be good for readability<br>and =
to clarify that the given function/variable is NOT intended<br>to be =
used by the application integrator.<br><br>Glen - =
WDYT?<br><br>Cheers,<br>
- Ira<br><br><br><br clear=3D"all">Ira McDonald (Musician / Software =
Architect)<br>Chair - Linux Foundation Open Printing WG<br>Secretary - =
IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG IPP =
WG<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>
Chair - TCG Embedded Systems Hardcopy SG<br>IETF Designated Expert - IPP =
&amp; Printer MIB<br>Blue Roof Music/High North Inc<br><a =
style=3D"color:rgb(51,51,255)" =
href=3D"http://sites.google.com/site/blueroofmusic" =
target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br>
<a style=3D"color:rgb(102,0,204)" =
href=3D"http://sites.google.com/site/highnorthinc" =
target=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>mailto:=
<a href=3D"mailto:blueroofmusic@gmail.com" =
target=3D"_blank">blueroofmusic@gmail.com</a><br>
Winter&nbsp; 579 Park Place&nbsp; Saline, MI&nbsp; 48176&nbsp; =
734-944-0094<br>Summer&nbsp; PO Box 221&nbsp; Grand Marais, MI =
49839&nbsp; 906-494-2434<div style=3D"display:inline"></div><div =
style=3D"display:inline"></div><div style=3D"display:inline"></div><div>
</div><div></div><div></div><div></div><br>
<br><br><div class=3D"gmail_quote">On Thu, Mar 29, 2012 at 12:29 AM, =
Daniel Dressler <span dir=3D"ltr">&lt;<a =
href=3D"mailto:danieru.dressler@gmail.com">danieru.dressler@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Thank you Ira<br><br>Is it correct that I have to worry about all =
globally scoped things that will get linked in the library user's =
program(which would be everything)? So for instance will the internal =
functions require a prefix?<br>

<br>I think opjt would be equally nice, is that a possible =
prefixy?<br><br>Daniel<br><br><div =
class=3D"gmail_quote">2012=E5=B9=B43=E6=9C=8828=E6=97=A522:17 Ira =
McDonald <span dir=3D"ltr">&lt;<a href=3D"mailto:blueroofmusic@gmail.com" =
target=3D"_blank">blueroofmusic@gmail.com</a>&gt;</span>:<div>
<div class=3D"h5"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Hi =
Daniel,<br><br>Comments inline below.<br><br>Cheers,<br>- =
Ira<br><br><br><div class=3D"gmail_quote"><div>On Wed, Mar 28, 2012 at =
7:09 PM, Daniel Dressler <span dir=3D"ltr">&lt;<a =
href=3D"mailto:danieru.dressler@gmail.com" =
target=3D"_blank">danieru.dressler@gmail.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">In response to some =
comments in the meeting.<br><br>1. I would prefer an 'op' prefix to =
'fsgjt'. I assume fsgjt means free standards group job ticket? Since the =
fsg does not exist anymore I think 'op' would avoid confusion. And it is =
shorter.<br>



<br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0pt =
0pt 0pt 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Do we know of any namespace conflicts =
with other op libraries? It's been 5+ years, has this situation =
changed?<br>


<br></blockquote></div><div>&lt;ira&gt;<br>
The Open Printing Vector API uses 'opvp' as prefix throughout.<br>
It's sloppy and amateur coding practice not to use a library=20
specific unique prefix (e.g., 'opjt') for variables and =
functions.<br><br>The scope is NOT just OP libraries, but the entire =
universe of<br>code that might be linked into a vendor or third-party =
tool.<br>
&lt;/ira&gt;<br>&nbsp;<br></div><div><blockquote class=3D"gmail_quote" =
style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">2. I will be attending as much of the =
summit as I can by phone-in, the summit takes place over my finals so I =
will be missing some sessions.<br>



<br></blockquote></div><div>&lt;ira&gt; <br>Understood - we'll be glad =
to have you when you can =
attend.<br>&lt;/ira&gt;<br><br></div><div><blockquote =
class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">


3. If the wiki has no history does that mean it is pointless for me to =
fill in the change log when making =
edits?<br><br></blockquote></div><div>&lt;ira&gt;<br>Till can hopefully =
answer this one - we're not any of us happy<br>


about the move from a full-function Wiki tool to a limited Wiki<br>tool =
by the Linux =
Foundation.<br>&lt;/ira&gt;<br><br>Daniel<br></div><div><div><blockquote =
class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">


<br><div class=3D"gmail_quote">2012=E5=B9=B43=E6=9C=8828=E6=97=A513:38 =
Ira McDonald <span dir=3D"ltr">&lt;<a =
href=3D"mailto:blueroofmusic@gmail.com" =
target=3D"_blank">blueroofmusic@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div>Hi, =
<br><br>Minutes from today's Open Printing <span>Summit planning =
call</span> are posted at:<br>

<br>
&nbsp;<a =
href=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit-Prep-2012=
0328.htm" =
target=3D"_blank">ftp://ftp.pwg.org/pub/pwg/openprinting/minutes/OP-Summit=
-Prep-20120328.htm</a><br><br>Note:&nbsp; New FTP directory - see =
above<br>




<br>- ACTION - Till - contact Linux Foundation about Glen/Hin-Tak =
updates<br>&nbsp; to GSoC projects - no website fall-backs allowed until =
late April<br>&nbsp; - OPEN<br><br>- ACTION - Till - contact Ghostscript =
and other color management folks<br>




&nbsp; as presenters (or send slides?)<br>&nbsp; - Michael Vrhel =
(Artifex, Ghostscript) will attend OPS<br>&nbsp; - OPEN<br><br>- ACTION =
- All - Draft presentation slides/outlines for review 11 April<br>&nbsp; =
- OPEN<br><br>- ACTION - Presenters - tell Till EARLY about any special =
requirements<br>




&nbsp; (e.g., speakers for video, demo printers, etc.)<br>&nbsp; - =
OPEN<br>
<br>- ACTION - Presenters - send PDF slides to Till EARLY (or upload to =
OP)<br>&nbsp; (so that participants can download slides as backup for =
screencast)<br>&nbsp; - OPEN<br><br>- ACTION - Ira - draft slides for OP =
Plenary by 11 April<br>




&nbsp; - OPEN<br><br>Next OP Conference Calls:<br>
(1) April 2012 - OPS Preparation<br>&nbsp;&nbsp;&nbsp; - Note - US =
Daylight Savings Time started on Sunday 11 March =
2012<br>&nbsp;&nbsp;&nbsp; - Note - Europe Summer Time started on Sunday =
25 March 2012<br><br>&nbsp;&nbsp;&nbsp; - Wednesday 11 April 2012, =
Daytime<br>




&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
US<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9am in San Francisco - =
US PDT (Pacific Daylight =
Time)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in Colorado - =
US MDT (Mountain Daylight =
Time)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Chicago - US =
CDT (Central Daylight =
Time)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pm in New York - =
US EDT (Eastern Daylight Time)<br>




&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
Europe<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6pm in Berlin - =
CEST (Central European Summer Time)<br><br>&nbsp;&nbsp;&nbsp; * Main =
Number (Till Kamppeter, LF, leader)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
International: <a href=3D"tel:%2B1-218-936-7999" value=3D"+12189367999" =
target=3D"_blank">+1-218-936-7999</a><br>



&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Access Code:&nbsp;&nbsp; =
491659#<br><br>(2) April 2012 - Joint PWG / Open Printing Summit<br>
&nbsp;&nbsp;&nbsp; - Note - OPS is NOT hosted by Linux Foundation =
Collaboration Summit<br><br>&nbsp;&nbsp;&nbsp; - Tuesday to Friday 24-27 =
April 2012 at Apple in Cupertino, CA<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
US<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9am in San Francisco - =
US PDT (Pacific Daylight =
Time)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in Colorado - =
US MDT (Mountain Daylight =
Time)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Chicago - US =
CDT (Central Daylight =
Time)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pm in New York - =
US EDT (Eastern Daylight Time)<br>





&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
Europe<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6pm in Berlin - =
CEST (Central European Summer Time)<br><br>&nbsp;&nbsp;&nbsp; * Main PWG =
Number (Mike Sweet, Apple, leader)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; US =
Toll-Free:&nbsp; <a href=3D"tel:%2B1-866-469-3239" value=3D"+18664693239" =
target=3D"_blank">+1-866-469-3239</a><br>




&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; International: <a =
href=3D"tel:%2B1-650-429-3300" value=3D"+16504293300" =
target=3D"_blank">+1-650-429-3300</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Access Code:&nbsp;&nbsp; By request to Ira McDonald (do NOT publish)<br>
<br>(3) May 2012 - US/Europe - OP Monthly Meeting<br>&nbsp;&nbsp;&nbsp; =
- Note - Joint PWG/OPS is 24-27 April at Apple in Cupertino, =
CA<br>&nbsp;&nbsp;&nbsp; - Note - Ubuntu Developer Summit is 7-11 May in =
Oakland, CA<br>&nbsp;&nbsp;&nbsp; - Note - Ira has a conflict on 16 =
May<br>




<br>&nbsp;&nbsp;&nbsp; - Wednesday 23 May 2012, =
Daytime<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
US<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9am in San Francisco - =
US PDT (Pacific Daylight =
Time)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in Colorado - =
US MDT (Mountain Daylight =
Time)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Chicago - US =
CDT (Central Daylight Time)<br>




&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pm in New York - US EDT =
(Eastern Daylight Time)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
Europe<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6pm in Berlin - =
CEST (Central European Summer Time)<br><br>&nbsp;&nbsp;&nbsp; * Main =
Number (Till Kamppeter, LF, leader)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
International: <a href=3D"tel:%2B1-218-936-7999" value=3D"+12189367999" =
target=3D"_blank">+1-218-936-7999</a><br>




&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Access Code:&nbsp;&nbsp; =
491659#<br><br>Cheers,<br>
- Ira<br><br clear=3D"all">Ira McDonald (Musician / Software =
Architect)<br>Chair - Linux Foundation Open Printing WG<br>Secretary - =
IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG IPP =
WG<br>Co-Chair - TCG Trusted Mobility Solutions WG<br>




Chair - TCG Embedded Systems Hardcopy SG<br>IETF Designated Expert - IPP =
&amp; Printer MIB<br>Blue Roof Music/High North Inc<br><a =
style=3D"color:rgb(51,51,255)" =
href=3D"http://sites.google.com/site/blueroofmusic" =
target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br>




<a style=3D"color:rgb(102,0,204)" =
href=3D"http://sites.google.com/site/highnorthinc" =
target=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>mailto:=
<a href=3D"mailto:blueroofmusic@gmail.com" =
target=3D"_blank">blueroofmusic@gmail.com</a><br>




Winter&nbsp; 579 Park Place&nbsp; Saline, MI&nbsp; 48176&nbsp; <a =
href=3D"tel:734-944-0094" value=3D"+17349440094" =
target=3D"_blank">734-944-0094</a><br>Summer&nbsp; PO Box 221&nbsp; =
Grand Marais, MI 49839&nbsp; <a href=3D"tel:906-494-2434" =
value=3D"+19064942434" target=3D"_blank">906-494-2434</a><div =
style=3D"display:inline">



</div><div style=3D"display:inline"></div><div =
style=3D"display:inline"></div><div>
</div><div></div><div></div><div></div><br>
<br></div></div>_______________________________________________<br>
Printing-summit mailing list<br>
<a href=3D"mailto:Printing-summit@lists.linux-foundation.org" =
target=3D"_blank">Printing-summit@lists.linux-foundation.org</a><br>
<a =
href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-summit=
" =
target=3D"_blank">https://lists.linuxfoundation.org/mailman/listinfo/print=
ing-summit</a><br>
<br></blockquote></div><br>
</blockquote></div></div></div><br>
</blockquote></div></div></div><br>
</blockquote></div><br>
_______________________________________________<br>Printing-architecture =
mailing list<br><a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printing-=
architecture@lists.linux-foundation.org</a><br>https://lists.linuxfoundati=
on.org/mailman/listinfo/printing-architecture<br></blockquote></div><br><d=
iv>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; color: =
rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; =
">_________________________________________________________<br>Michael =
Sweet, Senior Printing System&nbsp;Engineer, PWG =
Chair</div></span></span>
</div>
<br></div></body></html>=

--Boundary_(ID_PTNlVJDQY6FWfoy63HVacQ)--
