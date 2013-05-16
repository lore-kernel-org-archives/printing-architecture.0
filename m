Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:content-type:content-transfer-encoding;
	bh=7JuefEby0yHg8XOkAYjmISJehKT5+IAqmr7hhijJ2mw=;
	b=ooBQkF7XtOHVdVewciRZfNDN09lbfEF+fgjIebwOb/mxCN6FZtkFJ4iPzd5OGc27nB
	IfCc+XeabHvJL8DFG1145fKtPPxMbyJNGOodJyvcJI0hXgZY6FvwAbeXbQ1QoWEdj419
	T4p5Hv0qwgx9lqSPZlyWujcHNZ5hfCLSh30V/er068lJ1mm06UoRSTTGTFBooOyartS5
	/MdTWYGAnvmt3G87p3b0VKbogk1CCBGlqvOIuayCcfJHMUru27lrYECyebms6UXuHghT
	8eF7lRt0CNeP0jpBEOvAjeHRNyhXiQbBXsi2VPdHdL4tcDx9ZIEZNJdl+AfBz1ecKrrK
	/8DQ==
Message-ID: <5194EC9B.7030904@gmail.com>
Date: Thu, 16 May 2013 16:26:35 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Integration of MuPDF in the CUPS printing
	workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robin Watts <robin.watts@artifex.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, "Marcos H. Woehrmann" <marcos.woehrmann@artifex.com>, Michael Vrhel <michael.vrhel@artifex.com>

Hi,

as talked about yesterday on the OpenPrinting Summit in the
Ghostscript/MuPDF session, I am sending here the information about what
has to be done to make the cups-filters package supporting MuPDF as PDF
renderer (and optionally as PDF manipulator).

As I have posted this work as a project idea for the GHoogle Summer of
Code (see
http://www.linuxfoundation.org/collaborate/workgroups/gsoc/google-summer-code-2013-openprinting-projects)
I cite my posting below. It contains a list of the filters to be changed
in the last paragraph.

   Till

----------

The cups-filters project at OpenPrinting (included in all Linux
distributions using CUPS 1.6.x or newer) provides the filters needed to
convert the print job output of desktop applications (usually PDF) into
the printer's native language or into the universal CUPS/PWG-Raster
format as input for a separate printer driver. It also provides the
pdftopdf filter to apply page management (N pages per sheet, selected
pages, even/odd pages for manual duplex, mirror for iron-on sheets, ...)
to the PDF data stream.

A central part to make this work is a PDF renderer and many of the
filters are simply wrappers about a PDF renderer. Currently,
cups-filters supports Ghostscript and Poppler as PDF renderer. With this
project we want to add support for MuPDF as it is a more lightweight
renderer made by Artifex, the printing specialists who already made
Ghostscript. This is especially interesting for mobile devices with
limited meomory, mass storage, and CPU resources.

The student will have to modify all filters which need a PDF renderer
(pdftops, pdftoraster, pdftoijs, pdftoopvp, perhaps also pdftopdf) to
add support for MuPDF without dropping the existing support for
Ghostscript and Poppler. Switching between the renderers should be able
at run time, to make binary packages of cups-filters suitable for
systems of different form factors.
