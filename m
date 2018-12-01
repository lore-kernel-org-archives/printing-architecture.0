Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=mime-version :
	content-type : sender : subject : from : in-reply-to : date : cc :
	message-id : references : to; s=20180706;
	bh=Oco2GwCGOpaXUyi/9EzEPLZOQ4/1058ydCJZ172Q5yQ=;
	b=JMrGxwAX9WXH8wQu5YuwtB4d1gGjYpjq+m2yK5akY//+Ogs4jgoFnib9+WiMb4jTCpLE
	aiz1efD1HG7m2H0/pd7z2kT1YuR6EGNaq8oKBIKg7M4iEO+bihQkhWoHKRqp0uWzzoDq
	fLBg4FchYHCbaiJtZeb5bczT2/neh++pawZuXes+HeJG+QQOpN1k8Xgv1h2nobSyiG89
	FxPCpWJokI2mU+XRypA+GmD2oDpXes2FXMTVbKZxNJ3+PNTDlbp8Hk44saopVRGvJMPB
	AK17aT/ofCmJ3+/iuKRKQpVa4k1h7Dm1z6hfuy6lEIpz+ADikpuK/5kdgO2Orho80USS
	/Q== 
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_Y9Us04WiMF//UDV/6muwrg)"
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAHKJWbBRFSX3DVKWvd3Y9dZSd7u=yGn1e76NWj24qy=zRLfQ-g@mail.gmail.com>
Date: Sat, 01 Dec 2018 12:29:17 -0500
Message-id: <E897C85C-DB8E-418E-8840-B28C03046095@apple.com>
References: <eba4eae4-3aba-42ad-5188-12c57dd3dad9@gmail.com>
	<CAHKJWbDZqkmh2OPVGaTKLc8tugvNTJkf48CONwYJ2-A+cBuziA@mail.gmail.com>
	<9A0567F2-1A3A-424C-A4DC-AE013EFF4B4D@apple.com>
	<CAHKJWbBRFSX3DVKWvd3Y9dZSd7u=yGn1e76NWj24qy=zRLfQ-g@mail.gmail.com>
Subject: Re: [Printing-architecture] IPP-over-USB and Printer Applications:
 DNS-SD-advertise localhost:PORT a security problem?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Sean Kau <skau@chromium.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, David Valleau <valleau@chromium.org>, Till Kamppeter <till.kamppeter@gmail.com>


--Boundary_(ID_Y9Us04WiMF//UDV/6muwrg)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Sean,

> On Nov 30, 2018, at 8:52 PM, Sean Kau <skau@chromium.org> wrote:
> ...
> We could perform discovery over a domain socket, even continuing to use DNS-SD if we register the

DNS-SD discovery happens through Avahi, which uses DBUS as its communications mechanism.  If the discovered printer has no equivalent CUPS queue, libcups will use a CUPS-Create-Local-Printer request to ask cupsd to resolve and talk to the printer to setup a (temporary) local print queue, and thereafter the client application only ever communicates with cupsd unless it explicitly requests a connection to the printer itself (CUPS_DEST_FLAGS_DEVICE passed to cupsConnectDest) - that would be used by a management application OR by a print dialog wanting to show the currently loaded media. Longer term we would like to be able to relay the currently loaded media via cupsd as well, but that is problematic from a performance perspective...

> ...
> printers at a given endpoint.  As far as I can tell, the primary advantage to using TCP over localhost is the presence of port numbers.

No, it is because the IPP and IPPS URI schemes are based on HTTP and HTTPS, which only recognize Internet Protocol addresses and DNS-style names.  The use of the domain socket by cupsd is non-standard, and even the URIs you pass to cupsd must still use "localhost" when communicating over the domain socket since you can't embed a domain socket filename in the URI without causing a lot of problems...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer


--Boundary_(ID_Y9Us04WiMF//UDV/6muwrg)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Sean,<br class=3D""><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Nov 30, 2018, at 8:52 PM, =
Sean Kau &lt;<a href=3D"mailto:skau@chromium.org" =
class=3D"">skau@chromium.org</a>&gt; wrote:</div><div class=3D""><div =
dir=3D"ltr" style=3D"font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><div class=3D"">...</div><div =
class=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular;">We could perform discovery over a domain socket, even =
continuing to use DNS-SD if we register the =
</div></div></div></blockquote><div><br class=3D""></div>DNS-SD =
discovery happens through Avahi, which uses DBUS as its communications =
mechanism. &nbsp;If the discovered printer has no equivalent CUPS queue, =
libcups will use a CUPS-Create-Local-Printer request to ask cupsd to =
resolve and talk to the printer to setup a (temporary) local print =
queue, and thereafter the client application only ever communicates with =
cupsd unless it explicitly requests a connection to the printer itself =
(CUPS_DEST_FLAGS_DEVICE passed to cupsConnectDest) - that would be used =
by a management application OR by a print dialog wanting to show the =
currently loaded media. Longer term we would like to be able to relay =
the currently loaded media via cupsd as well, but that is problematic =
from a performance perspective...</div><div><br =
class=3D""></div><div><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" style=3D"font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><div class=3D"" style=3D"caret-color: =
rgb(0, 0, 0); font-family: =
Menlo-Regular;">...</div></div></div></blockquote><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" =
style=3D"font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular;">printers at a given endpoint.&nbsp; As far =
as I can tell, the primary advantage to using TCP over localhost is the =
presence of port numbers.</div></div></div></blockquote><div><br =
class=3D""></div>No, it is because the IPP and IPPS URI schemes are =
based on HTTP and HTTPS, which only recognize Internet Protocol =
addresses and DNS-style names. &nbsp;The use of the domain socket by =
cupsd is non-standard, and even the URIs you pass to cupsd must still =
use "localhost" when communicating over the domain socket since you =
can't embed a domain socket filename in the URI without causing a lot of =
problems...</div><div><br class=3D""></div><div class=3D"">
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; border-spacing: 0px; -webkit-text-decorations-in-effect: none; =
-webkit-text-stroke-width: 0px;"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" =
class=3D"">_________________________________________________________<br =
class=3D"">Michael Sweet, Senior Printing =
System&nbsp;Engineer</div></span></div></span>
</div>
<br class=3D""></body></html>=

--Boundary_(ID_Y9Us04WiMF//UDV/6muwrg)--
