Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Working Group
 conference call 03/26/03
Message-ID: <OF4F5F0FA3.10E5FF1A-ON85256CF4.004B44C5@pok.ibm.com>
From: "Pete Zannucci" <pzaan@us.ibm.com>
Date: Tue, 25 Mar 2003 08:06:22 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=us-ascii
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
To: Robert L Krawitz <rlk@alum.mit.edu>
Cc: printing-driver@freestandards.org, printing-architecture@freestandards.org




From: Robert L Krawitz <rlk@alum.mit.edu>

> True; I guess I glossed over the "job dialog" part.  However, I don't
> think that there actually need to be static files; an API to the
> printing system (whereby the printing system acts as an abstraction
> barrier between the application and the driver) would also accomplish
> this end.  The back end of this could be whatever the driver and the
> printing system agree on: it could be a PPD file for some drivers and
> an interface module (like rastertoprinter or ijsgimpprint) between the
> driver and the printing system for others.


The goal should be to abstract away the ugliness of the system and
provide a clean simple API for the application.  Applications should
not be concerned about the underlying architecture or implementation.

Secondly it would be nice if we could agree upon a single format for
storage of the properties based on the current printer configuration.
The driver/backend could use whatever mechanism it wants to use for
generating or using information internally but if properties could
be stored by the print system/driver when settings change or at
install/config time in a common database, that will ease the burden of
having to put translation layers in for each of the formats going to
the application interface.  This would allow consistent information be
returned to the app.  It would also solve a lot of portability issues
between systems and make the interface consistent and less error prone.




Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com





