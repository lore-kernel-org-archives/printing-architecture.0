Return-Path: <samuel.thibault@ens-lyon.org>
Date: Mon, 21 Dec 2015 15:25:36 +0100
From: Samuel Thibault <sthibault@debian.org>
Message-ID: <20151221142536.GG12316@var>
References: <566F564D.9040000@gmail.com> <20151215000648.GK2967@var.home>
	<566F66B8.4060106@gmail.com> <20151220235820.GU4287@var.home>
	<5677F4DF.6080601@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5677F4DF.6080601@gmail.com>
Subject: Re: [Printing-architecture] documents and braille [Was:
	cups-filters 1.4.0 released!]
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
Cc: printing-architecture@lists.linux-foundation.org, Adam Chester <adam.chester@pentest.co.uk>, Debian-printing@lists.debian.org, Yann Soubeyrand <yann-externe.soubeyrand@edf.fr>

Hello,

Till Kamppeter, on Mon 21 Dec 2015 10:47:27 -0200, wrote:
> First, I would not call the two modes "ink" and "braille", but something
> like "Original layout" and "Braille-optimized layout".

Ok.

> Second, LibreOffice does not send .odt files when clicking "Print" in the
> print dialog. By default it sends PDF, and in the settings you can switch it
> to PostScript, but there is always one of these two formats selected for all
> printers.

I know, that's precisely what I'd like to see optionally changed.

> At least the PDF sent by LibreOffice is not a bitmap of each page, but it
> contains the (searchable) text and instructions for formatting and layout
> (high-level/vector graphics), similar to what the .odt file contains. So it
> should be possible to extract the text and formatting and re-arrange it for
> the Braille output (as e-book readers can do it with PDFs or the "reflow"
> mode of the Adobe Reader on Android).

I know, but that's extremely far from optimal: the structure is nicely
encoded inthe odt file, while finding it out from the pdf file is at
*best* a pain, and will not allow proper reformatting such as putting
footnotes at the bottom of pages, renumbering page references, etc.

> I also doubt whether the LibreOffice developers would implement a feature
> request of sending print data in .odt format,

I don't see why: this doesn't seem like a hard feature to implement.

Another way would have been to emit an epub or a daisy document but
that's way more involved, I wouldn't try to ask for this.

> but I would rather believe in that they would implement a
> feature request in giving optimizing options for the PDF of the
> print output, for example for e-book reader/braille embosser
> text-reflow-friendliness.

This feature request is actually already pending, since this is
equivalent to the general accessibility of PDF files. This is however
still quite far from optimal, I would really not bet on this on the long
run.

Samuel
