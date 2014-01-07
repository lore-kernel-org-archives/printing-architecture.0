Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=ygzJQMlrBD9KeA2shPlNtc9GJNUFDnr3ce7Lc7mu5O4=;
	b=CPON4X6qzMUJZl2vTqtFKf4ov6/aB7DAvFMO8QauJXRo+v3lfjYdmTLEp2S64rCGUO
	ONSRoBhYqr+z3x5TVgpXcEqZt2TZ+soRdWY2g8ngvMFdmjV6T60l9+nl4K9y5suyAs/B
	K3dBYJT3mv/taXzB1X+bvvTx+r0IPgvZxOyFzaGevr7fDkws/FaOdwE1xohvex2t3kXl
	dw/6g1KJHItCcghL8qmSAlQJ1CigR0DjfmNkzJTLnlSLPdna8R6o+z83SSaIStBHXTOf
	6GUwUl5AxbaZ/bmOU2KFRcW/b1veic8QBIk07zdGS91+IC36duerd95jjbwjB6njALq/
	bsXQ==
Message-ID: <52CBEDCF.5070205@gmail.com>
Date: Tue, 07 Jan 2014 13:06:39 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
In-Reply-To: <5270DD07.4080601@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, Michael Sweet <msweet@apple.com>, John Layt <john@layt.net>

Some days ago, I have released cups-filters 1.0.43. It improves a lot on
PPD-less printing:

- PPD-less PCL 5c/e printing with rastertopclx, in grayscale and color
- PPD-less PostScript printing with pdftops, duplex, resolution, input
  tray, color mode, and make/model (for quirk rules) can now be
  supplied by the command line
- pdftoippprinter switches to Poppler-based pdftoraster if Ghostscript
  is not present, eliminating need of Ghostscript for PPD-less printing
- gstoraster and pdftoraster are capable to output PWG Raster
- Support unprintable margins supplying them on the command line via
  "media-left-margin", "media-right-margin", "media-bottom-margin", and
  "media-top-margin" (in 1/100th of a mm).
- Handle options duplex/sides, fit-to-page/fitplot, orientation-
  requested/landscape correctly when printing PPD-less
- A lot of bug fixes.

I also had to fix a bug in Poppler, see

https://bugs.freedesktop.org/show_bug.cgi?id=72312

This should allow PPD-less printing on most supported printers now. Bug
reports and patches are welcome.

   Till

On 10/30/2013 11:18 AM, Till Kamppeter wrote:
> Hi,
> 
> I have now done a first implementation of my concept of PPD-less
> printing on IPP network printers (see below). It is implemented in the
> cups-filters 1.0.41 package which I have released today.
[...]

