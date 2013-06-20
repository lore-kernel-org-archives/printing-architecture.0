Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
From: Michael Sweet <msweet@apple.com>
In-reply-to: <m3txktzpf2.fsf@carbon.jhcloos.org>
Date: Thu, 20 Jun 2013 09:29:44 -0400
Content-transfer-encoding: quoted-printable
Message-id: <55D4A897-5D56-4ADB-B183-379512FB2631@apple.com>
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com>
	<m3txktzpf2.fsf@carbon.jhcloos.org>
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
To: James Cloos <cloos@jhcloos.com>
Cc: printing-architecture@lists.linux-foundation.org

James,

Please file a bug against the OpenPrinting filters:

    https://bugs.launchpad.net/ubuntu/+source/cups-filters

When submitting a PostScript file to a PostScript printer, the preferred =
filter should be pstops.  The PDF filters should only get involved for =
non-PostScript print jobs.


Till,

Can you update the OpenPrinting landing page to provide some common =
links near the top, including things like:

    Reporting Bugs
    Downloading the current version
    Documentation
    Mailing lists

Right now everything is pretty buried and I can't even say whether the =
link I've provided above is correct for reporting bugs...


On 2013-06-19, at 6:49 PM, James Cloos <cloos@jhcloos.com> wrote:

>>>>>> "MS" =3D=3D Michael Sweet <msweet@apple.com> writes:
>=20
> MS> For the "printing PS to a PS printer case", the existing CUPS =
pstops
> MS> filter should be the clear winner in cupsd's eyes - both the =
relative
> MS> cost and number of filters are lower than a pstopdf | pdftopdf |
> MS> pdftops route, and pstops isn't going anywhere.
>=20
> It, however, is not when one has the openprinting filters installed =
with
> cups 1.6.  Then the *topdf filters and pdftopdf win out over =
everything else.
>=20
> For a test, I added a jetdirect service to my xinetd(8) and redirected
> jobs for a ps printer there (by removing the printer from the network
> and added its ip to the local box).  The serice calls a script with
> cat(1)s whatever is sent to port 9100 to a file per accept(2).
>=20
> Printing a file which starts out:
>=20
> ,----[ head of: April-2007-July-To-Sam-Soap.ps ]
> | %!PS-Adobe-2.0
> | %%Creator: dvips(k) 5.95b Copyright 2005 Radical Eye Software
> | %%Pages: 1
> | %%PageOrder: Ascend
> | %%BoundingBox: 0 0 612 792
> | %%DocumentFonts: LucidaBright LucidaBright-Italic
> | %%DocumentPaperSizes: Letter
> | %%EndComments
> | %DVIPSWebPage: (www.radicaleye.com)
> | %DVIPSCommandLine: dvips -f
> | %DVIPSParameters: dpi=3D1200
> | %DVIPSSource:  TeX output 2007.07.30:2101
> `----
>=20
> I end up with one which starts:
>=20
> ,----[ JD.6970 ]
> | %!PS-Adobe-3.0
> | %Produced by poppler pdftops version: 0.22.5 =
(http://poppler.freedesktop.org)
> | %%Creator: dvips(k) 5.95b Copyright 2005 Radical Eye Software
> | %%LanguageLevel: 2
> `----
>=20
> (It even gets the LanguageLevel wrong.  The pdftops filter in cups-1.5
> knows to pass -level3 to poppler=92s pdftops(1) for this printer, but =
the
> one in cups-filters refuses to.  Hmmph.)
>=20
> As you can see, the filter must have been:
>=20
>  pstopdf | pdftopdf | pdftops | pstops
>=20
> and not just pstops.
>=20
> Bebian bug#712237 notes that previous versions on deb had set the =
pstops
> cost in mime.conv to 65 rather than 66.  Till=92s reply notes that the =
65
> was to avoid just this, but caused 1.6 to fail in =ABmake test=BB.
>=20
> Replicating that change (to 65) indeed does fix that issue here.
>=20
> MS> As for rasterization, generally people are using Ghostscript to
> MS> generate their raster data which supports both PDF and PostScript
> MS> input directly - no intermediate PDF there.
>=20
> But here, too, 1.6 with the openprinting filters forces everything
> through pdftopdf.  This breaks my dymo and $30 mfd (which normally =
only
> gets used for scanning and mono copying, not printing; but even =
so...).
>=20
> I haven't re-tested those two this week (penny-pinching on that front =
:)
> but given what I found with the ps spool I expect those also to be
> unchanged from before.  But perhaps lowering the pstops cost might =
help?
>=20
> MS> (On the Mac PS gets converted to PDF by Adobe's own PostScript
> MS> distiller, which Apple licenses, and then rasterized by
> MS> CoreGraphics' PDF engine...)
>=20
> How well does it handle device independent colour ps, such as:
>=20
>  http://jhcloos.com/PostScript/CIELABsweep.ps
>  http://jhcloos.com/PostScript/XYZsweep.ps
>=20
> and the rgb vs cmyk test file:
>=20
>  http://jhcloos.com/PostScript/rgbcmyk.ps
>=20
> I'd be interested to see that pdf adobe generates from those.
>=20
> GS does a poor job with the first two, when converting to pdf.
> It does well with them when rendering to raster, at least when the
> destination colour-space is known/specified.  But it ruins them when
> converting to pdf.
>=20
> JC>> Conversions can only cause damage.
>=20
> MS> Please leave the FUD at the door.
>=20
> Try running gs's ps2pdf on the CIELABsweep.ps above and then claim my
> comment were FUD. =20
>=20
> And remember that I specifically noted that I was speaking about Free
> Software.  Adobe's distiller might get it right, but that does not =
help
> the rest of us.
>=20
> MS> We need to convert the input document into something the printer =
will
> MS> accept.  If the printer accepts PostScript, we pass it through, =
adding
> MS> any printer options along the way with pstops.
>=20
> But not when the openprinting filters are used.  At least not without
> changing the conversion costs, as per above.
>=20
> MS> If the printer needs PDF or raster data, we have to interpret the
> MS> PostScript file. In the case of "device independent color", that =
will
> MS> likely get converted to the printer's native color space (or the =
color
> MS> space it or the driver advertises for that purpose anyways), =
otherwise
> MS> you'll get some *really* strange looking output.
>=20
> I don't see any effort to tell gs to use a specific colour space when
> doing ps2pdf.  And not all printer's native CMYK is known.  Eg, my
> printer does its own management (speding some toner every time it =
powers
> up) so well that it makes no sense to spend cash on a specto.  =
Instead,
> it it best to tag everything with a colour space.  ps2pdf, however,
> forces everything to sRGB by default.  And I don't see any effort to
> avoid that default.
>=20
>>> And it is not always even possible to convert jobs which use =
postscript
>>> as a language into equivilent PDF.  The formats are just too =
different.
>=20
> MS> The core difference is that PostScript is a true programming =
language
> MS> with a (relatively) well-defined graphics language, while PDF is =
just
> MS> a (relatively) well-defined graphics language.  PDF provides a
> MS> superset of the PostScript graphics language, and PDF color
> MS> management, imaging handling, and transparency support are far
> MS> superior to PostScript.
>=20
> Yes.  I left that out as part of the attempt to keep the post short.
>=20
> MS> In any case, pstops is not going anywhere and is the preferred =
filter
> MS> for PostScript printing to a PostScript printer.  If any distro =
has
> MS> changed that preference, please file a bug with the corresponding
> MS> distro.
>=20
> Gentoo does not change the default costs and gets hit by this bug when
> one installs 1.6 (which pulls in the openprinting filters packags).
>=20
> But I found today (thanks to that deb bug report I mentioned above) =
that
> up though 1.5 debian used to reduce the cost of pstops exactly to =
avoid
> my complaint, but stopped doing so and returned to the default costs
> with 1.6.
>=20
> =46rom your notes, I take it that Apple's use of CUPS does the right =
thing
> on this front.
>=20
> It isn't a distribution bug, it is an openprinting filters bug.
>=20
> Hense my note here.
>=20
> -JimC
> --=20
> James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

