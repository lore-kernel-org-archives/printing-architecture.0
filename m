Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <1a1f8955-f2ab-b741-a6af-8950bbbe8b15@gmail.com>
Date: Mon, 27 Jul 2020 16:21:06 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <588DCEE8-BBFC-4C93-AE76-1DDE16E24CDA@msweet.org>
References: <1a1f8955-f2ab-b741-a6af-8950bbbe8b15@gmail.com>
Subject: Re: [Printing-architecture] PostScript printers without PPD files?
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

> On Jul 27, 2020, at 4:09 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> Will PostScript printers always come with PPD files? Or will there be =
in the future non-IPP-driverless PostScript printers without PPD files? =
Will there be PostScript printers in the future at all?

PostScript is dead, long live PDF...

Seriously, PostScript (and PCL) are provided for legacy enterprise =
application support but PDF and Apple/PWG Raster/PCLm are the =
formats-de-jour of the current network printing standards, even for =
Microsoft now that they have gone whole-hog for Mopria-based "universal" =
printing.

> Would it make sense for Printer Applications to have a =
Something-to-PostScript filter which can be optionally built without PPD =
support at all? This filter being used by PostScript Printer =
manufacturers for their printers in the future?

I think it makes sense to have a generic Level 2 PostScript printer PPD =
(as macOS has shipped for almost 20 years and as CUPS has had for almost =
as long) that covers the standard Letter/Legal/Tabloid, A4/A3, and =
Env10/EnvDL office printer sizes.  You could also have a generic Level 3 =
PPD (not that the current filters do all that much different for Level =
3), and it is possible to query a PS printer for the list of supported =
paper sizes, color support, duplexer, etc. so that a PPD file can be =
generated in the absence of a product-specific PPD.

________________________
Michael Sweet



