Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=2FSXomXjc0D8H36qIEOHSDxzeXhIhXf0jkD/6RZTm7s=;
	b=pgnveyCSdqEYZcq61KlQRRDR5Vhi9AnDxBD0KeSOTSo4gAyHte79vp7XsRcTbUwmuz
	P+ebfL1AeMaAjTWWIqetZKf197n4MyI0gQSvyr93nt3h4Gq9Y+KZsJ4k0DTMi412GlKK
	gAAj4nTRAA2/m2qbOx4GsZiiojTd2dX4E+gPj04MgyAUbzTpomOJY+NqlSVfPBpjJSek
	NPZgNQUfAXv3qDHN17iYuzw2dgNcfS/aQBGtbF5zb+VcrqpfEk94u4NF6JqckcwvW47K
	DVN2LGsleuWZsDei5056rc2U8e6FcB40w+R/9whZAORh//k7lLEzNt8B6THwlLQJtitQ
	+0rg==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <7520afb5-933f-f1d2-76fe-143eeddc6675@gmail.com>
Date: Wed, 7 Aug 2019 14:44:25 +0200
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

here is the newest development of the last 2 months.

    Till

----------


Google Summer of Code 2019
--------------------------

Second evaluations are done now GSoC coding will end in around 3 weeks.

The 5 students for OpenPrinting have all passed, but from all the 11 for 
the Linux Foundation 2 have failed.

Dheeraj has already succeeded to make a Printer Application from HPLIP 
and now his task is to get a general framework which allows easy 
packaging of any classic printer driver package as a Printer Application.

See his work on GitHub:

https://github.com/dheeraj135/Printer-Applications-Framework
https://github.com/dheeraj135/Printer-Application-Snaps

Tanmay has finished the original task with which he has entered the GSoc 
already at the first evaluation round. His work of changing the 
pdftoraster filter of cups-filters to use only documented, stable APIs 
of Poppler is already integrated in cups-filters and released in version 
1.25.1 of cups-filters (see below).

Now he is working on the adapter backend for the GTK-3.x print dialog to 
use the Common Print Dialog Backends (CPDB). Maintainership got 
overtaken by Dongxu Li now.

The other OpenPrinting Students seem to do well, too, according to the 
second evaluation and mail traffic between Sharad and Mike Sweet.

Aveek Basu and me, we will attend the GSoC Mentor Summit in Munich this 
year, October 17-20.


Avahi
-----

Dheeraj has reported a bug in cups-browsed caused by the several network 
interfaces reporting one and the same service via DNS-SD 
(https://github.com/OpenPrinting/cups-filters/issues/136) and this made 
me put some more thoughts on the Avahi problem. See my last posts on the 
Avahi issue

https://github.com/lathiat/avahi/issues/125

and also my posts on the Printing Architecture mailing list

https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/003718.html
https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/003720.html
https://lists.linuxfoundation.org/pipermail/printing-architecture/2019/003719.html

In his only answer to my patch (in April) Trent Lloyd tells that he 
would accept my first part of the patch which adds the support for 
advertising services on the loopback interface ("lo", host name 
"localhost") but not the second part (contributed by Rithvik) which 
makes the DNS-SD records coming from the loopback ingterface using 
"localhost" as the host name and not the machines network host name as 
then Avahi would make an exception for the loopback interface.

But as each DNS-SD record has to be consistent by itself and independent 
of the others (even independent of the others for the same service) in 
my opinion the records from loopback should carry the "localhost" host 
name, as otherwise a client would build URIs using the network host name 
and this does never resolve to the local 127.0.0.1 / ::1 IP address, 
making pure local services like ippusbxd not working and letting data 
intended for local use only detour through the external network when a 
network IP gets used (privacy and resource usage problems). This would 
especially get a problem when drivers for USB printers are distributed 
as Printer Applications.

I posted on the Printing Architecture mailing list then and Michael 
Sweet answered, being also of my opinion and not of Trent's, he also 
says that Avahi should deliver the DNS-SD record of the loopback (“lo”) 
interface with the “localhost” host name.

I asked Mike to post on the Avahi issue on GitHub but he did not do so yet.

Not further answer by Trent yet as he has still urgent work to do in his 
day job.


OpenPrinting web site
---------------------

No further news.


CUPS
----

2.3.0rc1 released.

The state of the art of Apple's licensing has still to be determined.

Changes in CUPS v2.3.0
----------------------

- Documentation updates (Issue #5604)
- Fixed a bug in the scheduler job cleanup code (Issue #5588)
- Fixed builds when there is no TLS library (Issue #5590)
- Eliminated some new GCC compiler warnings (Issue #5591)
- Removed dead code from the scheduler (Issue #5593)
- "make" failed with GZIP options (Issue #5595)
- Fixed potential excess logging from the scheduler when removing job
   files (Issue #5597)
- Fixed a NULL pointer dereference bug in `httpGetSubField2` (Issue
   #5598)
- Added FIPS-140 workarounds for GNU TLS (Issue #5601, Issue #5622)
- The scheduler no longer provides a default value for the description
   (Issue #5603)
- The scheduler now logs jobs held for authentication using the error
   level so it is clear what happened (Issue #5604)
- The `lpadmin` command did not always update the PPD file for changes
   to the `cupsIPPSupplies` and `cupsSNMPSupplies` keywords (Issue #5610)
- The scheduler now uses both the group's membership list as well as the
   various OS-specific membership functions to determine whether a user
   belongs to a named group (Issue #5613)
- Added USB quirks rule for HP LaserJet 1015 (Issue #5617)
- Fixed some PPD parser issues (Issue #5623, Issue #5624)
- Fixed an issue with unsupported "sides" values in the IPP backend
   (rdar://51775322)
- The scheduler would restart continuously when idle and printers were
   not shared (rdar://52561199)
- Fixed an issue with `EXPECT !name WITH-VALUE ...` tests.
- Fixed a command ordering issue in the Zebra ZPL driver.
- Fixed a memory leak in `ppdOpen`.


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

No changes on 2.2.x branch.


cups-filters
------------

Currently released is 1.25.1.

1.25.2:

Improved cups-browsed's handling of the DNS-SD records of advertised 
local and remote IPP print services. Especially make sure that local 
queues do not get already removed when the service on a single network 
interface disappears (for example Wi-Fi turned off) while still present 
on other interfaces. Also let local services preferably be accessed 
through the loopback ("localhost") interface to avoid data leaks into 
the network.

1.25.1:

Bug fix release for the filters, mainly for the new pdftoraster filter.

1.25.0:

In this release the pdftoraster filter is changed to only use 
stable/documented APIs of Poppler (Tanmay Anand's Google Summer of Code 
2019 project) and the deprecated, Poppler-based filters pdftoijs and 
pdftoopvp are finally completely removed. Now Poppler is only used for 
the pdftoraster filter. Poppler's unstable/internal APIs are nowhere 
used any more in cups-filters.

CHANGES IN V1.25.2

	- cups-browsed: Added note to cups-browsed.conf and man page
	  about IP-based URIs depending on the network interface used.
	- cups-browsed: For each DNS-SD-discovered printer register
	  each DNS-SD discovery instance with network interface,
	  family, and IPP type. When DNS-SD messages of instances
	  disappearing show up, only unregister this instance and
	  remove the printer only if no instance is left. This
	  prevents a local queue of a still available printer being
	  removed when Wi-Fi (= one interface) is turned off (Issue
	  #136).
	- cups-browsed: If a remote printer is served from the local
	  machine, prefer the "localhost"/loopback interface URI.
	- cups-browsed: If a remote printer is discovered more than
	  once, use the new instance only if it has no downgrades and
	  at least one upgrade compared to the old one. Features
	  currently compared are IPP/IPPS, loopback interface or not,
	  and discovery via CUPS legacy/LDAP/DNS-SD.
	- cups-browsed: If an Avahi-discovered entry comes through the
	  "lo" interface, always use the host name "localhost". Use
	  IP addresses instead of host names only if explicitly
	  requested.
	- cups-browsed: Consider remote printer entries also as from
	  the same printer if one has the local machine's network name
	  and the other "localhost" as host name (Issue #136).

CHANGES IN V1.25.1

	- imagetopdf: Fixed crash when no PPD file was supplied (Pull
	  request #133).
	- pdftoraster: Fixed offset issues leading to segmentation
	  faults (Issue #131, Pull request #132).
	- pdftoraster: Added anti-aliasing for better raster image
	  quality (Pull request #129).
	- pdftoraster: Added graceful handling of zero-page input
	  (Issue #117, Pull request #127).

CHANGES IN V1.25.0

	- pdftoijs, pdftoopvp: Removed these deprecated filters
	  completely as there is no demand for them any more. They
	  also used unstable, undocumented APIs of Poppler.
	- pdftoraster: Changed from using unstable, undocumented APIs
	  of Poppler to stable, documented ones, to improve
	  maintainability of this filter, and with it of the
	  cups-filters package. Thanks to Tanmay Anand for
	  contributing this as his Google Summer of Code 2019 project.
	- libcupsfilters: Added support for color spaces CMY and RGBW
	  when using filters without PPD file (mainly for development
	  and debugging, option "print-color-mode" with values
	  "cmy-XX" and "rgbw-XX" with XX being the number of bits per
	  color).


ippusbxd
--------

David Valleau from Google tells that ippusbxd works well on HP, Canon, 
and Epson printers under Chrome OS.

No code changes.
