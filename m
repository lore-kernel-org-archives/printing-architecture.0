Date: Mon, 24 Mar 2003 21:42:14 -0500
Message-Id: <200303250242.h2P2gEia009925@dsl092-065-009.bos1.dsl.speakeasy.net>
From: Robert L Krawitz <rlk@alum.mit.edu>
In-reply-to: <3E7FBB4F.4040503@easysw.com> (mike@easysw.com)
Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Working
 Group conference call 03/26/03
References: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com> <200303250116.h2P1GZVc009025@dsl092-065-009.bos1.dsl.speakeasy.net> <3E7FBB4F.4040503@easysw.com>
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
To: mike@easysw.com
Cc: printing-driver@freestandards.org, printing-architecture@freestandards.org

   Date: Mon, 24 Mar 2003 21:13:35 -0500
   From: Mike Sweet <mike@easysw.com>

   >    * should we have an interface to query the printer's job dialog?
   >      This will allow for programmatic support of setting/querying the JPs.
   > 
   > Yes.  This actually maps very well to Gimp-print, particularly in
   > 4.3.  It's a lot more flexible than a static file; expressing
   > constraints using boolean logic can get extremely complex.

   First, we need static files (or the equivalent attributes) for the
   UI; there cannot be a direct interface between app and driver,
   otherwise we're repeating the same old errors that have been cursed
   on Windows.

True; I guess I glossed over the "job dialog" part.  However, I don't
think that there actually need to be static files; an API to the
printing system (whereby the printing system acts as an abstraction
barrier between the application and the driver) would also accomplish
this end.  The back end of this could be whatever the driver and the
printing system agree on: it could be a PPD file for some drivers and
an interface module (like rastertoprinter or ijsgimpprint) between the
driver and the printing system for others.

   Second, all constraints can be expressed using boolean logic;
   putting them in code or in a file doesn't matter much - the same
   amount of complexity is required either way.

Not necessarily; the internal logic might be dynamic, based on the
printer state (e. g. the driver might want to offer only options that
are actually installed on the printer), or it might reference internal
driver logic that's unwieldly to express via logic or simply doesn't
need to be exposed to the application.  To illustrate what I mean, the
compressed Gimp-print PPD files for the Epson Stylus printers total
1440 KB (each one totals about 12 KB; the entire compressed source
code for the Epson family driver totals 48 KB, even though Gimp-print
doesn't query printer status (it does offer dynamic options based on
the state of other options).
						 
						 Keep in mind that we
   are planning on providing a constraint mechanism that is a superset
   of that supported by PPD and that there will still be a way to do
   full round-trip constraint checks through the printing system (if
   supported); the latter checks are meant for sanity checks when
   submitting options/jobs and not for on-the-fly constraint checking
   when a user changes an option.

Can it express certain options being entirely unavailable in some
circumstances (e. g. when the user chooses to print in black and
white, color controls should be disabled)?

-- 
Robert Krawitz                                     <rlk@alum.mit.edu>      

Tall Clubs International  --  http://www.tall.org/ or 1-888-IM-TALL-2
Member of the League for Programming Freedom -- mail lpf@uunet.uu.net
Project lead for Gimp Print   --    http://gimp-print.sourceforge.net

"Linux doesn't dictate how I work, I dictate how Linux works."
--Eric Crampton

