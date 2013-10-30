Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=IJuJV/7knKc/c4okitNc0HsxpV1OjYTKl/P+iTlL20g=;
	b=AdB16lY0+PnXt5o5ZhbE/1F76gUZfgBDbCFKR9zxP45I7IVZIuzWE3I9YYWNjXthqn
	gpneeUPowYHpk33n1HOZxtkFDB3s9j9Zv7yzoqRKxSO8GrHYrB0T0aKwA8f3b1okHgVe
	DL1jRgIIch76ghS1CL8xaHUCRkmOKMUpagtTmTUIrSEo/XO4g9YnudghwmO8b7PDBrr4
	nePC3XLeX/pABLxljvOLYSImFHwPBRTiQwt0aR7H7qeDzwPNAvQTj0cxB6sLvxjucQfD
	SUQbK/IDvhTuL2jcfH9JwMT4FLN0IQQFtHel7BWHXaI95p3MhoNhSYVajyEKa9kB0Fv2
	Cw+w==
Message-ID: <5270DD07.4080601@gmail.com>
Date: Wed, 30 Oct 2013 11:18:47 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51BA5B58.3080208@gmail.com>
In-Reply-To: <51BA5B58.3080208@gmail.com>
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

Hi,

I have now done a first implementation of my concept of PPD-less
printing on IPP network printers (see below). It is implemented in the
cups-filters 1.0.41 package which I have released today.

This works as described below: cups-browsed discovers appropriate IPP
network printers via Bonjour and creates queues for them using the new
pdftoippprinter filter called by a simple System V interface script
(which passes through all command line options and adds an output-format
option to fit to the printer's accepted data formats (supported are PWG
Raster, PDF, PostScript, PCL-XL, and PCL 5c/e). The discovery of the
printers and creation of the queues does not actively poll info from the
printers, avoiding that they are woken up from power-save mode.

Printing a PDF file (other formats not supported) to such queues with a
simple "lpr" command with no options usually works if the document has a
standard page size (A4 or Letter, what is loaded into the printer), but
a GUI should give more control and make sure that the print data fits
well to the printer.

What is required from a GUI is that as soon as the user selects a
printer for printing (or with the default printer when just opening the
dialog) is that if the printer is such PPD-less queue, to poll the
printer via IPP (code example below) to get its capabilities, show the
user-settable options on the dialog's option panel (like PPD options)
and send the job accompanied with the option settings, including the
ones which the user has not changed and the ones which have only one
choice (and so are not changeable). The job itself should be in PDF
format and (if the printer supplies appropriate info) in a page size
supported by the printer.

Marek, John, I want to ask you whether you could download and install
cups-filters 1.0.41 and add support for these auto-created queues to
your print dialogs (GTK, Qt). This will allow easy (mobile) printing
without model-specific driver collections and without printer setup tool.

Note that the PPD-less printing is not yet perfect and needs some
additional polishing in the filters. Probably PWG Raster works best of
all formats.

   Till

----------

Code snippets for IPP polling of printer capabilities:

Input:  "uri" is the URI of the IPP printer to poll.

debug_printf() is a wrapper around printf(), printing only if the
program is called with the "--debug" option, you can simply replace it
by the normal printf() for testing.

The code needs libcups.

  #include <cups/cups.h>

  int i, uri_status, port, status;
  http_t *http;
  char scheme[10], userpass[1024], host_name[1024], resource[1024];
  ipp_t *request, *response;
  ipp_attribute_t *attr;
  static const char * const requested_attrs[] =
    {	/* Requested attributes for getting IPP network printer
capabilities */
	/* Explicit attribute listings for the case that "all" does not cover
	   everything */
      "job-template",
      "printer-description",
      /*"document-format-supported",
      "color-supported",
      "pages-per-minute",
      "pages-per-minute-color",
      "media-supported",
      "media-ready",
      "media-default",
      "media-type-supported",
      "media-source-supported",*/
      "media-col-database",
      /*"sides-supported",
      "sides-default",
      "output-bin-supported",
      "output-bin-default",
      "finishings-supported",
      "finishings-default",
      "print-color-mode-supported",
      "print-color-mode-default",
      "output-mode-supported",
      "output-mode-default",
      "print-quality-supported",
      "print-quality-default",
      "printer-resolution-supported",
      "printer-resolution-default",
      "copies-supported",
      "copies-default",*/
      /* Catch things which were forgotten above or newly introduced */
      "all"
    };
  static int versions_to_try[] =
    {
      20,
      11
    };

    uri_status = httpSeparateURI(HTTP_URI_CODING_ALL, uri,
				 scheme, sizeof(scheme),
				 userpass, sizeof(userpass),
				 host_name, sizeof(host_name),
				 &(port),
				 resource, sizeof(resource));
    if (uri_status != HTTP_URI_OK)
      goto fail;
    if ((http = httpConnect(host_name, port)) ==
	NULL) {
      debug_printf("cups-browsed: Cannot connect to remote printer %s
(%s:%d), ignoring this printer.\n",
		   p->uri, host_name, port);
      goto fail;
    }
    for (i = 0;
	 i < sizeof(versions_to_try) / sizeof(versions_to_try[0]);
	 i ++) {
      /* Create IPP request */
      request = ippNewRequest(IPP_GET_PRINTER_ATTRIBUTES);
      /* Set IPP version */
      ippSetVersion(request, versions_to_try[i] / 10, versions_to_try[i]
% 10);
      /* Printer URI */
      ippAddString(request, IPP_TAG_OPERATION, IPP_TAG_URI,
		   "printer-uri", NULL, p->uri);
      /* Requested IPP attributes */
      ippAddStrings(request, IPP_TAG_OPERATION, IPP_TAG_KEYWORD,
		    "requested-attributes",
		    sizeof(requested_attrs) / sizeof(requested_attrs[0]),
		    NULL, requested_attrs);
      /* Do it */
      response = cupsDoRequest(http, request, resource);
      if (response == NULL) {
	debug_printf("cups-browsed: No answer to Get-Printer-Attributes IPP
request from remote printer %s, ignoring this printer (IPP Error: %s
%s).\n",
		     p->uri, ippErrorString(cupsLastError()),
		     cupsLastErrorString());
	httpClose(http);
	goto fail;
      }
      status = cupsLastError();
      debug_printf("cups-browsed: Remote printer %s, IPP %3.1f: %s (%s)\n",
		   p->uri, versions_to_try[i] / 10.0,
		   ippErrorString(cupsLastError()),
		   cupsLastErrorString());
      /* If succeeded, go on, on error try a lower IPP version */
      if (status < 0x0400)
	break;
    }
    if (i >= sizeof(versions_to_try) / sizeof(versions_to_try[0])) {
      /* All IPP versions failed */
      debug_printf("cups-browsed: Remote printer %s: All IPP versions
failed\n",
		   p->uri);
      goto fail;
    }
    /* Read out the printer's capabilities */
    attr = ippFirstAttribute(response);
    while (attr) {
      debug_printf("Attr: %s\n",
		   ippGetName(attr));
      for (i = 0; i < ippGetCount(attr); i ++)
	debug_printf("Keyword: %s\n",
		     ippGetString(attr, i, NULL));
      attr = ippNextAttribute(response);
    }
    attr = ippFindAttribute(response,
			    "document-format-supported",
			    IPP_TAG_ZERO);
    if (attr)
      for (i = 0; i < ippGetCount(attr); i ++)
	debug_printf("Format: %s\n",
		     ippGetString(attr, i, NULL));
    else
      debug_printf("No formats\n");

    /* Clean up */
    ippDelete(response);
    httpClose(http);

----------

On 06/14/2013 01:52 AM, Till Kamppeter wrote:
> Hi,
> 
> after some discussion in the "Some suggestions for the DNS-SD (Bonjour)
> printer support in the dialog" thread I have now found a concept for
> printing on Bonjour-discovered IPP network printers.
> 
> Requirements are:
> 
>  - Printer should be listed in the print dialog
>  - Printer in power-save mode should not be woken up by solely
>     o Entering the (W)LAN with a running client device
>     o Booting a client device
>     o Logging in on a client device
>     o Opening the print dialog from any application
>  - Printer capabilities, especially paper sizes should be shown at
>    least when the user selects the printer in the print dialog
>  - Jobs should be sent with the printer capabilities taken into account
>    and accompanied by user-selected settings
>  - Jobs should be spooled locally with the standard methods of CUPS, so
>    that jobs, also of different users, get correctly queued, and
>    already existing job managers can be used to handle (kill, move,
>    ...) the jobs.
>  - CUPS 1.6.x and newer should be supported without patching CUPS
> 
> I have found a concept which can be implemented in cups-filters and the
> print dialogs and can be applied immediately in the next release of all
> current Linux distributions (not needing to wait for feature additions
> to CUPS):
> 
> Requirement is that all jobs are sent in PDF and only IPP printers which
> do Bonjour broadcasting and understand at least one of the common
> standard languages PDF, PostScript, PWG Raster (= IPP Everywhere), PCL
> XL, PCL 5c/e.
> 
> Central part is the pdftoippprinter wrappper filter. This filter has the
> following properties:
> 
>  - Input format is only PDF
>  - If the pdftopdf filter is installed, pdftoippprinter passes the
>    input data through pdftopdf first, passing on the options of the 5th
>    command line argument, this way number-up, page-ranges, ... are
>    supported, but also low-footprint configurations without pdftopdf
>    are possible.
>  - Following the option "output-format" the following filters to
>    generate the output format are selected:
>     o output-format=application/pdf: No additional filter
>     o output-format=application/postscript: pdftops
>     o output-format=image/pwg-raster: (pdf/gs)toraster + rastertopwg
>     o output-format=application/vnd.cups-pclxl: gstopxl
>     o output-format=application/vnd.cups-pcl:
>       (pdf/gs)toraster + rastertopclx/hpcups
>   Presence of the filters for the selected format is checked and path
>   only executed if filters are present.
> - Other standard-IPP/PWG options are accepted to control common
>   settings like paper size, tray, resolution, quality, color/gray, ...
> 
> For each discovered IPP printer (which is not a non-raw remote CUPS
> queue) cups-browsed auto-creates a print queue with pdftoippprinter as
> System V interface script (the command line syntax of CUPS filters and
> System V interface scripts is the same). This way we can make a CUPS
> queue with filtering but without need of a PPD, as a PPD requires the
> definition of at least one paper size and as we cannot IPP-poll the
> printer (waking it up) we do not know its paper sizes. The
> "output-format" option can already be set on queue creation as the
> printer's input formats are listed in the text record. so queue creation
> will be done with the equivalent of
> 
> lpadmin -p ... -E -v ... -i /usr/lib/cups/filter/pdftoippprinter
>   -o output-format-default=image/pwg-raster
> 
> On most printers A4/Letter printing would even already work on such a
> queue by sending a PDF file without any option settings.
> 
> The print dialog lists this queue (and it would also discover this
> printer via Bonjour) and the user selects it. The dialog queries the
> printer's capabilities via IPP from the printer (not from the local
> CUPS) at the first of the following events:
> 
>  - The dialog wants to display a preview
>  - The user makes the options screen getting displayed
>  - The user clicks "Print".
> 
> If none of the events occurs, for example if the user clicks "Cancel" or
> selects another printer, the printer does not get queried.
> 
> If the user clicks "Print", the user-selected settings (or the defaults
> if the user did not change anything) are sent as IPP attributes
> (options) in standard IPP/PWG format along with the PDF job to the CUPS
> queue. The pdftoippprinter filter runs the filter chain appropriate to
> the printer's input format and applies the options (getting them through
> the 5th command line argument).
> 
> Notes for Linux distros:
> 
> - Security frameworks like AppArmor or SELinux can block System V
>   interface scripts as this concept was never used in distros.
>   Execution of files in /etc/cups/interfaces/ must get allowed (and
>   this directory must be created). For quick tests in Debian or Ubuntu
>   run "sudo aa-complain cupsd" to deactivate AppArmor for CUPS.
> - Creating a queue with an interface script copies the script into
>   a config file (all under /etc/ is considered config file) and so an
>   update of the cups-filters package improving or fixing pdftoippprinter
>   would make existing queues missing the fix. Here I could create a
>   trivial wrapper which does nothing else than calling the real
>   pdftoippprinter filter and create all queues with this wrapper.
> 
> WDYT?
> 
>    Till
> 

