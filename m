Date: Tue, 25 Mar 2003 21:01:05 -0500
Message-Id: <200303260201.h2Q2155Z023588@dsl092-065-009.bos1.dsl.speakeasy.net>
From: Robert L Krawitz <rlk@alum.mit.edu>
In-reply-to: <OF4F5F0FA3.10E5FF1A-ON85256CF4.004B44C5@pok.ibm.com>
	(pzaan@us.ibm.com)
Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Working Group
 conference call 03/26/03
References: <OF4F5F0FA3.10E5FF1A-ON85256CF4.004B44C5@pok.ibm.com>
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
To: pzaan@us.ibm.com
Cc: printing-driver@freestandards.org, printing-architecture@freestandards.org

   From: "Pete Zannucci" <pzaan@us.ibm.com>
   Date: Tue, 25 Mar 2003 08:06:22 -0600

   From: Robert L Krawitz <rlk@alum.mit.edu>

   > True; I guess I glossed over the "job dialog" part.  However, I
   > don't think that there actually need to be static files; an API
   > to the printing system (whereby the printing system acts as an
   > abstraction barrier between the application and the driver) would
   > also accomplish this end.  The back end of this could be whatever
   > the driver and the printing system agree on: it could be a PPD
   > file for some drivers and an interface module (like
   > rastertoprinter or ijsgimpprint) between the driver and the
   > printing system for others.

   The goal should be to abstract away the ugliness of the system and
   provide a clean simple API for the application.  Applications
   should not be concerned about the underlying architecture or
   implementation.

Agreed.  It's the back end (from the printing system on down) I'm
talking about.

   Secondly it would be nice if we could agree upon a single format
   for storage of the properties based on the current printer
   configuration.  The driver/backend could use whatever mechanism it
   wants to use for generating or using information internally but if
   properties could be stored by the print system/driver when settings
   change or at install/config time in a common database, that will
   ease the burden of having to put translation layers in for each of
   the formats going to the application interface.  This would allow
   consistent information be returned to the app.  It would also solve
   a lot of portability issues between systems and make the interface
   consistent and less error prone.

BTW, how would we represent ICC profiles (for example)?

-- 
Robert Krawitz                                     <rlk@alum.mit.edu>      

Tall Clubs International  --  http://www.tall.org/ or 1-888-IM-TALL-2
Member of the League for Programming Freedom -- mail lpf@uunet.uu.net
Project lead for Gimp Print   --    http://gimp-print.sourceforge.net

"Linux doesn't dictate how I work, I dictate how Linux works."
--Eric Crampton

