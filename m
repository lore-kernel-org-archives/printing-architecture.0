Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1387214818.12274.33.camel@rubik>
Date: Mon, 16 Dec 2013 12:54:44 -0500
Message-id: <2F134E47-1770-43E0-9DC9-61D1E3066A08@apple.com>
References: <1387213857.12274.26.camel@rubik> <52AF35A2.6060804@gmail.com>
	<1387214818.12274.33.camel@rubik>
Subject: Re: [Printing-architecture] Useful utility: cups-filter-check
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Tim,

On Dec 16, 2013, at 12:26 PM, Tim Waugh <twaugh@redhat.com> wrote:
> ...
> Incidentally, while playing around with it I noticed the only route from
> application/vnd.adobe-reader-postscript -> application/vnd.cups-pdf is
> via image/tiff. Is that intentional? I expect any printer capable of
> handling PDF can also handle PostScript, and that path works fine at
> less cost.

I'm guessing the reason for this is Adobe's stupid enforcement of PDF form content protection - some forms can't be processed by Ghostscript or Adobe's own PS distiller to generate PDF because of restrictions that are placed in the PostScript code.  But it is A-OK to RIP the content for printing/export to an image... :/

But yes, if the printer reports support for PostScript then application/vnd.adobe-reader-postscript should go to application/vnd.cups-postscript without a side-trip through TIFF and PDF...

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

