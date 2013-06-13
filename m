Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=od+d6ETX7riGDXHzoCpDKw1Ma4kZHCrn+gX8+8662ao=;
	b=EY6fMz5Zd+L0xhV4hTbvzIeJQED4QFk1CuF0KPoxGyGLolkO9BGv8Iikyplu/ubw6i
	i94L3ZMPr1IZDGV8R/eGako8i8T9UhGnHuL6Jnb1JWHtw6XwjHlI0eY7TPkqQy4T7B96
	1PhmVkLmyb2yL9HD6JAMF38xgVDg7zzESy/9bHMJFzaqFhpY+5qydK04npOqIv7BiBFI
	UnJK23gSyVuLDkV1K9NBMHwb0bIgXGWI5C/AfPj/GroWFluFbKnufsvCDDqrgxuwwxkQ
	Znr9KfTA3dqUf0Sh5KvEtPGgRBTe7p3WgwxmIFK5aRH1KbLhCl99PUodEhvLhZ4d/fVM
	DReg==
Message-ID: <51BA5B58.3080208@gmail.com>
Date: Fri, 14 Jun 2013 01:52:56 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Concept for PPD-less CUPS-spooled printing
 on Bonjour-discovered network printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, Michael Sweet <msweet@apple.com>

Hi,

after some discussion in the "Some suggestions for the DNS-SD (Bonjour)
printer support in the dialog" thread I have now found a concept for
printing on Bonjour-discovered IPP network printers.

Requirements are:

 - Printer should be listed in the print dialog
 - Printer in power-save mode should not be woken up by solely
    o Entering the (W)LAN with a running client device
    o Booting a client device
    o Logging in on a client device
    o Opening the print dialog from any application
 - Printer capabilities, especially paper sizes should be shown at
   least when the user selects the printer in the print dialog
 - Jobs should be sent with the printer capabilities taken into account
   and accompanied by user-selected settings
 - Jobs should be spooled locally with the standard methods of CUPS, so
   that jobs, also of different users, get correctly queued, and
   already existing job managers can be used to handle (kill, move,
   ...) the jobs.
 - CUPS 1.6.x and newer should be supported without patching CUPS

I have found a concept which can be implemented in cups-filters and the
print dialogs and can be applied immediately in the next release of all
current Linux distributions (not needing to wait for feature additions
to CUPS):

Requirement is that all jobs are sent in PDF and only IPP printers which
do Bonjour broadcasting and understand at least one of the common
standard languages PDF, PostScript, PWG Raster (= IPP Everywhere), PCL
XL, PCL 5c/e.

Central part is the pdftoippprinter wrappper filter. This filter has the
following properties:

 - Input format is only PDF
 - If the pdftopdf filter is installed, pdftoippprinter passes the
   input data through pdftopdf first, passing on the options of the 5th
   command line argument, this way number-up, page-ranges, ... are
   supported, but also low-footprint configurations without pdftopdf
   are possible.
 - Following the option "output-format" the following filters to
   generate the output format are selected:
    o output-format=application/pdf: No additional filter
    o output-format=application/postscript: pdftops
    o output-format=image/pwg-raster: (pdf/gs)toraster + rastertopwg
    o output-format=application/vnd.cups-pclxl: gstopxl
    o output-format=application/vnd.cups-pcl:
      (pdf/gs)toraster + rastertopclx/hpcups
  Presence of the filters for the selected format is checked and path
  only executed if filters are present.
- Other standard-IPP/PWG options are accepted to control common
  settings like paper size, tray, resolution, quality, color/gray, ...

For each discovered IPP printer (which is not a non-raw remote CUPS
queue) cups-browsed auto-creates a print queue with pdftoippprinter as
System V interface script (the command line syntax of CUPS filters and
System V interface scripts is the same). This way we can make a CUPS
queue with filtering but without need of a PPD, as a PPD requires the
definition of at least one paper size and as we cannot IPP-poll the
printer (waking it up) we do not know its paper sizes. The
"output-format" option can already be set on queue creation as the
printer's input formats are listed in the text record. so queue creation
will be done with the equivalent of

lpadmin -p ... -E -v ... -i /usr/lib/cups/filter/pdftoippprinter
  -o output-format-default=image/pwg-raster

On most printers A4/Letter printing would even already work on such a
queue by sending a PDF file without any option settings.

The print dialog lists this queue (and it would also discover this
printer via Bonjour) and the user selects it. The dialog queries the
printer's capabilities via IPP from the printer (not from the local
CUPS) at the first of the following events:

 - The dialog wants to display a preview
 - The user makes the options screen getting displayed
 - The user clicks "Print".

If none of the events occurs, for example if the user clicks "Cancel" or
selects another printer, the printer does not get queried.

If the user clicks "Print", the user-selected settings (or the defaults
if the user did not change anything) are sent as IPP attributes
(options) in standard IPP/PWG format along with the PDF job to the CUPS
queue. The pdftoippprinter filter runs the filter chain appropriate to
the printer's input format and applies the options (getting them through
the 5th command line argument).

Notes for Linux distros:

- Security frameworks like AppArmor or SELinux can block System V
  interface scripts as this concept was never used in distros.
  Execution of files in /etc/cups/interfaces/ must get allowed (and
  this directory must be created). For quick tests in Debian or Ubuntu
  run "sudo aa-complain cupsd" to deactivate AppArmor for CUPS.
- Creating a queue with an interface script copies the script into
  a config file (all under /etc/ is considered config file) and so an
  update of the cups-filters package improving or fixing pdftoippprinter
  would make existing queues missing the fix. Here I could create a
  trivial wrapper which does nothing else than calling the real
  pdftoippprinter filter and create all queues with this wrapper.

WDYT?

   Till
