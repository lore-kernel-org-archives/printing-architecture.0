Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <m34ncw46lj.fsf@carbon.jhcloos.org>
Date: Tue, 18 Jun 2013 07:49:48 -0400
Message-id: <6E56AA29-A827-4F39-BD22-57B48270ACA3@apple.com>
References: <m34ncw46lj.fsf@carbon.jhcloos.org>
Subject: Re: [Printing-architecture] On the Continued Need for
	PostScript	Workflows
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

On 2013-06-17, at 8:14 PM, James Cloos <cloos@jhcloos.com> wrote:
> ...
> PostScript files exist; they do not magically disappear just because PDF
> is available.

Agreed, however PostScript is increasingly in the minority.

> PostScript printers are still more common than PDF printers.

Most PostScript printers also support PDF these days.  In fact, this year saw the introduction of some printers that support PDF but *not* PostScript.  And of course MOST printers sold in the last 20 years have had neither PostScript nor PDF support...

> ...
> When printing an existing ps file -- including when printing from
> programs which can generate ps but not pdf -- the postscript MUST be
> modified only by pstops when sending on to a ps printer, or MUST be
> rendered directly to a raster format when printing to printers which
> require raster input.

For the "printing PS to a PS printer case", the existing CUPS pstops filter should be the clear winner in cupsd's eyes - both the relative cost and number of filters are lower than a pstopdf | pdftopdf | pdftops route, and pstops isn't going anywhere.

As for rasterization, generally people are using Ghostscript to generate their raster data which supports both PDF and PostScript input directly - no intermediate PDF there. (On the Mac PS gets converted to PDF by Adobe's own PostScript distiller, which Apple licenses, and then rasterized by CoreGraphics' PDF engine...)

> Conversions can only cause damage.

Please leave the FUD at the door.

> Artifex refuses to ensure that gs' pdfwriter generates device indepen-
> dent colour when given a source file with device independent colour
> (evidently it is a large job for which they do not have a paying
> customer).  Cf the relevant WONTFIXes.

We need to convert the input document into something the printer will accept.  If the printer accepts PostScript, we pass it through, adding any printer options along the way with pstops.

If the printer needs PDF or raster data, we have to interpret the PostScript file. In the case of "device independent color", that will likely get converted to the printer's native color space (or the color space it or the driver advertises for that purpose anyways), otherwise you'll get some *really* strange looking output.

> And it is not always even possible to convert jobs which use postscript
> as a language into equivilent PDF.  The formats are just too different.

The core difference is that PostScript is a true programming language with a (relatively) well-defined graphics language, while PDF is just a (relatively) well-defined graphics language.  PDF provides a superset of the PostScript graphics language, and PDF color management, imaging handling, and transparency support are far superior to PostScript.

In any case, pstops is not going anywhere and is the preferred filter for PostScript printing to a PostScript printer.  If any distro has changed that preference, please file a bug with the corresponding distro.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

