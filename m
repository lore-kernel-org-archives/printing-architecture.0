Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=IeSQmHZgNF2geRS1C8M0T0LVetQQLlghnEYt1cPCfwA=;
	b=oYlkh5vSS9ZbSdHORGKd7iAQk5sDEzM86kv3FlBghIdAG0jLK4yuHyxPuNOE5zZY2K
	vLuXJM/dDq7PZg3kWD67onpuWs6miS3DmNCgklsT8Pvz6osSMK/3HkWarRBQq1Hh1GvZ
	j5wMN5LyWagK2uvr5g7O/JBLktWTEriANn7Y9VJHmBiANh+/KUNRtftC2tduCw2PbkHJ
	KlLjKiav9W5uJ/mR95+oXtndglgLL89m5VPZvRJVCNKVXbpE7re5pf7Gcl04Rnw8C5WK
	xTQjGu+QDK3o+yObE5Pyp1sv97SU4CI+lw0QIur4kaX3Nu2zYZGgX5ol/zaLGWycaP+d
	Cmgw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <4a81bcc3-f648-38eb-f9a4-f9e95716091b@gmail.com>
Date: Tue, 4 Jun 2019 12:41:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

here is the newest development of the last month.

    Till

----------


Google Summer of Code 2019
--------------------------

Coding has started.

I have discussed the architecture for the Printer Application framework 
with Dheeraj but he did not start coding yet as he still has exams.

Tanmay has started early and progressed very well, having nearly 
finished his project of removing the use of unstable/undocumented APIs 
of Poppler in the pdftoraster filter of cups-filters. He has code up now 
for testing an debugging:

https://github.com/tanmayanand44/cups-filters-gsoc19

He asks for testing with the different color spaces and color depths.


Google Summer of Code 2018
--------------------------

One of the projects which did not finish in time in the end of the GSoC 
made it finally upstream into cups-filters 1.24.0. Deepak Patankar 
finished his work on cups-browsed auto-selecting the destination printer 
for a job based on option/attribute settings.

Now, after one year of cups-browsed not receiving any new feature we 
have not only the auto selection but also support for clustering native 
IPP printers, mixed clusters of IPP printers and CUPS queues, no PPD 
download from remote CUPS servers (working towards full removal of the 
PPD concept in CUPS) and generally equal treatment of remote CUPS queues 
and native IPP printers.


Avahi
-----

Not continued yet by Trent as he has still urgent work to do.


OpenPrinting web site
---------------------

No further news.


system-config-printer
---------------------

Moved upstream hosting from Zdenek Dohnal’s (system-config-printer’s 
current upstream maintainer, works at Red Hat) private GitHub to the 
GitHub of OpenPrinting, but Zdenek continues as upstream maintainer.


CUPS
----

2.3.0 released.

So we made it to the new series now. The state of the art of Apple's 
licensing has still to be determined.

Changes in CUPS v2.3.0
----------------------

- Fixed a bug in the scheduler job cleanup code (Issue #5588)
- Fixed an issue with `EXPECT !name WITH-VALUE ...` tests.
- Fixed a command ordering issue in the Zebra ZPL driver.


Changes in CUPS v2.3rc1
-----------------------

- The `cups-config` script no longer adds extra libraries when linking
   against shared libraries (Issue #5261)
- The supplied example print documents have been optimized for size
   (Issue #5529)
- The `cupsctl` command now prevents setting "cups-files.conf"
   directives (Issue #5530)
- The "forbidden" message in the web interface is now explained (Issue
   #5547)
- The footer in the web interface covered some content on small displays
   (Issue #5574)
- The libusb-based USB backend now enforces read limits, improving print
   speed in many cases (Issue #5583)
- The `ippeveprinter` command now looks for print commands in the
   "command" subdirectory.
- The `ipptool` command now supports `$date-current` and `$date-start`
   variables to insert the current and starting date and time values, as
   well as ISO-8601 relative time values such as "PT30S" for 30 seconds
   in the future.

2.22.12 released.

CUPS 2.2.12 is a bug fix release backporting important fixes from the 
2.3.x series.

Changes in CUPS v2.2.12
-----------------------

- The `cupsctl` command now prevents setting "cups-files.conf"
   directives (Issue #5530)
- Updated the systemd service file for cupsd (Issue #5551)
- The `cupsCheckDestSupported` function did not check octetString values
   correctly (Issue #5557)
- The scheduler did not encode octetString values like "job-password"
   correctly for the print filters (Issue #5558)
- Restored minimal support for the `Emulators` keyword in PPD files to
   allow old Samsung printer drivers to continue to work (Issue #5562)
- Timed out job submission now yields an error (Issue #5570)
- The footer in the web interface covered some content on small displays
   (Issue #5574)
- The libusb-based USB backend now enforces read limits, improving print
   speed in many cases (Issue #5583)
- Fixed some compatibility issues with old releases of CUPS (Issue
   #5587)
- Fixed a bug in the scheduler job cleanup code (Issue #5588)
- Fixed a command ordering issue in the Zebra ZPL driver.


cups-filters
------------

Currently released is 1.24.0.

1.22.6:

Bug fix release, to address a further issue of cups-browsed removing 
user-created print queues, to make grayscale/monochrome PostScript jobs 
of colored input file actually output grayscale/monochrome files, to fix 
several bugs when using MuPDF as PDF renderer, and to silence compiler 
warnings.

1.23.0:

This release adds support for the "print-scaling" IPP attribute and has 
the code for the support of MuPDF as PDF renderer vastly simplified.

1.24.0:

Integration of Deepak Patankar's Google Summer of Code 2018 project with 
the main goal of clustering different printers with cups-browsed and 
automatically selecting the destination printers by job content and 
option/attribute settings. To achieve this, several other features got 
added to cups-browsed, especially support for mixed clusters of remote 
CUPS queues and native IPP printers and not downloading PPDs from remote 
CUPS servers any more. All changes of this release are done by Deepak as 
parts of his project.

CHANGES IN V1.24.0

	- cups-browsed: Integration of Deepak Patankar's Google Summer
	  of Code 2018 with the main goal of clustering different
	  printers and automatically selecting the destination
	  printers by job content and option/attribute settings. All
	  changes of this release are done by Deepak as parts of his
	  project.
	- cups-browsed, implicitclass: Support for mixed clusters of
	  remote CUPS queues and IPP network printers. For this PPD
	  files of remote CUPS queues are generated by cups-browsed
	  based on IPP queries, as for native IPP printers, the number
	  of jobs for load balancing is polled in a way that it works
	  also with native IPP printers, the implicitclass backend
	  sends jobs directky to the printer instead of re-queueing
	  them via CUPS.
	- cups-browsed: Merge IPP attributes of several printers to
	  combined attributes for the cluster to generate the
	  cluster's PPD file, including PPD constraints for option
	  combinations not fulfillable by any of the member printers,
	  and finding reasonable, non-conflicting default settings,
	- cups-browsed: Selection algorithm for the destination
	  printer for a job sent to the cluster. Based on the job
	  settings requested such as page size, media type, print
	  quality, ... the best most suitable printer in the cluster
	  for the job will be selected.
	- cups-browsed, implicitclass: Filter jobs to clusters already
	  locally. Due to the fact that a cluster's member printers
	  are not exclusively non-raw CUPS queues with the complete
	  filtering framework on the remote server, but also native
	  IPP printers, we need to support generic driverless printers
	  as destination. So we cannot pass on the input data
	  unfiltered but need to filter locally. We let the cluster's
	  PPD file emulate a PDF printer, letting the local CUPS queue
	  of the cluster run pdftopdf and any pre-filters to turn the
	  input into PDF and we let the implicitclass backend turn PDF
	  into a format understood by the destination printer,
	  supporting the 4 formats of driverless IPP printing: PDF,
	  PWG Raster, Apple Raster, PCLm.

CHANGES IN V1.23.0

	- pdftops, mupdftoraster: Let pdftops call mutool directly and
	  so that it directly outputs PostScript, eliminating the need
	  to call the mupdftoraster and rastertops filters.
	- mupdftoraster: Reduced the use of temporary files from 3 to
	  just one.
	- imagetopdf, imagetoraster, pdftopdf: Add support for
	  print-scaling option (Issue #108, Pull request #118).

CHANGES IN V1.22.6

	- rastertops: Fixed PageSize settings in the PostScript output
	  (Must be in points not in pixels).
	- pdftops, mupdftoraster: Produce actual grayscale/monochrome
	  PostScript (and not only instructions to print grayscale/
	  monochrome) for jobs to be printed in grayscale/monochrome
	  (Issue #96, Pull request #115).
	- mupdftoraster: Fixed filter not producing output at all.
	- Build system: ENABLE_DRIVERLESS got only defined with CUPS
	  1.6 and newer, not with older CUPS versions (Issue #111).
	- pdftopdf, imagetopdf, imagetoraster: Silenced compiler
           warnings.
	- cups-browsed, driverless: Replaced httpConnect() calls by
	  httpConnect2() calls as the former CUPS library function is
	  deprecated.
	- Build system: Compile everything using the CUPS libraries
	  with '-D_PPD_DEPRECATED=""' for the time being until the
	  deprecated PPD API calls get replaced, to stop the flooding
	  with PPD API deprecation warnings making more important
	  warnings being overlooked.
	- cups-browsed: When removing a local queue on shutdown or
	  when DNS-SD reports the printer as disappeared check whether
	  the local queue got overwritten by an external process as
	  sometimes the shutdown or disappearing event comes too close
	  for cups-browsed receiving a printer-modified notification
	  from CUPS before (Ubuntu bug #1731417).


ippusbxd
--------

No further news.
