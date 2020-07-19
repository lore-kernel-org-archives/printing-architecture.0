Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <199c8f6d-b38a-fc14-526c-3201c473788b@gmail.com>
Date: Sun, 19 Jul 2020 19:19:12 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <2CFDE5DA-E5B5-41BF-918C-D9F41EB0D259@msweet.org>
References: <199c8f6d-b38a-fc14-526c-3201c473788b@gmail.com>
Subject: Re: [Printing-architecture] Printer Applications: Retro-fitting
	classic drivers
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
Cc: Sambhav Dusad <sambhavdusad24@gmail.com>, Aveek Basu <basu.aveek@gmail.com>, Jai Luthra <luthrajaiji@gmail.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

> On Jul 17, 2020, at 6:06 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> PAPPL needs to know the destination file format which should go to the =
printer (driver_data.format) and Michael told that it should be set to
> "application/postscript". For a PostScript printer this looks =
principally OK for me, but if the incoming job is PostScript, a =
PDF-to-PostScript filter would not get called and so all massaging on =
the PostScript not done, the job printed raw. Here Michael's suggestion =
is to let the filter only convert PDF into PostScript but the PPD's =
commands only be inserted by the driver_data.print function, a function =
for transfering the full job to the printer.
>=20
> I have some doubts and questions:
>=20
> 1. If I import a driver for a non-PostScript printer, for which I have =
a CUPS filter which takes PDF as input (for example foomatic-rip) and a =
PPD file I will proceed similarly, starting with adding a filter to turn =
PDF into the printer's native PDL using the papplSystemAddMIMEFilter() =
function of PAPPL. This time the filter has to do everything to get the =
printer-ready output. The driver_data.print function will not have to do =
anything any more but simply pass on the data. My question here is to =
what I have to set driver_data.format, the output format is an unknown, =
binary, proprietary format and I can assume that I never get an incoming =
job in that format. What do I have to set as the output format MIME type =
here?

OK, so in this case you probably want to not set the print function =
(NULL) and not set the MIME media type at all, so that the printer =
application only reports PDF and the various raster formats.  You'll =
need the raster callbacks to generate PDF or PostScript (probably =
easier) to pass to Ghostscript, which then produces the final =
printer-ready content.

> 2. In CUPS world all incoming PDF gets massaged by pdftopdf, =
especially at first all filled forms and annotations get flattened by a =
highly sophisticated functionality of libqpdf and after that page =
management options (page-ranges, page-set, number-up, ...) get applied. =
Has a Printer Application which accepts PDF (application/pdf, not =
application/vnd.cups-pdf) as input format to apply all of the =
functionality of pdftopdf?

Yes, however the only options/attributes required for IPP =
Everywhere/AirPrint that affect job filtering are:

- copies
- media/media-col (for scaling/centering)
- page-ranges
- print-color-mode
- print-scaling
- sides (duplex needs an even number of pages and the right back side =
orientation for raster)

The "number-up" option isn't required and isn't supported by PAPPL, and =
CUPS always applies number-up locally since a) most printers don't =
support it and b) CUPS supports a superset of the bare minimum provided =
by IPP (no border control and somewhat limited layout control in IPP).

The "page-order" and "page-set" options are CUPS-specific, are locally =
processed by CUPS, and are not passed over the wire to an IPP printer.

The "page-ranges" option is applied locally.

> Or can we assume that the Printer Application gets its PDF ALWAYS from =
CUPS and so we can be sure that the incoming PDF is print-ready?

You can't assume printer-ready since iOS clients (in particular) will =
let the PDF printer handle the above attributes when printing a =
downloaded PDF.

> 3. I assume that for PostScript printers the functionality of pdftops =
cannot be omitted, as here we are working around many shortcomings and =
bugs in PostScript interpreters of several printer manufacturers.

I'm not sure which functionality you are talking about?  It is enough to =
generate the proper Level 2/3 PS and embed the necessary =
printer-specific commands I think.  Oh, and make sure to support the =
attributes above when generating things - so if=20

> 4. What is the needed sophistication of the inserting of PPD commands =
and code into a PostScript stream for PostScript printers? Do we need =
the pstops filter's full functionality or is the functionality of =
ippeveps good enough?

I think ippeveps's method is good enough - PostScript is a legacy format =
and these days the only producers will be programs that want full =
control.  It is enough to ensure the right JCL commands get added.

> 5. What determines which input formats a PAPPL-based Printer =
Application accepts? Can we suppress unwished formats, for example =
PostScript for a PostScript Printer Application (which has =
driver_data.format set to PostScript) so that we force the use of the =
PDF-to-PostScript filter with all its quirk magic?

The reported MIME media types are "image/pwg-raster", "image/urf", any =
registered MIME filters ("image/png" and "image/jpeg" for the stock =
PAPPL, plus any others), and (if not NULL) the pdriver_data.format =
value.  As I mention above, non-PS printers using Ghostscript-based =
drivers should leave the pdriver_data.format value set to NULL.

________________________
Michael Sweet



