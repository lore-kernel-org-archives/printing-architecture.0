Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_blVvN4BxbIA4RBcnolKJnw)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAN40gSva+8P8ha-ABh5exQfd5VDVsA7prxj0ct33J2t52rLHTA@mail.gmail.com>
Date: Tue, 18 Jun 2013 08:13:44 -0400
Message-id: <505B6FA1-E206-4A6B-87D6-D44BD3C15C5B@apple.com>
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<CAN40gSva+8P8ha-ABh5exQfd5VDVsA7prxj0ct33J2t52rLHTA@mail.gmail.com>
Subject: Re: [Printing-architecture] On the Continued Need for PostScript
 Workflows
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, James Cloos <cloos@jhcloos.com>


--Boundary_(ID_blVvN4BxbIA4RBcnolKJnw)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Ira,

On 2013-06-17, at 8:45 PM, Ira McDonald <blueroofmusic@gmail.com> wrote:
> Hi James,
> 
> I sympathize with your concerns, but...
> 
> (1) PostScript filters aren't going to be maintained in CUPS in the future
> (as far as I know)

This isn't exactly correct.

The CUPS PPD APIs were deprecated in CUPS 1.6 in favor of new APIs based on IPP Everywhere that better abstract the implementation details of printers and drivers in the system.  In fact, the current implementation is (internally) based on PPDs, as that is how CUPS does printer drivers.

The goal is to eliminate dependence on PPD files, not to eliminate PostScript printing specifically, because PPDs are (and always were) a limiting factor in supporting printer features in CUPS.  The last update to the PPD spec was in 1996 - printers (and how they are used) have changed a LOT since then...

Once applications and drivers no longer depend on the CUPS PPD API, we can work to separate the PPD API and PostScript printer support so that it can be maintained in parallel to any non-PS support.

> (2) PWG IPP Everywhere (the only open standard mobile printing protocol)
> abandons PostScript entirely and requires PDF

Just to be clear: IPP Everywhere does not forbid PostScript, and in fact is completely silent on support for it.  I suspect that future IPP Everywhere printers may offer PostScript support as part of the "legacy" language support for older OS's.

> (3) Of the recent printers that I'm aware of, more are supporting native PDF
> than native PostScript

My view of the products coming out does show some new products that are PDF-only vs. PDF + PostScript.  The combo products typically use a RIP (internal or external) that supports both with a common rendering backend, usually with an intermediate display list representation (for banding).

Most printers are still raster-only, but there are some new printers in the sub-$250 price point that are offering PDF support now...

> (4) PostScript is deservedly disliked by government standards agencies 
> around the world because of how easily it can be exploited for security
> attacks

In the realm of security, PDF has its share of issues as well.  I avoid slinging the security arrow because of that...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_blVvN4BxbIA4RBcnolKJnw)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Ira,<div><br><div><div>On 2013-06-17, at 8:45 PM, Ira McDonald &lt;<a =
href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt; =
wrote:</div><blockquote type=3D"cite"><div =
dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>Hi =
James,<br><br></div>I sympathize with your concerns, =
but...<br><br></div>(1) PostScript filters aren't going to be maintained =
in CUPS in the future<br>
</div>(as far as I =
know)<br></div></div></div></div></div></div></div></div></div></blockquot=
e><div><br></div>This isn't exactly =
correct.</div><div><br></div><div>The CUPS PPD APIs were deprecated in =
CUPS 1.6 in favor of new APIs based on IPP Everywhere that better =
abstract the implementation details of printers and drivers in the =
system. &nbsp;In fact, the current implementation is (internally) based =
on PPDs, as that is how CUPS does printer =
drivers.</div><div><br></div><div>The goal is to eliminate dependence on =
PPD files, not to eliminate PostScript printing specifically, because =
PPDs are (and always were) a limiting factor in supporting printer =
features in CUPS. &nbsp;The last update to the PPD spec was in 1996 - =
printers (and how they are used) have changed a LOT since =
then...</div><div><br></div><div>Once applications and drivers no longer =
depend on the CUPS PPD API, we can work to separate the PPD API and =
PostScript printer support so that it can be maintained in parallel to =
any non-PS support.</div><div><br></div><div><blockquote =
type=3D"cite"><div dir=3D"ltr"><div><div><div><div><div><div><div>(2) =
PWG IPP Everywhere (the only open standard mobile printing =
protocol)<br></div>abandons PostScript entirely and requires =
PDF<br></div></div></div></div></div></div></div></blockquote><div><br></d=
iv><div>Just to be clear: IPP Everywhere does not forbid PostScript, and =
in fact is completely silent on support for it. &nbsp;I suspect that =
future IPP Everywhere printers may offer PostScript support as part of =
the "legacy" language support for older =
OS's.</div><div><br></div></div><div><blockquote type=3D"cite"><div =
dir=3D"ltr"><div><div><div><div><div>(3) Of the recent printers that I'm =
aware of, more are supporting native PDF<br>
than native =
PostScript<br></div></div></div></div></div></div></blockquote><div><br></=
div>My view of the products coming out does show some new products that =
are PDF-only vs. PDF + PostScript. &nbsp;The combo products typically =
use a RIP (internal or external) that supports both with a common =
rendering backend, usually with an intermediate display list =
representation (for banding).</div><div><br></div><div>Most printers are =
still raster-only, but there are some new printers in the sub-$250 price =
point that are offering PDF support =
now...</div><div><br></div><div><blockquote type=3D"cite"><div =
dir=3D"ltr"><div><div><div><div>(4) PostScript is deservedly disliked by =
government standards agencies <br></div>around the world because of how =
easily it can be exploited for =
security<br>attacks<br></div></div></div></div></blockquote><div><br></div=
>In the realm of security, PDF has its share of issues as well. &nbsp;I =
avoid slinging the security arrow because of that...</div><br><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px;  "><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
'Andale Mono'; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-align: -webkit-auto; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px;  "><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; =
">_________________________________________________________<br>Michael =
Sweet, Senior Printing System&nbsp;Engineer, PWG =
Chair</div></span></span>
</div>
<br></div></body></html>=

--Boundary_(ID_blVvN4BxbIA4RBcnolKJnw)--
