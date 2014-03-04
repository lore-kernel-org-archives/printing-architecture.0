Return-Path: <crimola@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=cLCIqdImpj+5vQxUkSVsBDf+JiLJqrskVodSfylFAEc=;
	b=TzB/K1hQ+p8+Qhkj9xVgUaqQ7S+PQv5lZYnDWFxE3TJsI8E4O0EYyySBd0jRh3n8S6
	pyz/hzJrzPEP1nsw0L9nw+V4OnIcGmqkQd5HWQXfinJMmkCxf1HJ7vC8+viUr0srDbPq
	wSsSbOorcKi0WiujOkNVaIdYeWcgU6qEwsQiysAOPdYHJRwuE5DOhsYkO01EN9Eni42Y
	d14prj+Vt+GEAazx/0FNGydhyfcJizqbZBX16n5CW35BqoToJUkychdNoxRMPbJFiqLE
	Dp2w07nunirAhO9PxcQC7KxXJVHNqm6iOHmm92C1PmHjhku3BaJcf9imjRFFKLho8hrs
	qlrw==
MIME-Version: 1.0
In-Reply-To: <F5FDC839-E328-4A25-AA34-AD2E3DF7DBAC@apple.com>
References: <530CCC53.8070007@gmail.com>
	<3F2A4315-4F2C-4BB1-BC9C-67B6F6BCD3A3@apple.com>
	<20140226014714.GA8346@kroah.com>
	<8E2929D6-4A60-4D27-9012-5250503D9B51@apple.com>
	<20140226230247.GA8283@kroah.com>
	<1A785707-19A7-43D8-8B21-98707C89AFCC@apple.com>
	<CAEzcFASVGm8brh_=DB25Ys25d=htLjwBCUpw_sYxAYSzw0ZvyQ@mail.gmail.com>
	<93BF1B5B-19A0-4C58-8D0D-C9B966AA44D7@apple.com>
	<CAEzcFAS8LWcT+jH80Zeb-j+8bJDDoHoencERY7=zdBzeBSV09A@mail.gmail.com>
	<F5FDC839-E328-4A25-AA34-AD2E3DF7DBAC@apple.com>
Date: Tue, 4 Mar 2014 14:28:11 -0800
Message-ID: <CAEzcFAQOcvnoGd9Vvmc9V5Qeut3fO09AA4vANKFt6i1-gUKZDQ@mail.gmail.com>
From: Carlos Rimola <crimola@gmail.com>
Content-Type: multipart/alternative; boundary=001a11c25dea545f5104f3cf6b39
Subject: Re: [Printing-architecture] Google Summer of Code 2014 -
 IPP-over-USB printer support - Joint project idea for OpenPrinting and the
 kernel
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>, kernelnewbies@kernelnewbies.org, Till Kamppeter <till.kamppeter@gmail.com>

--001a11c25dea545f5104f3cf6b39
Content-Type: text/plain; charset=ISO-8859-1

Hello All,

I have a couple of "simple" follow-up questions on IPP USB (IPP-over-USB)
"Host device" support:

Is IPP USB designed to support connecting and printing from a device like a
tablet or smartphone (e.g., iPad, iPhone, Etc.) directly connected to a
printer over USB? If the answer is yes - is there any device that currently
supports this? I imagine a special cable or converter would be needed?

Or is IPP USB designed only for Hosts like Linux or Mac acting as print
servers/gateways for these, and other, devices?

Thanks,

Carlos


On Thu, Feb 27, 2014 at 11:29 AM, Michael Sweet <msweet@apple.com> wrote:

> Carlos,
>
> Any Mac running OS X 10.9 supports IPP USB; note that we have a bunch of
> pending bug fixes (sorry, can't say when the fixes will be released...)
> that address issues found in testing with multiple vendors' implementations
> of IPP USB, but the current 10.9.2 will work with all of the HP printers
> mentioned below.
>
>
> On Feb 27, 2014, at 2:23 PM, Carlos Rimola <crimola@gmail.com> wrote:
>
> Michael,
>
> Thanks for the comprehensive response to my questions on IPP USB and
> confirming my assumptions.
>
> The only remaining question I have for the list at this time is - are
> there any Hosts, including model, OS and OS version (or other S/W
> requirements), presently available on the market (or otherwise) which
> support IPP USB as per the Specification?
>
> Thanks again,
>
> Carlos Rimola
>
>
> On Thu, Feb 27, 2014 at 7:37 AM, Michael Sweet <msweet@apple.com> wrote:
>
>> Carlos,
>>
>> On Feb 26, 2014, at 9:33 PM, Carlos Rimola <crimola@gmail.com> wrote:
>>
>> Hi All,
>>
>> I have some quick and general questions regarding IPP over USB ("IPP USB"
>> for short). Some are related to Till's proposed project "Google Summer
>> of Code 2014 - IPP-over-USB printer support". Any help and feedback will
>> be greatly welcomed. I should mention that I am in favor of the proposed
>> project for this event.
>>
>> Assumptions (please confirm or correct):
>>
>> 1) This first one may be obvious but to be sure - I am assuming that we
>> are referring to IPP USB as defined in the "USB Print Interface Class IPP
>> Protocol Specification Revision 1.0" dated 12/5/2012 and published by
>> USB-IF and authored by HP's Smith Kennedy and Andrew R. Mitchell. I'll
>> refer to it as the "IPP USB Spec".
>>
>> Correct.
>>
>> 2) As I understand the IPP USB Spec, there is NO network interface, NOR
>> TCP/IP involved. The Communication Protocol to be used between Host and
>> Device (Printer) is *purely HTTP + IPP directly over USB*. A place where
>> this is noted is section 6.2 - "HTTP Headers" which states the following:
>>
>> *Since there is NO network interface connection, NO DNS hostnames or IP
>> addresses, and NO TCP port numbers associated with USB connection, the
>> requirements of the HTTP Host field is addressed by requiring that the
>> value of this header MUST be "localhost".*
>>
>> Please correct me if I am wrong on either of these assumptions.
>>
>>
>> Correct (a port number can be passed by the "client" over USB to allow
>> gateways/proxies to work...)
>>
>> Questions:
>>
>> 1) I know the Spec is already cast in stone but I would like to
>> understand what function HTTP serves and if it is only used for identifying
>> "Host: localhost" and the "/ipp/printer" path? In other words, could pure
>> IPP Requests/Responses and IPP expected format "Print Data" have sufficed?
>>
>> While you might get away with that for simple IPP messages, that wouldn't
>> work for document data since IPP by itself has no framing or other niceties
>> - you'd never know when the data ended.
>>
>> Also, the HTTP portion is used for the embedded web server, doing
>> firmware updates, and so forth.
>>
>>
>>  2) Section 3.2 "Interface Set" paragraph 2 states that "All IPP USBcapable
>> Print class interfaces provided by a device MUST be functionally equal
>> from an IPP operation or HTTP perspective.  In other words, any IPP
>> operation or resource path that is valid over one IPP USB interface MUST
>> be reachable via any and all of the IPP USB interfaces."
>>
>> Does this imply that, for example, a Request from the host can be sent
>> over one interface (I/F #1) and the response received over a different
>> interface (e.g., I/F #2)?
>>
>> No, each interface is an independent channel to the printer.
>>
>> The reason for this requirement is to prevent having an IPP USB endpoint
>> just for printing, and another just for scanning, and so forth.
>>  Effectively IPP USB defines an interface protocol that allows arbitrary
>> HTTP and IPP requests to be performed.
>>
>> 3) The last question is much simpler but would be helpful to an
>> implementor - what specific printers (manufacturer, line and model) *on
>> the market* support IPP USB? I have seen references to HP Photosmart and
>> OfficeJet but no model given. Similarly, what Host(s) on the market,
>> including OS and version, support the IPP USB protocol with these Printers?
>>
>> Here is the latest list we have from HP:
>>
>>     Deskjet 3520
>>     Envy 120
>>     Envy 4500
>>     Envy 5530
>>     Officejet 3620
>>     Officejet 4630
>>     Officejet 7610
>>     Officejet Pro 276 MFP
>>     Officejet Pro X576 dw
>>     Photosmart 5520
>>     Photosmart 6520
>>     Photosmart 7520
>>
>> I know of four other manufacturers that either have shipping products or
>> will soon be shipping - will post here when I can do so publicly...
>>
>>  _________________________________________________________
>> Michael Sweet, Senior Printing System Engineer, PWG Chair
>>
>>
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>

--001a11c25dea545f5104f3cf6b39
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I have a couple of &quot;sim=
ple&quot; follow-up questions on IPP USB (IPP-over-USB) &quot;Host device&q=
uot; support:<br><br>Is IPP USB designed to support connecting and printing=
 from a device like a tablet or smartphone (e.g., iPad, iPhone, Etc.) direc=
tly connected to a printer over USB? If the answer is yes - is there any de=
vice that currently supports this? I imagine a special cable or converter w=
ould be needed?</div>
<div><br></div><div>Or is IPP USB designed only for Hosts like Linux or Mac=
 acting as print servers/gateways for these, and other, devices?<br><br>Tha=
nks,</div><div><br></div><div>Carlos</div></div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Feb 27, 2014 at 11:29 AM, Michae=
l Sweet <span dir=3D"ltr">&lt;<a href=3D"mailto:msweet@apple.com" target=3D=
"_blank">msweet@apple.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
<div style=3D"word-wrap:break-word">Carlos,<div><br></div><div>Any Mac runn=
ing OS X 10.9 supports IPP USB; note that we have a bunch of pending bug fi=
xes (sorry, can&#39;t say when the fixes will be released...) that address =
issues found in testing with multiple vendors&#39; implementations of IPP U=
SB, but the current 10.9.2 will work with all of the HP printers mentioned =
below.</div>
<div><div class=3D"h5"><div><br></div><div><br></div><div><div><div>On Feb =
27, 2014, at 2:23 PM, Carlos Rimola &lt;<a href=3D"mailto:crimola@gmail.com=
" target=3D"_blank">crimola@gmail.com</a>&gt; wrote:</div><br><blockquote t=
ype=3D"cite">
<div dir=3D"ltr">Michael,<div><br></div><div>Thanks for the comprehensive r=
esponse to my questions on IPP USB and confirming my assumptions.=A0</div><=
div><br></div><div>The only remaining question I have for the list at this =
time is - are there any Hosts, including model, OS and OS version (or other=
 S/W requirements), presently available on the market (or otherwise) which =
support IPP USB as per the Specification?</div>

<div><br></div><div>Thanks again,</div><div><br></div><div>Carlos Rimola</d=
iv></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On T=
hu, Feb 27, 2014 at 7:37 AM, Michael Sweet <span dir=3D"ltr">&lt;<a href=3D=
"mailto:msweet@apple.com" target=3D"_blank">msweet@apple.com</a>&gt;</span>=
 wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word">Carlos,<=
div><br><div><div><div>On Feb 26, 2014, at 9:33 PM, Carlos Rimola &lt;<a hr=
ef=3D"mailto:crimola@gmail.com" target=3D"_blank">crimola@gmail.com</a>&gt;=
 wrote:</div>

<blockquote type=3D"cite"><div dir=3D"ltr">Hi All,<div><br></div><div>I hav=
e some quick and general questions regarding IPP over USB (&quot;IPP USB&qu=
ot; for short). Some are related to Till&#39;s proposed project &quot;<font=
 face=3D"arial, helvetica, sans-serif">Google Summer of Code 2014 - IPP-ove=
r-USB printer support</font>&quot;. Any help and feedback will be greatly w=
elcomed. I should mention that I am in favor of the proposed project for th=
is event.</div>


<div><br></div><div><p style=3D"font-family:arial,sans-serif;font-size:13px=
">Assumptions (please confirm or correct):</p><p style=3D"font-family:arial=
,sans-serif;font-size:13px">1) This first one may be obvious but to be sure=
 - I am assuming that we are referring to IPP USB as defined in the &quot;U=
SB Print Interface Class IPP Protocol Specification Revision 1.0&quot; date=
d 12/5/2012 and published by USB-IF and=A0authored by HP&#39;s Smith Kenned=
y and Andrew R. Mitchell. I&#39;ll refer to it as the &quot;IPP USB Spec&qu=
ot;.</p>

</div></div></blockquote></div>Correct.</div><div><div><blockquote type=3D"=
cite"><div dir=3D"ltr"><p style=3D"font-family:arial,sans-serif;font-size:1=
3px">2) As I understand the IPP USB Spec, there is NO network interface, NO=
R TCP/IP involved. The Communication Protocol to be used between Host and D=
evice (Printer) is=A0<i>purely HTTP + IPP directly over USB</i>. A place wh=
ere this is noted is section 6.2 - &quot;HTTP Headers&quot; which states th=
e following:</p>
<p style=3D"font-family:arial,sans-serif;font-size:13px"><i>Since there is =
NO network interface connection, NO DNS hostnames or IP addresses, and NO T=
CP port numbers associated with USB connection, the requirements of the HTT=
P Host field is addressed by requiring that the value of this header MUST b=
e &quot;localhost&quot;.</i></p>
<p style=3D"font-family:arial,sans-serif;font-size:13px">Please correct me =
if I am wrong on either of these assumptions.<br></p></div></blockquote><di=
v><br></div></div>Correct (a port number can be passed by the &quot;client&=
quot; over USB to allow gateways/proxies to work...)</div>

<div><div><blockquote type=3D"cite"><div dir=3D"ltr"><p style=3D"font-famil=
y:arial,sans-serif;font-size:13px">Questions:</p><p style=3D"font-family:ar=
ial,sans-serif;font-size:13px">1) I know the Spec is already cast in stone =
but I would like to understand what function HTTP serves and if it is only =
used for identifying &quot;Host: localhost&quot; and the &quot;/ipp/printer=
&quot; path? In other words, could pure IPP Requests/Responses and IPP expe=
cted format &quot;Print Data&quot; have sufficed?<br>

</p></div></blockquote></div><div>While you might get away with that for si=
mple IPP messages, that wouldn&#39;t work for document data since IPP by it=
self has no framing or other niceties - you&#39;d never know when the data =
ended.</div>

<div><br></div><div>Also, the HTTP portion is used for the embedded web ser=
ver, doing firmware updates, and so forth.</div><div><blockquote type=3D"ci=
te"><div dir=3D"ltr"><div style=3D"font-family:arial,sans-serif;font-size:1=
3px">


<br></div><p><font face=3D"arial, sans-serif" style=3D"font-size:13px">=A02=
) Section 3.2 &quot;Interface Set&quot; paragraph 2 states that &quot;</fon=
t><span style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">=
All</span><span style=3D"font-size:small;font-family:arial"> IPP USB</span>=
<span style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt"> c=
apable</span><span style=3D"font-size:small;font-family:arial;letter-spacin=
g:-0.1pt"> </span><span style=3D"font-size:small;font-family:arial;letter-s=
pacing:-0.05pt">Print</span><span style=3D"font-size:small;font-family:aria=
l">
class</span><span style=3D"font-size:small;font-family:arial;letter-spacing=
:0.1pt"> </span><span style=3D"font-size:small;font-family:arial;letter-spa=
cing:-0.05pt">interfaces provided</span><span style=3D"font-size:small;font=
-family:arial"> by</span><span style=3D"font-size:small;font-family:arial;l=
etter-spacing:-0.15pt"> </span><span style=3D"font-size:small;font-family:a=
rial">a</span><span style=3D"font-size:small;font-family:arial;letter-spaci=
ng:0.05pt"> </span><span style=3D"font-size:small;font-family:arial;letter-=
spacing:-0.05pt">device</span><span style=3D"font-size:small;font-family:ar=
ial;letter-spacing:0.15pt"> </span><span style=3D"font-size:small;font-fami=
ly:arial;letter-spacing:-0.05pt">MUST</span><span style=3D"font-size:small;=
font-family:arial">
be</span><span style=3D"font-size:small;font-family:arial;letter-spacing:-0=
.05pt"> functionally</span><span style=3D"font-size:small;font-family:arial=
;letter-spacing:3.65pt"> </span><span style=3D"font-size:small;font-family:=
arial;letter-spacing:-0.05pt">equal</span><span style=3D"font-size:small;fo=
nt-family:arial;letter-spacing:-0.1pt"> </span><span style=3D"font-size:sma=
ll;font-family:arial;letter-spacing:-0.05pt">from</span><span style=3D"font=
-size:small;font-family:arial;letter-spacing:0.05pt"> </span><span style=3D=
"font-size:small;font-family:arial">an</span><span style=3D"font-size:small=
;font-family:arial;letter-spacing:-0.1pt"> </span><span style=3D"font-size:=
small;font-family:arial">IPP</span><span style=3D"font-size:small;font-fami=
ly:arial;letter-spacing:-0.1pt"> </span><span style=3D"font-size:small;font=
-family:arial;letter-spacing:-0.05pt">operation</span><span style=3D"font-s=
ize:small;font-family:arial">
or </span><span style=3D"font-size:small;font-family:arial;letter-spacing:-=
0.05pt">HTTP</span><span style=3D"font-size:small;font-family:arial;letter-=
spacing:-0.1pt"> </span><span style=3D"font-size:small;font-family:arial;le=
tter-spacing:-0.05pt">perspective.</span><span style=3D"font-size:small;fon=
t-family:arial">=A0 </span><span style=3D"font-size:small;font-family:arial=
">In </span><span style=3D"font-size:small;font-family:arial;letter-spacing=
:-0.05pt">other</span><span style=3D"font-size:small;font-family:arial">
</span><span style=3D"font-size:small;font-family:arial;letter-spacing:-0.0=
5pt">words,</span><span style=3D"font-size:small;font-family:arial;letter-s=
pacing:0.2pt"> </span><span style=3D"font-size:small;font-family:arial">any=
</span><span style=3D"font-size:small;font-family:arial;letter-spacing:-0.1=
pt"> </span><span style=3D"font-size:small;font-family:arial">IPP </span><s=
pan style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">oper=
ation</span><span style=3D"font-size:small;font-family:arial;letter-spacing=
:-0.1pt">
</span><span style=3D"font-size:small;font-family:arial">or</span><span sty=
le=3D"font-size:small;font-family:arial;letter-spacing:3.05pt"> </span><spa=
n style=3D"font-size:small;font-family:arial">resource</span><span style=3D=
"font-size:small;font-family:arial;letter-spacing:-0.1pt"> </span><span sty=
le=3D"font-size:small;font-family:arial">path </span><span style=3D"font-si=
ze:small;font-family:arial;letter-spacing:-0.05pt">that</span><span style=
=3D"font-size:small;font-family:arial">
is </span><span style=3D"font-size:small;font-family:arial;letter-spacing:-=
0.05pt">valid</span><span style=3D"font-size:small;font-family:arial"> </sp=
an><span style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt"=
>over</span><span style=3D"font-size:small;font-family:arial"> one</span><s=
pan style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> </sp=
an><span style=3D"font-size:small;font-family:arial">IPP</span><span style=
=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> </span><span =
style=3D"font-size:small;font-family:arial">USB</span><span style=3D"font-s=
ize:small;font-family:arial;letter-spacing:-0.1pt"> </span><span style=3D"f=
ont-size:small;font-family:arial;letter-spacing:-0.05pt">interface</span><s=
pan style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt">
</span><span style=3D"font-size:small;font-family:arial;letter-spacing:-0.0=
5pt">MUST</span><span style=3D"font-size:small;font-family:arial;letter-spa=
cing:0.25pt"> </span><span style=3D"font-size:small;font-family:arial">be</=
span><span style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt=
"> </span><span style=3D"font-size:small;font-family:arial;letter-spacing:-=
0.05pt">reachable</span><span style=3D"font-size:small;font-family:arial;le=
tter-spacing:-0.1pt">
</span><span style=3D"font-size:small;font-family:arial;letter-spacing:-0.0=
5pt">via</span><span style=3D"font-size:small;font-family:arial"> any and=
=A0</span><font face=3D"arial, helvetica, sans-serif">all<span style=3D"let=
ter-spacing:-0.05pt"> of</span><span style=3D"letter-spacing:0.1pt"> </span=
><span style=3D"letter-spacing:-0.05pt">the</span>
<span style=3D"letter-spacing:-0.05pt">IPP</span> <span style=3D"letter-spa=
cing:-0.05pt">USB</span> interfaces.&quot;</font></p><p><font face=3D"arial=
, helvetica, sans-serif">Does this imply that, for example, a Request from =
the host can be sent over one interface (I/F #1) and the response received =
over a different interface (e.g., I/F #2)?</font></p>

</div></blockquote></div>No, each interface is an independent channel to th=
e printer.</div><div><br></div><div>The reason for this requirement is to p=
revent having an IPP USB endpoint just for printing, and another just for s=
canning, and so forth. =A0Effectively IPP USB defines an interface protocol=
 that allows arbitrary HTTP and IPP requests to be performed.</div>

<div><div><blockquote type=3D"cite"><div dir=3D"ltr"><p style=3D"font-famil=
y:arial,sans-serif;font-size:13px">3) The last question is much simpler but=
 would be helpful to an implementor - what specific printers (manufacturer,=
 line and model) <i>on the market</i> support IPP USB? I have seen referenc=
es to HP Photosmart and OfficeJet but no model given. Similarly, what Host(=
s) on the market, including OS and version, support the IPP USB protocol wi=
th these Printers?</p>

</div></blockquote></div>Here is the latest list we have from HP:</div><div=
><br></div><div><span style=3D"font-family:Menlo-Regular">=A0 =A0 Deskjet 3=
520</span><br style=3D"font-family:Menlo-Regular"><span style=3D"font-famil=
y:Menlo-Regular">=A0 =A0 Envy 120</span><br style=3D"font-family:Menlo-Regu=
lar">

<span style=3D"font-family:Menlo-Regular">=A0 =A0 Envy 4500</span><br style=
=3D"font-family:Menlo-Regular"><span style=3D"font-family:Menlo-Regular">=
=A0 =A0 Envy 5530</span><br style=3D"font-family:Menlo-Regular"><span style=
=3D"font-family:Menlo-Regular">=A0 =A0 Officejet 3620</span><br style=3D"fo=
nt-family:Menlo-Regular">

<div><span style=3D"font-family:Menlo-Regular">=A0 =A0 Officejet 4630</span=
><br style=3D"font-family:Menlo-Regular"></div><span style=3D"font-family:M=
enlo-Regular"></span><span style=3D"font-family:Menlo-Regular">=A0 =A0 Offi=
cejet 7610</span><br style=3D"font-family:Menlo-Regular">

<div><span style=3D"font-family:Menlo-Regular">=A0 =A0 Officejet Pro 276 MF=
P</span></div><div><span style=3D"font-family:Menlo-Regular">=A0 =A0 Office=
jet Pro X576 dw</span><br style=3D"font-family:Menlo-Regular"></div><div><s=
pan style=3D"font-family:Menlo-Regular">=A0 =A0 Photosmart 5520</span></div=
>

<span style=3D"font-family:Menlo-Regular">=A0 =A0 Photosmart 6520</span><br=
 style=3D"font-family:Menlo-Regular"><span style=3D"font-family:Menlo-Regul=
ar">=A0 =A0 Photosmart 7520</span><br style=3D"font-family:Menlo-Regular"><=
/div><div><br>

</div><div>I know of four other manufacturers that either have shipping pro=
ducts or will soon be shipping - will post here when I can do so publicly..=
.</div><div><br><div>
<span style=3D"border-collapse:separate;font-family:&#39;Andale Mono&#39;;b=
order-spacing:0px"><span style=3D"text-indent:0px;letter-spacing:normal;fon=
t-variant:normal;text-align:-webkit-auto;font-style:normal;font-weight:norm=
al;line-height:normal;border-collapse:separate;text-transform:none;white-sp=
ace:normal;font-family:&#39;Andale Mono&#39;;word-spacing:0px"><div style=
=3D"word-wrap:break-word">

_________________________________________________________<br>Michael Sweet,=
 Senior Printing System=A0Engineer, PWG Chair</div></span></span>
</div>
<br></div></div></div></blockquote></div><br></div>
</blockquote></div><br><div>
<span style=3D"text-indent:0px;letter-spacing:normal;font-variant:normal;te=
xt-align:-webkit-auto;font-style:normal;font-weight:normal;line-height:norm=
al;border-collapse:separate;text-transform:none;white-space:normal;font-fam=
ily:&#39;Andale Mono&#39;;word-spacing:0px"><span style=3D"text-indent:0px;=
letter-spacing:normal;font-variant:normal;text-align:-webkit-auto;font-styl=
e:normal;font-weight:normal;line-height:normal;border-collapse:separate;tex=
t-transform:none;white-space:normal;font-family:&#39;Andale Mono&#39;;word-=
spacing:0px"><div style=3D"word-wrap:break-word">
_________________________________________________________<br>Michael Sweet,=
 Senior Printing System=A0Engineer, PWG Chair</div></span></span>
</div>
<br></div></div></div></div></blockquote></div><br></div>

--001a11c25dea545f5104f3cf6b39--
