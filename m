Message-ID: <116DB56CD7DED511BC7800508B2CA53735D04B@mailsrvnt02.enet.sharplabs.com>
From: "McDonald, Ira" <imcdonald@sharplabs.com>
Subject: RE: [Printing-architecture] [Full URLs] Updated low level archite
	cture drawings (LONG)
Date: Thu, 12 Jun 2003 07:53:41 -0700
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: 'Pete Zannucci' <pzaan@us.ibm.com>, printing-architecture@freestandards.org

Hi,

These files are stored on the PWG anonymous FTP server at:

ftp://ftp.pwg.org/pub/pwg/fsg/architecture/arch1-6-12-03.jpg

ftp://ftp.pwg.org/pub/pwg/fsg/architecture/arch2-6-12-03.jpg

Cheers,
- Ira McDonald


-----Original Message-----
From: Pete Zannucci [mailto:pzaan@us.ibm.com]
Sent: Thursday, June 12, 2003 10:37 AM
To: printing-architecture@freestandards.org
Subject: [Printing-architecture] Updated low level architecture drawings
(LONG)


Hello all,

I have updated the low level architecture drawings to encompass
some of the items that Mark Hamzy was discussing on the last
several printing-driver conference calls.

The new files are arch1-6-12-03 and arch2-6-12-03.

There are minor differences in the drawings which lie in the
dashed lines between the printer driver, renderer, papi, and
the databases that are on the left side of the drawing.


1. Database/ppds/registry

The rational with the additions is that the drawing had a queue/
driver information database where settings could be stored but
it either required a static database of information, such as a
.ppd file to populate it, or it would have to have a mechanism
of querying the driver for its information so that settings
can be put in the database on a queue by queue, device by device
basis.  The dashed line shows that there could be a mechanism in
place to support this query.

I believe that this can be very relavent since several drivers
do have the capability of being queried and in a non-localized
environment, it would be much easier to install a driver and
have the query update the proper information in the database
(like a registry or ini) than to have to both manage a .ppd
file and the driver (of course only if the driver supports
queries).


2. Driver/renderer interface

Drivers could be queried by the renderer to insure that what
values are to be set in the driver are correct for that
particular grouping of queue settings (tray/paper connections,
etc.)  The renderer and the driver have to work in unison so
that the settings provide the proper output as necessary.


3. Query Interface

The query interface could encompass the printer driver and
any database backend (registry support).  It would be nice
if we had a store of valid configuration information about
the device so that when a query occured, the query could
return with only the valid available options that were set
based on the physical printer configuration.

The query would have to provide some smarts via either the
interface to the database or via the driver filtering the
query and providing accurate information back to the
requester.

Another possible ENHANCEMENT of the query is that the
query could either go to the database/driver or to a rendering
interface.  The possibility of having it go through the
combined translation service (renderer/filter/driver) is that
you could get a combined core group of capabilities for that
system and not just the driver.  This would provide enhance-
ments such as showing what is:
  1. DEVICE specific information
  2. what could be provided via filters (different input types)
  3. what can be simulated by the combination of the components
      This would be things such as non-device fonts and simulated
      vector drawing through rasterization

This is just a small amount of ideas and it is likely that we
need to put in place a roadmap that goes from a simplistic system
of rendering/postscript to a full blown system like Windows and
beyond that can do much tighter collaboration between the components
to provide a much richer drawing/printing environment than is
currently in the open source world.

I appologize for the "kind of" quick firehose of information here.



Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com



_______________________________________________
Printing-architecture mailing list
Printing-architecture@freestandards.org
http://freestandards.org/mailman/listinfo/printing-architecture

