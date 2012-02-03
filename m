Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_nSPBD5+IgGbXLWU7o4757Q)"
From: Michael Sweet <msweet@apple.com>
Date: Fri, 03 Feb 2012 08:32:27 -0800
Message-id: <CD26E4AD-B675-4850-AAC4-BF07BDA5AA2B@apple.com>
Subject: Re: [Printing-architecture] Removal of features in CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


--Boundary_(ID_nSPBD5+IgGbXLWU7o4757Q)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

[Sorry, I was just made aware of this message thread or I would have responded sooner since much of this information just isn't correct...]

Till Kamppeter wrote:
> ...
> Here are the dropped features:
> 
> 
> 1. Filters go to the new cups-filters project
> ---------------------------------------------
> 
> All filters and backends not used by Mac OS X are dropped. These 
> filters, together with the filters for the PDF printing workflow are now 
> hosted as the cups-filters project at OpenPrinting. For a first release 
> only bannertopdf needs to get finished (by Lars Uebernickel).

This part is correct and thank you Till for hosting these filters!
> 2. The Linux implementation of the USB backend looses attention
> ---------------------------------------------------------------

We continue to develop and support the USB backend, although my personal development time is (unfortunately) quite limited.  I will be integrating Till's libusb 1.0 patch in the near future, so at least the current functionality will be usable with both the old and new libusb.

For bidirectional printing support, we need to adopt the method used for the Darwin/OS X USB backend where there is a separate read thread that just does a bulk-in every 200ms. That provides good latency for drivers that need it while avoiding the performance hit for printers that just return a copy of their 1284 Device ID with status info every time.

Depending on my time constraints and whether libusb 1.0 has the necessary support (I think so, but it has been a while since I looked), we may be able to get bidi support in CUPS 1.6.  The big hurdle was moving to libusb 1.0, and Till has already done that work.

> 4. PPD concept will be dropped in CUPS
> --------------------------------------
This is just incorrect.  PPDs are being *deprecated* in CUPS 1.6, but this just means that we will no longer be extending support for PPDs in CUPS.  The APIs are still there, and PPD-based drivers will continue to be supported.

That said, the long-term replacement *is* IPP Everywhere, and to support that we are adding new APIs in CUPS 1.6 (many still just stubs in the current trunk) to deal with dynamic printer availability and capabilities.  The goal is to have IPP equivalents for what we currently provide in the PPD APIs, and in 1.6 they will use the information the scheduler (cupsd) already generates from and maps to PPD files since CUPS 1.4.

CUPS 1.6 is just a baby step towards PPD independence, but the new APIs will allow applications (and the common print dialog) to make the transition so that when we are able to pull the plug they won't notice a thing.  And in the meantime we will be able to support things like media sensing for new printers on the market...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_nSPBD5+IgGbXLWU7o4757Q)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">[Sorry, I was just made aware of this message thread or I would have =
responded sooner since much of this information just isn't =
correct...]<div><br></div><div>Till Kamppeter =
wrote:</div><div><blockquote type=3D"cite"><span =
class=3D"Apple-style-span" style=3D"font-family: 'Helvetica Neue'; =
"><pre>...
Here are the dropped features:


1. Filters go to the new cups-filters project
---------------------------------------------

All filters and backends not used by Mac OS X are dropped. These=20
filters, together with the filters for the PDF printing workflow are now=20=

hosted as the cups-filters project at OpenPrinting. For a first release=20=

only bannertopdf needs to get finished (by Lars Uebernickel).
</pre></span></blockquote><div><br></div>This part is correct and thank =
you Till for hosting these filters!<br><blockquote type=3D"cite"><span =
class=3D"Apple-style-span" style=3D"font-family: 'Helvetica Neue'; =
"><pre>2. The Linux implementation of the USB backend looses attention
---------------------------------------------------------------
</pre></span></blockquote><div><br></div>We continue to develop and =
support the USB backend, although my personal development time is =
(unfortunately) quite limited. &nbsp;I will be integrating Till's libusb =
1.0 patch in the near future, so at least the current functionality will =
be usable with both the old and new libusb.</div><div><br></div><div>For =
bidirectional printing support, we need to adopt the method used for the =
Darwin/OS X USB backend where there is a separate read thread that just =
does a bulk-in every 200ms. That provides good latency for drivers that =
need it while avoiding the performance hit for printers that just return =
a copy of their 1284 Device ID with status info every =
time.</div><div><br></div><div>Depending on my time constraints and =
whether libusb 1.0 has the necessary support (I think so, but it has =
been a while since I looked), we may be able to get bidi support in CUPS =
1.6. &nbsp;The big hurdle was moving to libusb 1.0, and Till has already =
done that work.</div><div><br></div><div><blockquote type=3D"cite"><span =
class=3D"Apple-style-span" style=3D"font-family: 'Helvetica Neue'; =
"><pre>4. PPD concept will be dropped in CUPS
--------------------------------------
</pre></span></blockquote><div>This is just incorrect. &nbsp;PPDs are =
being *deprecated* in CUPS 1.6, but this just means that we will no =
longer be extending support for PPDs in CUPS. &nbsp;The APIs are still =
there, and PPD-based drivers will continue to be =
supported.</div><div><br></div><div>That said, the long-term replacement =
*is* IPP Everywhere, and to support that we are adding new APIs in CUPS =
1.6 (many still just stubs in the current trunk) to deal with dynamic =
printer availability and capabilities. &nbsp;The goal is to have IPP =
equivalents for what we currently provide in the PPD APIs, and in 1.6 =
they will use the information the scheduler (cupsd) already generates =
from and maps to PPD files since CUPS 1.4.</div><div><br></div><div>CUPS =
1.6 is just a baby step towards PPD independence, but the new APIs will =
allow applications (and the common print dialog) to make the transition =
so that when we are able to pull the plug they won't notice a thing. =
&nbsp;And in the meantime we will be able to support things like media =
sensing for new printers on the market...</div><div><br></div><div>
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

--Boundary_(ID_nSPBD5+IgGbXLWU7o4757Q)--
