Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/signed;
	boundary="Apple-Mail=_3B5BB6C3-3C12-435F-88CC-2022C7342C7C";
	protocol="application/pkcs7-signature"; micalg=sha1
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAEzcFASVGm8brh_=DB25Ys25d=htLjwBCUpw_sYxAYSzw0ZvyQ@mail.gmail.com>
Date: Thu, 27 Feb 2014 10:37:56 -0500
Message-id: <93BF1B5B-19A0-4C58-8D0D-C9B966AA44D7@apple.com>
References: <530CCC53.8070007@gmail.com>
	<3F2A4315-4F2C-4BB1-BC9C-67B6F6BCD3A3@apple.com>
	<20140226014714.GA8346@kroah.com>
	<8E2929D6-4A60-4D27-9012-5250503D9B51@apple.com>
	<20140226230247.GA8283@kroah.com>
	<1A785707-19A7-43D8-8B21-98707C89AFCC@apple.com>
	<CAEzcFASVGm8brh_=DB25Ys25d=htLjwBCUpw_sYxAYSzw0ZvyQ@mail.gmail.com>
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
To: Carlos Rimola <crimola@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>, Till Kamppeter <till.kamppeter@gmail.com>, kernelnewbies@kernelnewbies.org


--Apple-Mail=_3B5BB6C3-3C12-435F-88CC-2022C7342C7C
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_27EF53B3-D9DE-444E-8BDA-DC7767F10101"


--Apple-Mail=_27EF53B3-D9DE-444E-8BDA-DC7767F10101
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Carlos,

On Feb 26, 2014, at 9:33 PM, Carlos Rimola <crimola@gmail.com> wrote:
> Hi All,
>=20
> I have some quick and general questions regarding IPP over USB ("IPP =
USB" for short). Some are related to Till's proposed project "Google =
Summer of Code 2014 - IPP-over-USB printer support". Any help and =
feedback will be greatly welcomed. I should mention that I am in favor =
of the proposed project for this event.
>=20
> Assumptions (please confirm or correct):
>=20
> 1) This first one may be obvious but to be sure - I am assuming that =
we are referring to IPP USB as defined in the "USB Print Interface Class =
IPP Protocol Specification Revision 1.0" dated 12/5/2012 and published =
by USB-IF and authored by HP's Smith Kennedy and Andrew R. Mitchell. =
I'll refer to it as the "IPP USB Spec".
>=20
Correct.
> 2) As I understand the IPP USB Spec, there is NO network interface, =
NOR TCP/IP involved. The Communication Protocol to be used between Host =
and Device (Printer) is purely HTTP + IPP directly over USB. A place =
where this is noted is section 6.2 - "HTTP Headers" which states the =
following:
>=20
> Since there is NO network interface connection, NO DNS hostnames or IP =
addresses, and NO TCP port numbers associated with USB connection, the =
requirements of the HTTP Host field is addressed by requiring that the =
value of this header MUST be "localhost".
>=20
> Please correct me if I am wrong on either of these assumptions.
>=20

Correct (a port number can be passed by the "client" over USB to allow =
gateways/proxies to work...)
> Questions:
>=20
> 1) I know the Spec is already cast in stone but I would like to =
understand what function HTTP serves and if it is only used for =
identifying "Host: localhost" and the "/ipp/printer" path? In other =
words, could pure IPP Requests/Responses and IPP expected format "Print =
Data" have sufficed?
>=20
While you might get away with that for simple IPP messages, that =
wouldn't work for document data since IPP by itself has no framing or =
other niceties - you'd never know when the data ended.

Also, the HTTP portion is used for the embedded web server, doing =
firmware updates, and so forth.
>  2) Section 3.2 "Interface Set" paragraph 2 states that "All IPP USB =
capable Print class interfaces provided by a device MUST be functionally =
equal from an IPP operation or HTTP perspective.  In other words, any =
IPP operation or resource path that is valid over one IPP USB interface =
MUST be reachable via any and all of the IPP USB interfaces."
>=20
> Does this imply that, for example, a Request from the host can be sent =
over one interface (I/F #1) and the response received over a different =
interface (e.g., I/F #2)?
>=20
No, each interface is an independent channel to the printer.

The reason for this requirement is to prevent having an IPP USB endpoint =
just for printing, and another just for scanning, and so forth.  =
Effectively IPP USB defines an interface protocol that allows arbitrary =
HTTP and IPP requests to be performed.
> 3) The last question is much simpler but would be helpful to an =
implementor - what specific printers (manufacturer, line and model) on =
the market support IPP USB? I have seen references to HP Photosmart and =
OfficeJet but no model given. Similarly, what Host(s) on the market, =
including OS and version, support the IPP USB protocol with these =
Printers?
>=20
Here is the latest list we have from HP:

    Deskjet 3520
    Envy 120
    Envy 4500
    Envy 5530
    Officejet 3620
    Officejet 4630
    Officejet 7610
    Officejet Pro 276 MFP
    Officejet Pro X576 dw
    Photosmart 5520
    Photosmart 6520
    Photosmart 7520

I know of four other manufacturers that either have shipping products or =
will soon be shipping - will post here when I can do so publicly...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Apple-Mail=_27EF53B3-D9DE-444E-8BDA-DC7767F10101
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;">Carlos,<div><br><div><div>On Feb 26, 2014, at 9:33 =
PM, Carlos Rimola &lt;<a =
href=3D"mailto:crimola@gmail.com">crimola@gmail.com</a>&gt; =
wrote:</div><blockquote type=3D"cite"><div dir=3D"ltr">Hi =
All,<div><br></div><div>I have some quick and general questions =
regarding IPP over USB ("IPP USB" for short). Some are related to Till's =
proposed project "<font face=3D"arial, helvetica, sans-serif">Google =
Summer of Code 2014 - IPP-over-USB printer support</font>". Any help and =
feedback will be greatly welcomed. I should mention that I am in favor =
of the proposed project for this event.</div>
<div><br></div><div><p =
style=3D"font-family:arial,sans-serif;font-size:13px">Assumptions =
(please confirm or correct):</p><p =
style=3D"font-family:arial,sans-serif;font-size:13px">1) This first one =
may be obvious but to be sure - I am assuming that we are referring to =
IPP USB as defined in the "USB Print Interface Class IPP Protocol =
Specification Revision 1.0" dated 12/5/2012 and published by USB-IF =
and&nbsp;authored by HP's Smith Kennedy and Andrew R. Mitchell. I'll =
refer to it as the "IPP USB =
Spec".</p></div></div></blockquote>Correct.</div><div><blockquote =
type=3D"cite"><div dir=3D"ltr"><div><p =
style=3D"font-family:arial,sans-serif;font-size:13px">2) As I understand =
the IPP USB Spec, there is NO network interface, NOR TCP/IP involved. =
The Communication Protocol to be used between Host and Device (Printer) =
is&nbsp;<i>purely HTTP + IPP directly over USB</i>. A place where this =
is noted is section 6.2 - "HTTP Headers" which states the =
following:</p><p =
style=3D"font-family:arial,sans-serif;font-size:13px"><i>Since there is =
NO network interface connection, NO DNS hostnames or IP addresses, and =
NO TCP port numbers associated with USB connection, the requirements of =
the HTTP Host field is addressed by requiring that the value of this =
header MUST be "localhost".</i></p><p =
style=3D"font-family:arial,sans-serif;font-size:13px">Please correct me =
if I am wrong on either of these =
assumptions.<br></p></div></div></blockquote><div><br></div>Correct (a =
port number can be passed by the "client" over USB to allow =
gateways/proxies to work...)</div><div><blockquote type=3D"cite"><div =
dir=3D"ltr"><p =
style=3D"font-family:arial,sans-serif;font-size:13px">Questions:</p><p =
style=3D"font-family:arial,sans-serif;font-size:13px">1) I know the Spec =
is already cast in stone but I would like to understand what function =
HTTP serves and if it is only used for identifying "Host: localhost" and =
the "/ipp/printer" path? In other words, could pure IPP =
Requests/Responses and IPP expected format "Print Data" have =
sufficed?<br></p></div></blockquote><div>While you might get away with =
that for simple IPP messages, that wouldn't work for document data since =
IPP by itself has no framing or other niceties - you'd never know when =
the data ended.</div><div><br></div><div>Also, the HTTP portion is used =
for the embedded web server, doing firmware updates, and so =
forth.</div><blockquote type=3D"cite"><div dir=3D"ltr"><p =
style=3D"font-family:arial,sans-serif;font-size:13px">
</p><p><font face=3D"arial, sans-serif" style=3D"font-size:13px">&nbsp;2) =
Section 3.2 "Interface Set" paragraph 2 states that "</font><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">All</sp=
an><span style=3D"font-size:small;font-family:arial"> IPP =
USB</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt"> =
capable</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">Print</=
span><span style=3D"font-size:small;font-family:arial">
class</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:0.1pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">interfa=
ces provided</span><span style=3D"font-size:small;font-family:arial"> =
by</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.15pt"> =
</span><span style=3D"font-size:small;font-family:arial">a</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:0.05pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">device<=
/span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:0.15pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">MUST</s=
pan><span style=3D"font-size:small;font-family:arial">
be</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt"> =
functionally</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:3.65pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">equal</=
span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">from</s=
pan><span =
style=3D"font-size:small;font-family:arial;letter-spacing:0.05pt"> =
</span><span style=3D"font-size:small;font-family:arial">an</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span style=3D"font-size:small;font-family:arial">IPP</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">operati=
on</span><span style=3D"font-size:small;font-family:arial">
or </span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">HTTP</s=
pan><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">perspec=
tive.</span><span style=3D"font-size:small;font-family:arial">&nbsp; =
</span><span style=3D"font-size:small;font-family:arial">In </span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">other</=
span><span style=3D"font-size:small;font-family:arial">
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">words,<=
/span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:0.2pt"> =
</span><span style=3D"font-size:small;font-family:arial">any</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span style=3D"font-size:small;font-family:arial">IPP =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">operati=
on</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt">
</span><span style=3D"font-size:small;font-family:arial">or</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:3.05pt"> =
</span><span =
style=3D"font-size:small;font-family:arial">resource</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span style=3D"font-size:small;font-family:arial">path =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">that</s=
pan><span style=3D"font-size:small;font-family:arial">
is </span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">valid</=
span><span style=3D"font-size:small;font-family:arial"> </span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">over</s=
pan><span style=3D"font-size:small;font-family:arial"> one</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span style=3D"font-size:small;font-family:arial">IPP</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span style=3D"font-size:small;font-family:arial">USB</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">interfa=
ce</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt">
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">MUST</s=
pan><span =
style=3D"font-size:small;font-family:arial;letter-spacing:0.25pt"> =
</span><span style=3D"font-size:small;font-family:arial">be</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt"> =
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">reachab=
le</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.1pt">
</span><span =
style=3D"font-size:small;font-family:arial;letter-spacing:-0.05pt">via</sp=
an><span style=3D"font-size:small;font-family:arial"> any =
and&nbsp;</span><font face=3D"arial, helvetica, sans-serif">all<span =
style=3D"letter-spacing:-0.05pt"> of</span><span =
style=3D"letter-spacing:0.1pt"> </span><span =
style=3D"letter-spacing:-0.05pt">the</span>
<span style=3D"letter-spacing:-0.05pt">IPP</span> <span =
style=3D"letter-spacing:-0.05pt">USB</span> =
interfaces."</font></p><p><font face=3D"arial, helvetica, =
sans-serif">Does this imply that, for example, a Request from the host =
can be sent over one interface (I/F #1) and the response received over a =
different interface (e.g., I/F #2)?</font></p></div></blockquote>No, =
each interface is an independent channel to the =
printer.</div><div><br></div><div>The reason for this requirement is to =
prevent having an IPP USB endpoint just for printing, and another just =
for scanning, and so forth. &nbsp;Effectively IPP USB defines an =
interface protocol that allows arbitrary HTTP and IPP requests to be =
performed.</div><div><blockquote type=3D"cite"><div dir=3D"ltr"><p =
style=3D"font-family:arial,sans-serif;font-size:13px">3) The last =
question is much simpler but would be helpful to an implementor - what =
specific printers (manufacturer, line and model) <i>on the market</i> =
support IPP USB? I have seen references to HP Photosmart and OfficeJet =
but no model given. Similarly, what Host(s) on the market, including OS =
and version, support the IPP USB protocol with these =
Printers?</p></div></blockquote>Here is the latest list we have from =
HP:</div><div><br></div><div><span style=3D"font-family: =
Menlo-Regular;">&nbsp; &nbsp; Deskjet 3520</span><br style=3D"font-family:=
 Menlo-Regular;"><span style=3D"font-family: Menlo-Regular;">&nbsp; =
&nbsp; Envy 120</span><br style=3D"font-family: Menlo-Regular;"><span =
style=3D"font-family: Menlo-Regular;">&nbsp; &nbsp; Envy 4500</span><br =
style=3D"font-family: Menlo-Regular;"><span style=3D"font-family: =
Menlo-Regular;">&nbsp; &nbsp; Envy 5530</span><br style=3D"font-family: =
Menlo-Regular;"><span style=3D"font-family: Menlo-Regular;">&nbsp; =
&nbsp; Officejet 3620</span><br style=3D"font-family: =
Menlo-Regular;"><div><span style=3D"font-family: Menlo-Regular;">&nbsp; =
&nbsp; Officejet 4630</span><br style=3D"font-family: =
Menlo-Regular;"></div><span style=3D"font-family: =
Menlo-Regular;"></span><span style=3D"font-family: =
Menlo-Regular;">&nbsp; &nbsp; Officejet 7610</span><br =
style=3D"font-family: Menlo-Regular;"><div><span style=3D"font-family: =
Menlo-Regular;">&nbsp; &nbsp; Officejet Pro 276 =
MFP</span></div><div><span style=3D"font-family: Menlo-Regular;">&nbsp; =
&nbsp; Officejet Pro X576 dw</span><br style=3D"font-family: =
Menlo-Regular;"></div><div><span style=3D"font-family: =
Menlo-Regular;">&nbsp; &nbsp; Photosmart 5520</span></div><span =
style=3D"font-family: Menlo-Regular;">&nbsp; &nbsp; Photosmart =
6520</span><br style=3D"font-family: Menlo-Regular;"><span =
style=3D"font-family: Menlo-Regular;">&nbsp; &nbsp; Photosmart =
7520</span><br style=3D"font-family: =
Menlo-Regular;"></div><div><br></div><div>I know of four other =
manufacturers that either have shipping products or will soon be =
shipping - will post here when I can do so publicly...</div><br><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
font-family: 'Andale Mono'; border-spacing: 0px;"><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; color: =
rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px;  "><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; =
">_________________________________________________________<br>Michael =
Sweet, Senior Printing System&nbsp;Engineer, PWG =
Chair</div></span></span>
</div>
<br></div></body></html>=

--Apple-Mail=_27EF53B3-D9DE-444E-8BDA-DC7767F10101--

--Apple-Mail=_3B5BB6C3-3C12-435F-88CC-2022C7342C7C
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIPJTCCBN0w
ggPFoAMCAQICEHGS++YZX6xNEoV0cTSiGKcwDQYJKoZIhvcNAQEFBQAwezELMAkGA1UEBhMCR0Ix
GzAZBgNVBAgMEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBwwHU2FsZm9yZDEaMBgGA1UECgwR
Q29tb2RvIENBIExpbWl0ZWQxITAfBgNVBAMMGEFBQSBDZXJ0aWZpY2F0ZSBTZXJ2aWNlczAeFw0w
NDAxMDEwMDAwMDBaFw0yODEyMzEyMzU5NTlaMIGuMQswCQYDVQQGEwJVUzELMAkGA1UECBMCVVQx
FzAVBgNVBAcTDlNhbHQgTGFrZSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsx
ITAfBgNVBAsTGGh0dHA6Ly93d3cudXNlcnRydXN0LmNvbTE2MDQGA1UEAxMtVVROLVVTRVJGaXJz
dC1DbGllbnQgQXV0aGVudGljYXRpb24gYW5kIEVtYWlsMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAsjmFpPJ9q0E7YkY3rs3BYHW8OWX5ShpHornMSMxqmNVNNRm5pELlzkniii8efNIx
B8dOtINknS4p1aJkxIW9hVE1eaROaJB7HHqkkqgX8pgV8pPMyaQylbsMTzC9mKALi+VuG6JG+ni8
om+rWV6lL8/K2m2qL+usobNqqrcuZzWLeeEeaYji5kbNoKXqvgvOdjp6Dpvq/NonWz1zHyLmSGHG
TPNpsaguG7bUMSAsvIKKjqQOpdeJQ/wWWq8dcdcRWdq6hw2v+vPhwvCkxWeM1tZUOt4KpLoDd7Nl
yP0e03RiqhjKaJMeoYV+9Udly/hNVyh00jT/MLbu9mIwFIws6wIDAQABo4IBJzCCASMwHwYDVR0j
BBgwFoAUoBEKIz6W8Qfs4q8p74Klf9AwpLQwHQYDVR0OBBYEFImCZ33EnSZwAEu0UEh83j2uBG59
MA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdJQQWMBQGCCsGAQUFBwMCBggr
BgEFBQcDBDARBgNVHSAECjAIMAYGBFUdIAAwewYDVR0fBHQwcjA4oDagNIYyaHR0cDovL2NybC5j
b21vZG9jYS5jb20vQUFBQ2VydGlmaWNhdGVTZXJ2aWNlcy5jcmwwNqA0oDKGMGh0dHA6Ly9jcmwu
Y29tb2RvLm5ldC9BQUFDZXJ0aWZpY2F0ZVNlcnZpY2VzLmNybDARBglghkgBhvhCAQEEBAMCAQYw
DQYJKoZIhvcNAQEFBQADggEBAJ2Vyzy4fqUJxB6/C8LHdo45PJTGEKpPDMngq4RdiVTgZTvzbRx8
NywlVF+WIfw3hJGdFdwUT4HPVB1rbEVgxy35l1FM+WbKPKCCjKbI8OLp1Er57D9Wyd12jMOCAU9s
APMeGmF0BEcDqcZAV5G8ZSLFJ2dPV9tkWtmNH7qGL/QGrpxp7en0zykX2OBKnxogL5dMUbtGB8SK
N04g4wkxaMeexIud6H4RvDJoEJYRmETYKlFgTYjrdDrfQwYyyDlWjDoRUtNBpEMD9O3vMyfbOeAU
TibJ2PU54om4k123KSZB6rObroP8d3XK6Mq1/uJlSmM+RMTQw16Hc6mYHK9/FX8wggUaMIIEAqAD
AgECAhBtGeqnGU9qMyLmIjJ6qnHeMA0GCSqGSIb3DQEBBQUAMIGuMQswCQYDVQQGEwJVUzELMAkG
A1UECBMCVVQxFzAVBgNVBAcTDlNhbHQgTGFrZSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNU
IE5ldHdvcmsxITAfBgNVBAsTGGh0dHA6Ly93d3cudXNlcnRydXN0LmNvbTE2MDQGA1UEAxMtVVRO
LVVTRVJGaXJzdC1DbGllbnQgQXV0aGVudGljYXRpb24gYW5kIEVtYWlsMB4XDTExMDQyODAwMDAw
MFoXDTIwMDUzMDEwNDgzOFowgZMxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNo
ZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMTkwNwYD
VQQDEzBDT01PRE8gQ2xpZW50IEF1dGhlbnRpY2F0aW9uIGFuZCBTZWN1cmUgRW1haWwgQ0EwggEi
MA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCShIRbS1eY1F4vi6ThQMijU1hfZmXxMk73nzJ9
VdB4TFW3QpTg+SdxB8XGaaS5MsTxQBqQzCdWYn8XtXFpruUgG+TLY15gyqJB9mrho/+43x9IbWVD
jCouK2M4d9+xF6zC2oIC1tQyatRnbyATj1w1+uVUgK/YcQodNwoCUFNslR2pEBS0mZVZEjH/CaLS
TNxS297iQAFbSGjdxUq04O0kHzqvcV8H46y/FDuwJXFoPfQP1hdYRhWBPGiLi4MPbXohV+Y0sNsy
fuNK4aVScmQmkU6lkg//4LFg/RpvaFGZY40ai6XMQpubfSJj06mg/M6ekN9EGfRcWzW6FvOnm//B
AgMBAAGjggFLMIIBRzAfBgNVHSMEGDAWgBSJgmd9xJ0mcABLtFBIfN49rgRufTAdBgNVHQ4EFgQU
ehNOAHRbxnhjZCfBL+KgW7x5xXswDgYDVR0PAQH/BAQDAgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAw
EQYDVR0gBAowCDAGBgRVHSAAMFgGA1UdHwRRME8wTaBLoEmGR2h0dHA6Ly9jcmwudXNlcnRydXN0
LmNvbS9VVE4tVVNFUkZpcnN0LUNsaWVudEF1dGhlbnRpY2F0aW9uYW5kRW1haWwuY3JsMHQGCCsG
AQUFBwEBBGgwZjA9BggrBgEFBQcwAoYxaHR0cDovL2NydC51c2VydHJ1c3QuY29tL1VUTkFkZFRy
dXN0Q2xpZW50X0NBLmNydDAlBggrBgEFBQcwAYYZaHR0cDovL29jc3AudXNlcnRydXN0LmNvbTAN
BgkqhkiG9w0BAQUFAAOCAQEAhda+eFdVbTN/RFL+QtUGqAEDgIr7DbL9Sr/2r0FJ9RtaxdKtG3Nu
PukmfOZMmMEwKN/L+0I8oSU+CnXW0D05hmbRoZu1TZtvryhsHa/l6nRaqNqxwPF1ei+eupN5yv7i
kR5WdLL4jdPgQ3Ib7Y/9YDkgR/uLrzplSDyYPaUlv73vYOBJ5RbI6z9Dg/Dg7g3B080zX5vQvWBq
szv++tTJOjwf7Zv/m0kzvkIpOYPuM2kugp1FTahp2oAbHj3SGl18R5mlmwhtEpmG1l1XBxunML5L
SUS4kH7K0Xk467Qz+qA6XSZYnmFVGLQh1ZnV4ENAQjC+6qXnlNKw/vN1+X9u5zCCBSIwggQKoAMC
AQICEQDlB7dXxclLEedquPvGX8CGMA0GCSqGSIb3DQEBBQUAMIGTMQswCQYDVQQGEwJHQjEbMBkG
A1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01P
RE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQg
U2VjdXJlIEVtYWlsIENBMB4XDTEzMTIxNzAwMDAwMFoXDTE0MTIxNzIzNTk1OVowITEfMB0GCSqG
SIb3DQEJARYQbXN3ZWV0QGFwcGxlLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEB
ANdvQYZRCVzc0wIYvIOn/0Pv7zUwuIvbAfM/W3FyemqZx3fdKxX4WxN2x5NC3hhBHGrUWirJH7rl
6It12bGQ61uHAK5jsJikV5k+mOYjZaKNIKxj0uYIk3MKQmsmM8t3nddq5mp2mxwV/U7AFPTz1fgh
dkqTb/NkHY5eA8KqksaeqwfMgoaiGVeCUhptWnXosca8PAkb+i9u5rEok5zgY+QP0IuWLJENfA4q
dEMsH+OAwMGOv9fNCgcdapFnjeSYaj70m6qUiq446+8a2rhUsEUKQayOMgjnm2bgUuNx7pOvs/Jg
zIlZoTz/llmE1HWREGzSjRnLWwQ98fspfeZWA+8CAwEAAaOCAeAwggHcMB8GA1UdIwQYMBaAFHoT
TgB0W8Z4Y2QnwS/ioFu8ecV7MB0GA1UdDgQWBBTtKBJoG9kxZisTqJg4+wr12l4stjAOBgNVHQ8B
Af8EBAMCBaAwDAYDVR0TAQH/BAIwADAgBgNVHSUEGTAXBggrBgEFBQcDBAYLKwYBBAGyMQEDBQIw
EQYJYIZIAYb4QgEBBAQDAgUgMEYGA1UdIAQ/MD0wOwYMKwYBBAGyMQECAQEBMCswKQYIKwYBBQUH
AgEWHWh0dHBzOi8vc2VjdXJlLmNvbW9kby5uZXQvQ1BTMFcGA1UdHwRQME4wTKBKoEiGRmh0dHA6
Ly9jcmwuY29tb2RvY2EuY29tL0NPTU9ET0NsaWVudEF1dGhlbnRpY2F0aW9uYW5kU2VjdXJlRW1h
aWxDQS5jcmwwgYgGCCsGAQUFBwEBBHwwejBSBggrBgEFBQcwAoZGaHR0cDovL2NydC5jb21vZG9j
YS5jb20vQ09NT0RPQ2xpZW50QXV0aGVudGljYXRpb25hbmRTZWN1cmVFbWFpbENBLmNydDAkBggr
BgEFBQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2EuY29tMBsGA1UdEQQUMBKBEG1zd2VldEBhcHBs
ZS5jb20wDQYJKoZIhvcNAQEFBQADggEBABg5KLQK5u9gGI75u+vYH/i6uMDKlpTILO/r/FpN2ibq
pwAB2ln9oKvPIA1/r3o+DBC87TqnlJAiPW4ADFHpRmqlprb0Tu9p98nP/wl5tBZjEP8dY4iH0TB3
B2r9JHwRwwJQ20CqJpuCn9dmvL215sZSqvJfluVlIcAQCLxp3ZKMIC2pNKitswdjjHduaKuj2TMe
xrzMtrRGRtFF9pcMcnsqE2QtJUqXPV7/M4WT2yRUmI4ThPt9O9fmPH2ku52hdb6t4qXvwdQSkDHt
xo3J/Vc/jDR2/feedDhQmG0V9j6tHsuG6bVVhcGiWnSmSoPfg13FlQwlxZTyFtiMZ2jILyoxggOu
MIIDqgIBATCBqTCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQ
MA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQxOTA3BgNVBAMTMENP
TU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIRAOUHt1fFyUsR
52q4+8ZfwIYwCQYFKw4DAhoFAKCCAdkwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG
9w0BCQUxDxcNMTQwMjI3MTUzNzU3WjAjBgkqhkiG9w0BCQQxFgQUm/sZc0rvZTVIhuinqKHWNsn0
EV8wgboGCSsGAQQBgjcQBDGBrDCBqTCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
OTA3BgNVBAMTMENPTU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBD
QQIRAOUHt1fFyUsR52q4+8ZfwIYwgbwGCyqGSIb3DQEJEAILMYGsoIGpMIGTMQswCQYDVQQGEwJH
QjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
ExFDT01PRE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBBdXRoZW50aWNhdGlv
biBhbmQgU2VjdXJlIEVtYWlsIENBAhEA5Qe3V8XJSxHnarj7xl/AhjANBgkqhkiG9w0BAQEFAASC
AQCmp9yjNuRoaxx8fXI/RtovbxqGQqji+Xjj70Ky9yU+2suwR6hoKXCX8c9kuF1KMvG0O3pQGEXo
e02DCQk1fxlSZuhYa0de3AxcUFYity06sUdDMgT0Kr8E/MIggRIg6Rku0dj257wqw32vsvW0XSMN
t0/eDrP8hl3JZMl0ttm03tzh21hTZCB+e5XirM7DkMTWTqRK2WZstDegAirL2gDsyhRrytipQRmU
l71OsbsyCcuUJhh/ObvJWMRGvbc6Vd9eafnmYPj/0Pxmc4OQpMHY0jHdHc0ML6pVpe1JZZJ4F7CP
HT7tYTIvUzW7jX5CkJ/MzfHizFee3dGJURVjL0TIAAAAAAAA

--Apple-Mail=_3B5BB6C3-3C12-435F-88CC-2022C7342C7C--
