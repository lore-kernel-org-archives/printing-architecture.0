Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_G7z+oDAiLFcfgMkcu2XX2w)"
From: Michael Sweet <msweet@apple.com>
Date: Tue, 24 Sep 2013 12:47:03 -0400
Message-id: <86D7B6CC-E6E0-4620-91D4-DB9A3ABD1534@apple.com>
Subject: [Printing-architecture] CUPS 1.6.4
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_G7z+oDAiLFcfgMkcu2XX2w)
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: quoted-printable

CUPS 1.6.4 is now available for download from:

	http://www.cups.org/software.php

The new release fixes some minor printing issues, add support for USB =
"quirks" files on Linux, and adds a new cupsd SyncOnClose directive. =
Changes include:

	=95 Removed some duplicate size definitions for some ISO sizes =
that were causing problems (<rdar://problem/14722721>)
	=95 The IPP backend did not add the "last-document" attribute =
(<rdar://problem/114660379>)
	=95 Added a SyncOnClose directive to cups-files.conf to force =
cupsd to call fsync before closing any configuration/state files it =
writes (<rdar://problem/14523043>)
	=95 Added USB quirk rule for Lexmark E238 =
(<rdar://problem/14493054>)
	=95 Closed server connections were still not always detected =
(<rdar://problem/14484313>)
	=95 The libusb-based USB backend now loads its list of quirks =
from files in /usr/share/cups/usb instead of using a hardcoded table =
(<rdar://problem/14442769>)
	=95 The scheduler did not properly register ICC color profiles =
with colord (<rdar://problem/14455625>)

Enjoy!
_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_G7z+oDAiLFcfgMkcu2XX2w)
Content-type: text/html; charset=windows-1252
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">CUPS =
1.6.4 is now available for download from:<div><br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span><a =
href=3D"http://www.cups.org/software.php">http://www.cups.org/software.php=
</a><br><div><br></div><div>The new release fixes some minor printing =
issues, add support for USB "quirks" files on&nbsp;Linux, and adds a new =
cupsd SyncOnClose directive. Changes include:<br><br><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 =
Removed some duplicate size definitions for some ISO sizes that were =
causing&nbsp;problems =
(&lt;rdar://problem/14722721&gt;)<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 The =
IPP backend did not add the "last-document" =
attribute&nbsp;(&lt;rdar://problem/114660379&gt;)<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 Added =
a SyncOnClose directive to cups-files.conf to force cupsd to call =
fsync&nbsp;before closing any configuration/state files it writes =
(&lt;rdar://problem/14523043&gt;)<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 Added =
USB quirk rule for Lexmark E238 =
(&lt;rdar://problem/14493054&gt;)<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 =
Closed server connections were still not always =
detected&nbsp;(&lt;rdar://problem/14484313&gt;)<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 The =
libusb-based USB backend now loads its list of quirks from files =
in&nbsp;/usr/share/cups/usb instead of using a hardcoded =
table&nbsp;(&lt;rdar://problem/14442769&gt;)<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 The =
scheduler did not properly register ICC color profiles with =
colord&nbsp;(&lt;rdar://problem/14455625&gt;)<br></div><div><br></div>Enjo=
y!<br><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px;"><span class=3D"Apple-style-span" =
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

<br></div></div></body></html>=

--Boundary_(ID_G7z+oDAiLFcfgMkcu2XX2w)--
