Return-Path: <msweet@msweet.org>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_34BC1897-4234-48B4-9198-9CF12192C7D2"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <00d2660e-d305-7dcb-4535-fbbcfbbaeb01@gmail.com>
Date: Wed, 24 Feb 2021 15:01:10 -0500
Message-Id: <773208ED-C079-432B-AB40-ACCF42D65E65@msweet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <54aefb59-d506-8e30-8891-9d051ef81fed@gmail.com>
 <DC5E23E8-80FD-4835-B3C7-B637D5287267@msweet.org>
 <00d2660e-d305-7dcb-4535-fbbcfbbaeb01@gmail.com>
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
	Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>


--Apple-Mail=_34BC1897-4234-48B4-9198-9CF12192C7D2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On Feb 24, 2021, at 2:21 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 24/02/2021 18:48, Michael Sweet wrote:
>> ... which is why I suggested you create a registry for printer =
applications so that you can map a printer to one or more printer =
applications that you then run "autoadd" on.
>>=20
>=20
> Printer Applications should have a way to query the full list of =
printers they support by model and also the full list of generic (for =
example by-PDL) support options they have. So some "Printer Application =
finder" tool could find whether support for a certain printer is =
available and then add the printer (with driver "auto") on the right =
Printer Application.

The "drivers" sub-command from PAPPL almost has everything needed:

testsuite/testmainloop drivers
pwg_2inch-203dpi-black_1                PWG 2inch Label 203DPI Black
pwg_2inch-300dpi-black_1                PWG 2inch Label 300DPI Black
pwg_4inch-203dpi-black_1                PWG 4inch Label 203DPI Black
pwg_4inch-300dpi-black_1                PWG 4inch Label 300DPI Black
pwg_common-300dpi-black_1               PWG Office 300DPI Black
pwg_common-300dpi-sgray_8               PWG Office 300DPI sGray 8-bit
pwg_common-300dpi-srgb_8                PWG Office 300DPI sRGB 8-bit
pwg_common-300dpi-600dpi-black_1        PWG Office 300DPI 600DPI Black
pwg_common-300dpi-600dpi-sgray_8        PWG Office 300DPI 600DPI sGray =
8-bit
pwg_common-300dpi-600dpi-srgb_8         PWG Office 300DPI 600DPI sRGB =
8-bit
pwg_fail-300dpi-black_1                 PWG Always Fails 300DPI Black

hp-printer-app drivers
hp_deskjet                              HP DeskJet
hp_generic                              Generic PCL
hp_laserjet                             HP LaserJet

We can extend this to report the 1284 device IDs (which will give you =
make and model separate from the driver description string along with =
the command set(s)), and/or provide the information in a more =
machine-friendly format.

________________________
Michael Sweet




--Apple-Mail=_34BC1897-4234-48B4-9198-9CF12192C7D2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
line-break: after-white-space;" class=3D"">Till,<br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D"">On Feb 24, 2021, at 2:21 =
PM, Till Kamppeter &lt;<a href=3D"mailto:till.kamppeter@gmail.com" =
class=3D"">till.kamppeter@gmail.com</a>&gt; wrote:<br class=3D""><br =
class=3D"">On 24/02/2021 18:48, Michael Sweet wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D"">... which is why I =
suggested you create a registry for printer applications so that you can =
map a printer to one or more printer&nbsp;applications that you then run =
"autoadd" on.<br class=3D""><br class=3D""></blockquote><br =
class=3D"">Printer Applications should have a way to query the full list =
of printers they support by model and also the full list of generic =
(for&nbsp;example by-PDL) support options they have. So some "Printer =
Application finder" tool could find whether support for a certain =
printer is&nbsp;available and then add the printer (with driver "auto") =
on the right Printer Application.<br class=3D""></blockquote><div =
class=3D""><br class=3D""></div>The "drivers" sub-command from PAPPL =
almost has everything needed:<div class=3D""><br =
class=3D""></div><blockquote style=3D"margin: 0 0 0 40px; border: none; =
padding: 0px;" class=3D""><div class=3D"">testsuite/testmainloop =
drivers</div><div class=3D"">pwg_2inch-203dpi-black_1 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PWG 2inch Label 203DPI =
Black</div><div class=3D"">pwg_2inch-300dpi-black_1 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PWG 2inch Label 300DPI Black</div><div =
class=3D"">pwg_4inch-203dpi-black_1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;PWG 4inch Label 203DPI Black</div><div =
class=3D"">pwg_4inch-300dpi-black_1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;PWG 4inch Label 300DPI Black</div><div =
class=3D"">pwg_common-300dpi-black_1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; PWG Office 300DPI Black</div><div =
class=3D"">pwg_common-300dpi-sgray_8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; PWG Office 300DPI sGray 8-bit</div><div =
class=3D"">pwg_common-300dpi-srgb_8 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;PWG Office 300DPI sRGB 8-bit</div><div =
class=3D"">pwg_common-300dpi-600dpi-black_1 &nbsp; &nbsp; &nbsp; =
&nbsp;PWG Office 300DPI 600DPI Black</div><div =
class=3D"">pwg_common-300dpi-600dpi-sgray_8 &nbsp; &nbsp; &nbsp; =
&nbsp;PWG Office 300DPI 600DPI sGray 8-bit</div><div =
class=3D"">pwg_common-300dpi-600dpi-srgb_8 &nbsp; &nbsp; &nbsp; &nbsp; =
PWG Office 300DPI 600DPI sRGB 8-bit</div><div =
class=3D"">pwg_fail-300dpi-black_1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; PWG Always Fails 300DPI Black</div><div =
class=3D""><br class=3D""></div><div class=3D"">hp-printer-app =
drivers</div><div class=3D"">hp_deskjet &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;HP DeskJet</div><div class=3D"">hp_generic &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;Generic PCL</div><div class=3D"">hp_laserjet &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; HP LaserJet</div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">We can extend this to report the 1284 =
device IDs (which will give you make and model separate from the driver =
description string along with the command set(s)), and/or provide the =
information in a more machine-friendly format.</div><div class=3D""><br =
class=3D""></div><div class=3D""><div =
class=3D"">________________________<br class=3D"">Michael Sweet<br =
class=3D""><br class=3D""><br class=3D""></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_34BC1897-4234-48B4-9198-9CF12192C7D2--
