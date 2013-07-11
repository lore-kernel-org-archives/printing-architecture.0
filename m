Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_+kR7b9F3TNGpza8rj4t8Gg)"
From: Michael Sweet <msweet@apple.com>
Date: Thu, 11 Jul 2013 17:18:40 -0400
Message-id: <F8AC2694-EF22-4440-9325-6DF980D31D2E@apple.com>
Subject: [Printing-architecture] CUPS 1.6.3 is now live
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


--Boundary_(ID_+kR7b9F3TNGpza8rj4t8Gg)
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: quoted-printable

For lack of a mailing list, I'm posting here.  CUPS 1.6.3 is now live on =
cups.org...

CUPS 1.6.3 fixes some compatibility issues with servers running CUPS =
1.3.12 or older, fixes some general printing bugs, and fixes some minor =
security issues. Changes include:

	=95 The configure script now prefers Clang over GCC.
	=95 Fixed a compile problem on AIX (STR #4307)
	=95 The default IPP version did not always get set before =
creating a new IPP request message (<rdar://problem/14401718>)
	=95 The lp, lpq, lpr, and lpstat now display an error message =
advising the use of the /version=3D1.1 ServerName option =
(<rdar://problem/14290628>)
	=95 Added documentation about the /version=3D1.1 option to =
ServerName in client.conf (<rdar://problem/14216262>)
	=95 httpStatus(HTTP_ERROR) did not return a useful error message =
(<rdar://problem/14217326>)
	=95 The lp, lpq, lpr, and lpstat commands incorrectly ignored =
the default printer set in the lpoptions file =
(<rdar://problem/14216472>)
	=95 Fixed a URI encoding issue for hostnames containing the ` =
(backquote) character (<rdar://problem/14243133>)
	=95 Added support for RFC 6874's IPv6 link local address format =
in URIs (<rdar://problem/13979453>)
	=95 The USB backend could crash on libusb-based systems if USB =
was disabled in the BIOS (<rdar://problem/13875729>)
	=95 Fixed a rounding error in the PWG media size mapping code =
(<rdar://problem/13493241>)
	=95 Fixed several ipptool test files that used old STATUS names.
	=95 Kerberos credentials could get truncated when printing to a =
shared printer.
	=95 Printing using "ipps" URIs was not encrypted.
	=95 Insecure ICC profiles prevented installation of user =
profiles for a printer on OS X.
	=95 Added more USB quirks for the libusb-based backend (STR =
#4311, <rdar://problem/13736470>)
	=95 The Russian web interface templates were broken (STR #4310)
	=95 The scheduler no longer tries to do Kerberos authentication =
over the loopback interface.
	=95 The IPP backend could fail to pause a job for authentication =
(STR #4298)
	=95 Fixed a regression on the handling of auth keys on OS X if =
the cups-files.conf was not present or did not contain a SystemAuthKey =
value.
	=95 The scheduler incorrectly did a reverse lookup of the server =
address when HostNameLookups was turned off (STR #4302)
	=95 The scheduler incorrectly computed the final content type =
value when null filters were present.

Enjoy!

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_+kR7b9F3TNGpza8rj4t8Gg)
Content-type: text/html; charset=windows-1252
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">For =
lack of a mailing list, I'm posting here. &nbsp;CUPS 1.6.3 is now live =
on <a href=3D"http://cups.org">cups.org</a>...<div><br></div><div>CUPS =
1.6.3 fixes some compatibility issues with servers running CUPS 1.3.12 =
or older,&nbsp;fixes some general printing bugs, and fixes some minor =
security issues. Changes&nbsp;include:<br><br><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 The =
configure script now prefers Clang over GCC.<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 Fixed =
a compile problem on AIX (STR #4307)<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 The =
default IPP version did not always get set before creating a new IPP =
request&nbsp;message (&lt;<a =
href=3D"rdar://problem/14401718">rdar://problem/14401718</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 The lp, lpq, lpr, and lpstat now display an error message advising the =
use of the&nbsp;/version=3D1.1 ServerName option (&lt;<a =
href=3D"rdar://problem/14290628">rdar://problem/14290628</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 Added documentation about the /version=3D1.1 option to ServerName in =
client.conf&nbsp;(&lt;<a =
href=3D"rdar://problem/14216262">rdar://problem/14216262</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 httpStatus(HTTP_ERROR) did not return a useful error =
message&nbsp;(&lt;<a =
href=3D"rdar://problem/14217326">rdar://problem/14217326</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 The lp, lpq, lpr, and lpstat commands incorrectly ignored the default =
printer set in&nbsp;the lpoptions file (&lt;<a =
href=3D"rdar://problem/14216472">rdar://problem/14216472</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 Fixed a URI encoding issue for hostnames containing the ` (backquote) =
character&nbsp;(&lt;<a =
href=3D"rdar://problem/14243133">rdar://problem/14243133</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 Added support for RFC 6874's IPv6 link local address format in =
URIs&nbsp;(&lt;<a =
href=3D"rdar://problem/13979453">rdar://problem/13979453</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 The USB backend could crash on libusb-based systems if USB was disabled =
in the&nbsp;BIOS (&lt;<a =
href=3D"rdar://problem/13875729">rdar://problem/13875729</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 Fixed a rounding error in the PWG media size mapping code&nbsp;(&lt;<a =
href=3D"rdar://problem/13493241">rdar://problem/13493241</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 Fixed several ipptool test files that used old STATUS =
names.<br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=95 Kerberos credentials could =
get truncated when printing to a shared printer.<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 =
Printing using "ipps" URIs was not encrypted.<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 =
Insecure ICC profiles prevented installation of user profiles for a =
printer on OS X.<br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=95 Added more USB quirks for the =
libusb-based backend (STR #4311,&nbsp;&lt;<a =
href=3D"rdar://problem/13736470">rdar://problem/13736470</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 The Russian web interface templates were broken (STR =
#4310)<br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=95 The scheduler no longer tries =
to do Kerberos authentication over the =
loopback&nbsp;interface.<br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=95 The IPP backend could fail to =
pause a job for authentication (STR #4298)<br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95 Fixed =
a regression on the handling of auth keys on OS X if the cups-files.conf =
was&nbsp;not present or did not contain a SystemAuthKey =
value.<br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=95 The scheduler incorrectly did =
a reverse lookup of the server address when&nbsp;HostNameLookups was =
turned off (STR #4302)<br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=95 The scheduler incorrectly =
computed the final content type value when null filters&nbsp;were =
present.</div><div><br></div><div>Enjoy!</div><div><br></div><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px; "><span class=3D"Apple-style-span" =
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

--Boundary_(ID_+kR7b9F3TNGpza8rj4t8Gg)--
