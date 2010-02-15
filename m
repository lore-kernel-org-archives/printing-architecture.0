Message-ID: <4B79A0D9.60408@gmail.com>
Date: Mon, 15 Feb 2010 20:30:33 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] ANNOUNCE: Foomatic 4.0.4 released!
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-foomatic@lists.linux-foundation.org" <printing-foomatic@lists.linux-foundation.org>, Open Printing <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>

Foomatic 4.0.4 is released and now available for download [1].

This release fixes several bugs and drops the need of libgs (shared 
library of Ghostscript).

Most importantly, we have removed the linking of foomatic-rip against 
the libgs library. It really caused more problems than it had benefits. 
First, this required users and packagers of Linux distributions to 
compile Ghostscript with the shared library. This is not very easy and 
can have negative impact on other software which uses Ghostscript. It 
also requires the license of foomatic-rip being compatible with the 
license of libgs which would require us to change the license of 
foomatic-filters when the license of Ghostscript gets changed. In 
addition, there were problems with building and packaging foomatic-rip 
for Mac OS X. These problems should be solved with this release. The 
libgs has no real advantages in its programming interface (API) as the 
command line call of Ghostscript has, so we have switched to calling 
Ghostscript via command line now.

We also improved the documentation and the comments in the source files 
to more clearly show that foomatic-filters is published under the GPL v2 
and later, to avoid any doubts or confusions in the future.

There were also several bugs in foomatic-rip: Insertion of CUPS page 
logging code for CUPS was not suppressed on the request of the PPD file, 
the "pdftops" utility of Poppler did not get called correctly when 
incoming PDF had to be converted to PostScript due to the needs of the 
driver, settings of numerical options did not get applied correctly, and 
foomatic-rip could crash when PPDs got treated by the "alignmargins" script.

Also foomatic-db-engine got several improvements and bug fixes.

Especially, PPD generation got much faster as we avoid generating a full 
list of all printer/driver relations whenever a PPD for a given 
printer/driver pair is generated.

It also not required any more that for Foomatic to return a PPD file for 
a given printer/driver combo that there is an XML file for both the 
printer and the driver. One XML file (either printer or driver) is 
enough when this file describes the printer/driver relation.

The listing of all available PPD files for CUPS ("lpinfo -m") showed 
some ready-made PPDs as Foomatic PPDs leading to have duplicate 
listings. This is fixed now.

Extra "*cupsFilter" lines in the PPDs for print jobs from Mac OS X are 
removed again, as they caused problems for xome printers.

If a Foomatic PPD file is for a color printer but with a monochrome-only 
driver, the device properties in the PPD file are set to 
monochrome-only, as the PPD file is not only for the printer but for the 
printer/driver combo.

The tools to get printer XML files out of PPDs are improved in some points.

The README file is updated to reflect the most recent changes in the 
Foomatic XML database format and needs for the OpenPrinting web server.

Thanks to everyone who reported bugs to us or sent feature requests.

Have a lot of fun with the new Foomatic release!

    Till


[1]https://www.linuxfoundation.org/collaborate/workgroups/openprinting/database/foomatic
