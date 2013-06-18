Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1371514564;
	bh=Ia+6OPYHPJ/x2CbYLU9L8hUNRZZjN3zADQow+96uqSY=;
	h=From:To:Subject:Date:From;
	b=Bfg6bceZQZMA0rh9TOF9mvDu6fLb0YqXvVVktmdMfA8aFlAE7+eyLXVQ68hziGYnY
	/pgjbwH/Ek+gOdenuRlLGXlPPf6rzR0OTyR5jscFekGR+WW2qlLKbjVVvplFPs6IFm
	uuYZx8aDBgLaLylC+H9v2jqoWvTNo80naYjyyiMkPEw==
From: James Cloos <cloos@jhcloos.com>
Date: Mon, 17 Jun 2013 20:14:55 -0400
Message-ID: <m34ncw46lj.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Printing-architecture] On the Continued Need for PostScript
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
To: printing-architecture@lists.linux-foundation.org

I've been trying for months to write a whitepaper on this subject, but
haven't been comfortable with the tone I end up with.  This is getting
more important, though.  So I'll try to be succinct, even if that might
come off as blunt.  Apologies in advance for feather ruffling.

*Any* conversion of PostScript into PDF in the print work flow -- ie, in
the cups filters -- is broken and unacceptable.

PostScript files exist; they do not magically disappear just because PDF
is available.

PostScript printers are still more common than PDF printers.  And they
have *long* lifetimes.  (In the US, printers have a five-year depreci-
ation schedule and one can expect a much longer service life.)

When printing an existing ps file -- including when printing from
programs which can generate ps but not pdf -- the postscript MUST be
modified only by pstops when sending on to a ps printer, or MUST be
rendered directly to a raster format when printing to printers which
require raster input.

Conversions can only cause damage.

Artifex refuses to ensure that gs' pdfwriter generates device indepen-
dent colour when given a source file with device independent colour
(evidently it is a large job for which they do not have a paying
customer).  Cf the relevant WONTFIXes.

And it is not always even possible to convert jobs which use postscript
as a language into equivilent PDF.  The formats are just too different.

It is perfectly OK -- even welcome -- to prefer PDF when the original
file is not already in a page description format or language.

But the only molestation a postscript file should endure is that
specified by the ppd and user-selected options.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
