Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_YhygdZGN6BLQAyHCjYWQ1A)"
From: Michael Sweet <msweet@apple.com>
Date: Thu, 11 Jul 2013 17:28:25 -0400
Message-id: <AECFED11-16E9-438E-9EDE-9E59E49D38B9@apple.com>
Subject: [Printing-architecture] CUPS 1.7rc1 now live
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


--Boundary_(ID_YhygdZGN6BLQAyHCjYWQ1A)
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: quoted-printable

Not just one CUPS release but two!

CUPS 1.7rc1 is our first release candidate for CUPS 1.7.0 and includes =
the fixes from CUPS 1.6.3, adds a new ippfind utility, fixes some issues =
in the ipptool utility, and fixes some general printing bugs. Changes =
include:

	=95 Printer xxx-default values were not reported by =
Get-Printer-Attributes or lpoptions (<rdar://problem/14401795>)
	=95 Fixed deprecation warnings for many functions on OS X so =
they are tied to the deployment version when building =
(<rdar://problem/14210079>)
	=95 Fixed a build issue on ARM-based Linux systems - unable to =
validate va_list arguments.
	=95 Added a new ippfind tool for finding IPP printers and other =
Bonjour services (<rdar://problem/13876199>)
	=95 Fixed some issues with conversion of PWG media size names to =
hundredths of millimeters (<rdar://problem/14065748>)
	=95 The IPP backend could crash on OS X when printing to a =
Kerberized printer (<rdar://problem/14040186>)
	=95 The ipptool program now automatically extends timeouts when =
the output buffer is filled (<rdar://problem/14016099>)
	=95 The ipptool program now supports the --help and --version =
options.
	=95 The ipptool program did not continue past include file =
errors by default (<rdar://problem/13875803>)
	=95 The ipptool program now supports FILE-ID and TEST-ID =
directives and includes their values in its XML output =
(<rdar://problem/13876038>)
	=95 The ipptool program now supports WITH-HOSTNAME, =
WITH-RESOURCE, and WITH-SCHEME expect predicates to compare the =
corresponding URI components (<rdar://problem/13876091>)

Enjoy!

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_YhygdZGN6BLQAyHCjYWQ1A)
Content-type: text/html; charset=windows-1252
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Not =
just one CUPS release but two!<div><br></div><div>CUPS 1.7rc1 is our =
first release candidate for CUPS 1.7.0 and includes the fixes =
from&nbsp;CUPS 1.6.3, adds a new ippfind utility, fixes some issues in =
the ipptool utility, and&nbsp;fixes some general printing bugs. Changes =
include:<br><br><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=95 Printer xxx-default values =
were not reported by Get-Printer-Attributes or lpoptions&nbsp;(&lt;<a =
href=3D"rdar://problem/14401795">rdar://problem/14401795</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 Fixed deprecation warnings for many functions on OS X so they are tied =
to the&nbsp;deployment version when building (&lt;<a =
href=3D"rdar://problem/14210079">rdar://problem/14210079</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 Fixed a build issue on ARM-based Linux systems - unable to validate =
va_list&nbsp;arguments.<br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=95 Added a new ippfind tool for =
finding IPP printers and other Bonjour services&nbsp;(&lt;<a =
href=3D"rdar://problem/13876199">rdar://problem/13876199</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 Fixed some issues with conversion of PWG media size names to hundredths =
of&nbsp;millimeters (&lt;<a =
href=3D"rdar://problem/14065748">rdar://problem/14065748</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 The IPP backend could crash on OS X when printing to a Kerberized =
printer&nbsp;(&lt;<a =
href=3D"rdar://problem/14040186">rdar://problem/14040186</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 The ipptool program now automatically extends timeouts when the output =
buffer is&nbsp;filled (&lt;<a =
href=3D"rdar://problem/14016099">rdar://problem/14016099</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 The ipptool program now supports the --help and --version =
options.<br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>=95 The ipptool program did not =
continue past include file errors by default&nbsp;(&lt;<a =
href=3D"rdar://problem/13875803">rdar://problem/13875803</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 The ipptool program now supports FILE-ID and TEST-ID directives and =
includes their&nbsp;values in its XML output (&lt;<a =
href=3D"rdar://problem/13876038">rdar://problem/13876038</a>&gt;)<br></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=95=
 The ipptool program now supports WITH-HOSTNAME, WITH-RESOURCE, and =
WITH-SCHEME expect&nbsp;predicates to compare the corresponding URI =
components (&lt;<a =
href=3D"rdar://problem/13876091">rdar://problem/13876091</a>&gt;)<br></div=
><div><br></div>Enjoy!<br><div apple-content-edited=3D"true"><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; =
border-spacing: 0px; "><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; widows: 2; border-spacing: 0px; "><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><br></div><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; =
">_________________________________________________________<br>Michael =
Sweet, Senior Printing System&nbsp;Engineer, PWG =
Chair</div></span></span>
</div>

<br></div></body></html>=

--Boundary_(ID_YhygdZGN6BLQAyHCjYWQ1A)--
