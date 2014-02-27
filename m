Return-Path: <crimola@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nkSB+slj4BPa8TrcUk2rlKlmwk/8wBuBPEgR9Qxs0gk=;
	b=EYNoF9pcY4NZP7aNqKSZ10dOhb9myWxiicL/xaIUtWzmw23ualvtxMhegUhKBIXmJO
	gEkEptYa4E/fxI3j4idum3Bw4x22Bclgx4nCjE7v0lWVxNKGheAcCc4pzAxai5Vr0JSo
	Ks0/hQhK0uEYf78G8MXwrHm5MQWFcB4L22u5zxsSzFaCZgnLJRRiALI13YM4ldnfrHf+
	EyUNUTRzU2WIcUu5gw2kTRCDtyZbMl1nkQ6Ld/IWnHND+cewkBneawvUann8bOtoqOQH
	cNEkxYUwhu4d7ESTTN3wqA6pNHUmyz/KHJ2OFZK7nt2lQHVeqNsi9iVFOwCeT4gMKRDY
	IvCQ==
MIME-Version: 1.0
In-Reply-To: <1A785707-19A7-43D8-8B21-98707C89AFCC@apple.com>
References: <530CCC53.8070007@gmail.com>
	<3F2A4315-4F2C-4BB1-BC9C-67B6F6BCD3A3@apple.com>
	<20140226014714.GA8346@kroah.com>
	<8E2929D6-4A60-4D27-9012-5250503D9B51@apple.com>
	<20140226230247.GA8283@kroah.com>
	<1A785707-19A7-43D8-8B21-98707C89AFCC@apple.com>
Date: Wed, 26 Feb 2014 18:33:02 -0800
Message-ID: <CAEzcFASVGm8brh_=DB25Ys25d=htLjwBCUpw_sYxAYSzw0ZvyQ@mail.gmail.com>
From: Carlos Rimola <crimola@gmail.com>
Content-Type: multipart/alternative; boundary=001a1133fd10f9d6fa04f35a239f
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
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>, kernelnewbies@kernelnewbies.org
Cc: Till Kamppeter <till.kamppeter@gmail.com>

--001a1133fd10f9d6fa04f35a239f
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I have some quick and general questions regarding IPP over USB ("IPP USB"
for short). Some are related to Till's proposed project "Google Summer of
Code 2014 - IPP-over-USB printer support". Any help and feedback will be
greatly welcomed. I should mention that I am in favor of the proposed
project for this event.

Assumptions (please confirm or correct):

1) This first one may be obvious but to be sure - I am assuming that we are
referring to IPP USB as defined in the "USB Print Interface Class IPP
Protocol Specification Revision 1.0" dated 12/5/2012 and published by
USB-IF and authored by HP's Smith Kennedy and Andrew R. Mitchell. I'll
refer to it as the "IPP USB Spec".

2) As I understand the IPP USB Spec, there is NO network interface, NOR
TCP/IP involved. The Communication Protocol to be used between Host and
Device (Printer) is *purely HTTP + IPP directly over USB*. A place where
this is noted is section 6.2 - "HTTP Headers" which states the following:

*Since there is NO network interface connection, NO DNS hostnames or IP
addresses, and NO TCP port numbers associated with USB connection, the
requirements of the HTTP Host field is addressed by requiring that the
value of this header MUST be "localhost".*

Please correct me if I am wrong on either of these assumptions.


Questions:

1) I know the Spec is already cast in stone but I would like to understand
what function HTTP serves and if it is only used for identifying "Host:
localhost" and the "/ipp/printer" path? In other words, could pure IPP
Requests/Responses and IPP expected format "Print Data" have sufficed?

 2) Section 3.2 "Interface Set" paragraph 2 states that "All IPP USB capable
Print class interfaces provided by a device MUST be functionally equal from
an IPP operation or HTTP perspective.  In other words, any IPP operation or
resource path that is valid over one IPP USB interface MUST be
reachable viaany and
all of the IPP USB interfaces."

Does this imply that, for example, a Request from the host can be sent over
one interface (I/F #1) and the response received over a different interface
(e.g., I/F #2)?

3) The last question is much simpler but would be helpful to an implementor
- what specific printers (manufacturer, line and model) *on the
market*support IPP USB? I have seen references to HP Photosmart and
OfficeJet but
no model given. Similarly, what Host(s) on the market, including OS and
version, support the IPP USB protocol with these Printers?

Knowing this would be helpful to implement and test either device and/or
host support.

I look forward to your reply and discussing the project further.


Thanks!


Carlos Rimola

Software Developer

crimola@gmail.com

408-508-8339

--001a1133fd10f9d6fa04f35a239f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I have some quick and general q=
uestions regarding IPP over USB (&quot;IPP USB&quot; for short). Some are r=
elated to Till&#39;s proposed project &quot;<font face=3D"arial, helvetica,=
 sans-serif">Google Summer of Code 2014 - IPP-over-USB printer support</fon=
t>&quot;. Any help and feedback will be greatly welcomed. I should mention =
that I am in favor of the proposed project for this event.</div>
<div><br></div><div><p style=3D"font-family:arial,sans-serif;font-size:13px=
">Assumptions (please confirm or correct):</p><p style=3D"font-family:arial=
,sans-serif;font-size:13px">1) This first one may be obvious but to be sure=
 - I am assuming that we are referring to IPP USB as defined in the &quot;U=
SB Print Interface Class IPP Protocol Specification Revision 1.0&quot; date=
d 12/5/2012 and published by USB-IF and=A0authored by HP&#39;s Smith Kenned=
y and Andrew R. Mitchell. I&#39;ll refer to it as the &quot;IPP USB Spec&qu=
ot;.</p>
<p style=3D"font-family:arial,sans-serif;font-size:13px">2) As I understand=
 the IPP USB Spec, there is NO network interface, NOR TCP/IP involved. The =
Communication Protocol to be used between Host and Device (Printer) is=A0<i=
>purely HTTP + IPP directly over USB</i>. A place where this is noted is se=
ction 6.2 - &quot;HTTP Headers&quot; which states the following:</p>
<p style=3D"font-family:arial,sans-serif;font-size:13px"><i>Since there is =
NO network interface connection, NO DNS hostnames or IP addresses, and NO T=
CP port numbers associated with USB connection, the requirements of the HTT=
P Host field is addressed by requiring that the value of this header MUST b=
e &quot;localhost&quot;.</i></p>
<p style=3D"font-family:arial,sans-serif;font-size:13px">Please correct me =
if I am wrong on either of these assumptions.<br></p><p style=3D"font-famil=
y:arial,sans-serif;font-size:13px"><br></p><p style=3D"font-family:arial,sa=
ns-serif;font-size:13px">
Questions:</p><p style=3D"font-family:arial,sans-serif;font-size:13px">1) I=
 know the Spec is already cast in stone but I would like to understand what=
 function HTTP serves and if it is only used for identifying &quot;Host: lo=
calhost&quot; and the &quot;/ipp/printer&quot; path? In other words, could =
pure IPP Requests/Responses and IPP expected format &quot;Print Data&quot; =
have sufficed?<br>
</p><p><font face=3D"arial, sans-serif" style=3D"font-size:13px">=A02) Sect=
ion 3.2 &quot;Interface Set&quot; paragraph 2 states that &quot;</font><spa=
n style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">All</s=
pan><span style=3D"font-size:small;font-family:arial"> IPP USB</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt"> capable=
</span><span style=3D"font-size:small;font-family:arial;letter-spacing:-0.1=
pt"> </span><span style=3D"font-size:small;font-family:arial;letter-spacing=
:-0.05pt">Print</span><span style=3D"font-size:small;font-family:arial">
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
<p style=3D"font-family:arial,sans-serif;font-size:13px">3) The last questi=
on is much simpler but would be helpful to an implementor - what specific p=
rinters (manufacturer, line and model) <i>on the market</i> support IPP USB=
? I have seen references to HP Photosmart and OfficeJet but no model given.=
 Similarly, what Host(s) on the market, including OS and version, support t=
he IPP USB protocol with these Printers?</p>
<p style=3D"font-family:arial,sans-serif;font-size:13px">Knowing this would=
 be helpful to implement and test either device and/or host support.</p><p =
style=3D"font-family:arial,sans-serif;font-size:13px">I look forward to you=
r reply and discussing the project further.</p>
<p style=3D"font-family:arial,sans-serif;font-size:13px"><br></p><p style=
=3D"font-family:arial,sans-serif;font-size:13px">Thanks!</p><p style=3D"fon=
t-family:arial,sans-serif;font-size:13px"><br></p><p style=3D"font-size:13p=
x"><font face=3D"georgia, serif" style=3D"background-color:rgb(243,243,243)=
" color=3D"#0000ff">Carlos Rimola</font></p>
<p style=3D"font-size:13px"><font face=3D"georgia, serif" style=3D"backgrou=
nd-color:rgb(243,243,243)" color=3D"#0000ff">Software Developer</font></p><=
p style=3D"font-size:13px"><font face=3D"georgia, serif" style=3D"backgroun=
d-color:rgb(243,243,243)" color=3D"#0000ff"><a href=3D"mailto:crimola@gmail=
.com">crimola@gmail.com</a></font></p>
<p style=3D"font-size:13px"><span id=3D"gc-number-11" class=3D"gc-cs-link" =
title=3D"Call with Google Voice"><font face=3D"georgia, serif"><span id=3D"=
gc-number-12" class=3D"gc-cs-link" title=3D"Call with Google Voice">408-508=
-8339</span></font></span></p>
</div></div>

--001a1133fd10f9d6fa04f35a239f--
