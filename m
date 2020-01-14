Return-Path: <msweet@msweet.org>
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Date: Mon, 13 Jan 2020 19:56:02 -0500
Message-Id: <ADFB6530-5797-4987-BE42-868231CBD4F3@msweet.org>
Subject: [Printing-architecture] Announcing LPrint - A Label Printing
	Application
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

All,

I've put together a label printer application called LPrint for macOS=C2=AE=
 and Linux=C2=AE.  I wrote it in response to criticism that coming =
changes in CUPS will leave users of label printers in the cold...  The =
project home page is at:

	https://www.msweet.org/lprint

Basically, LPrint is a print spooler optimized for label printing.  It =
accepts "raw" print data as well as PNG images (like those used for =
shipping labels by most shippers' current web APIs) and has built-in =
"drivers" to send the print data to USB and network-connected label =
printers.  The spooler also tries to keep the labels moving by merging =
jobs over a single connection to the printer rather than starting and =
stopping like CUPS does to support a wider variety of printers.

LPrint supports the full range of options and features supported by the =
embedded drivers - currently all Dymo and Zebra ZPL label printers.  =
Whenever possible, LPrint will auto-detect the make and model of your =
printer and its installed capabilities.  And you can configure the =
default values of all options as well as manually configure the media =
that is loaded in each printer.

LPrint also offers a simple network server mode that makes any label =
printers appear as IPP Everywhere=E2=84=A2/AirPrint=E2=84=A2 printers on =
your network.  Thus, any macOS, iOS=C2=AE, or Linux client can use any =
label printer supported by LPrint.  And you can, of course, send jobs =
from LPrint to an LPrint server on the network.

Finally, LPrint offers command-line and web-based monitoring of printer =
and job status.

I plan on doing a 1.0 beta release very soon.  Enjoy!

________________________
Michael Sweet



