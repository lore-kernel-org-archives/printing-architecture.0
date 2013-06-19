Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1371682278;
	bh=nJ9HWRi7ku7pR0O0saCUzJ9FOpnb/J2tpZa74mFVPjM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=ol/hd0g9R/1RSgDOc6F7QuBNmT1KcvlEklh7UAdDVVFL77yovzxq0iFA37wCuOlx6
	M727jVs+54wTs5qKBMfGm7bFAir0s/AT1KGXvONlmZKcURMSWvX9Ct1tnnVWfFtAqa
	7/IIdCL3+aSzDkIfV4jKuxZbHVQE5TIKWVPydmJ1e0A==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com> (Michael Sweet's
	message of "Tue, 18 Jun 2013 07:49:48 -0400")
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
	<6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com>
Date: Wed, 19 Jun 2013 18:49:28 -0400
Message-ID: <m3txktzpf2.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
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
To: Michael Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org

>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

MS> For the "printing PS to a PS printer case", the existing CUPS pstops
MS> filter should be the clear winner in cupsd's eyes - both the relative
MS> cost and number of filters are lower than a pstopdf | pdftopdf |
MS> pdftops route, and pstops isn't going anywhere.

It, however, is not when one has the openprinting filters installed with
cups 1.6.  Then the *topdf filters and pdftopdf win out over everything else.

For a test, I added a jetdirect service to my xinetd(8) and redirected
jobs for a ps printer there (by removing the printer from the network
and added its ip to the local box).  The serice calls a script with
cat(1)s whatever is sent to port 9100 to a file per accept(2).

Printing a file which starts out:

,----[ head of: April-2007-July-To-Sam-Soap.ps ]
| %!PS-Adobe-2.0
| %%Creator: dvips(k) 5.95b Copyright 2005 Radical Eye Software
| %%Pages: 1
| %%PageOrder: Ascend
| %%BoundingBox: 0 0 612 792
| %%DocumentFonts: LucidaBright LucidaBright-Italic
| %%DocumentPaperSizes: Letter
| %%EndComments
| %DVIPSWebPage: (www.radicaleye.com)
| %DVIPSCommandLine: dvips -f
| %DVIPSParameters: dpi=1200
| %DVIPSSource:  TeX output 2007.07.30:2101
`----

I end up with one which starts:

,----[ JD.6970 ]
| %!PS-Adobe-3.0
| %Produced by poppler pdftops version: 0.22.5 (http://poppler.freedesktop.org)
| %%Creator: dvips(k) 5.95b Copyright 2005 Radical Eye Software
| %%LanguageLevel: 2
`----

(It even gets the LanguageLevel wrong.  The pdftops filter in cups-1.5
knows to pass -level3 to poppler’s pdftops(1) for this printer, but the
one in cups-filters refuses to.  Hmmph.)

As you can see, the filter must have been:

  pstopdf | pdftopdf | pdftops | pstops

and not just pstops.

Bebian bug#712237 notes that previous versions on deb had set the pstops
cost in mime.conv to 65 rather than 66.  Till’s reply notes that the 65
was to avoid just this, but caused 1.6 to fail in «make test».

Replicating that change (to 65) indeed does fix that issue here.

MS> As for rasterization, generally people are using Ghostscript to
MS> generate their raster data which supports both PDF and PostScript
MS> input directly - no intermediate PDF there.

But here, too, 1.6 with the openprinting filters forces everything
through pdftopdf.  This breaks my dymo and $30 mfd (which normally only
gets used for scanning and mono copying, not printing; but even so...).

I haven't re-tested those two this week (penny-pinching on that front :)
but given what I found with the ps spool I expect those also to be
unchanged from before.  But perhaps lowering the pstops cost might help?

MS> (On the Mac PS gets converted to PDF by Adobe's own PostScript
MS> distiller, which Apple licenses, and then rasterized by
MS> CoreGraphics' PDF engine...)

How well does it handle device independent colour ps, such as:

  http://jhcloos.com/PostScript/CIELABsweep.ps
  http://jhcloos.com/PostScript/XYZsweep.ps

and the rgb vs cmyk test file:

  http://jhcloos.com/PostScript/rgbcmyk.ps

I'd be interested to see that pdf adobe generates from those.

GS does a poor job with the first two, when converting to pdf.
It does well with them when rendering to raster, at least when the
destination colour-space is known/specified.  But it ruins them when
converting to pdf.

JC>> Conversions can only cause damage.

MS> Please leave the FUD at the door.

Try running gs's ps2pdf on the CIELABsweep.ps above and then claim my
comment were FUD.  

And remember that I specifically noted that I was speaking about Free
Software.  Adobe's distiller might get it right, but that does not help
the rest of us.

MS> We need to convert the input document into something the printer will
MS> accept.  If the printer accepts PostScript, we pass it through, adding
MS> any printer options along the way with pstops.

But not when the openprinting filters are used.  At least not without
changing the conversion costs, as per above.

MS> If the printer needs PDF or raster data, we have to interpret the
MS> PostScript file. In the case of "device independent color", that will
MS> likely get converted to the printer's native color space (or the color
MS> space it or the driver advertises for that purpose anyways), otherwise
MS> you'll get some *really* strange looking output.

I don't see any effort to tell gs to use a specific colour space when
doing ps2pdf.  And not all printer's native CMYK is known.  Eg, my
printer does its own management (speding some toner every time it powers
up) so well that it makes no sense to spend cash on a specto.  Instead,
it it best to tag everything with a colour space.  ps2pdf, however,
forces everything to sRGB by default.  And I don't see any effort to
avoid that default.

>> And it is not always even possible to convert jobs which use postscript
>> as a language into equivilent PDF.  The formats are just too different.

MS> The core difference is that PostScript is a true programming language
MS> with a (relatively) well-defined graphics language, while PDF is just
MS> a (relatively) well-defined graphics language.  PDF provides a
MS> superset of the PostScript graphics language, and PDF color
MS> management, imaging handling, and transparency support are far
MS> superior to PostScript.

Yes.  I left that out as part of the attempt to keep the post short.

MS> In any case, pstops is not going anywhere and is the preferred filter
MS> for PostScript printing to a PostScript printer.  If any distro has
MS> changed that preference, please file a bug with the corresponding
MS> distro.

Gentoo does not change the default costs and gets hit by this bug when
one installs 1.6 (which pulls in the openprinting filters packags).

But I found today (thanks to that deb bug report I mentioned above) that
up though 1.5 debian used to reduce the cost of pstops exactly to avoid
my complaint, but stopped doing so and returned to the default costs
with 1.6.

From your notes, I take it that Apple's use of CUPS does the right thing
on this front.

It isn't a distribution bug, it is an openprinting filters bug.

Hense my note here.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
