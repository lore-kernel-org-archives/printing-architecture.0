Date: Tue, 25 Mar 2003 20:56:39 -0500
Message-Id: <200303260156.h2Q1udkt023508@dsl092-065-009.bos1.dsl.speakeasy.net>
From: Robert L Krawitz <rlk@alum.mit.edu>
In-reply-to: <3E807421.9050508@easysw.com> (mike@easysw.com)
Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Working
 Group conference call 03/26/03
References: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com> <200303250116.h2P1GZVc009025@dsl092-065-009.bos1.dsl.speakeasy.net> <3E7FBB4F.4040503@easysw.com> <200303250242.h2P2gEia009925@dsl092-065-009.bos1.dsl.speakeasy.net> <3E807421.9050508@easysw.com>
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
To: printing-driver@freestandards.org
Cc: printing-architecture@freestandards.org

   From: Michael Sweet <mike@easysw.com>
   Date: Tue, 25 Mar 2003 10:22:09 -0500

   Robert L Krawitz wrote:
   > ...
   >    First, we need static files (or the equivalent attributes) for the
   >    UI; there cannot be a direct interface between app and driver,
   >    otherwise we're repeating the same old errors that have been cursed
   >    on Windows.
   > 
   > True; I guess I glossed over the "job dialog" part.  However, I
   > don't think that there actually need to be static files; an API
   > to the printing system (whereby the printing system acts as an
   > abstraction barrier between the application and the driver) would
   > also accomplish this end.  The back end of this could be whatever
   > the driver and the printing system agree on: it could be a PPD
   > file for some drivers and an interface module (like
   > rastertoprinter or ijsgimpprint) between the driver and the
   > printing system for others.

   Right, but from the application/PAPI standpoint, that interface is
   hidden.

Agreed; the application shouldn't know where the data comes from.

BTW, whatever the driver interface looks like, I could see a use for
a back end other than a file -- suppose a large company wants to have
a common set of printing options for all of its printers; it could use
a network service to distribute the printing information, rather than
having to copy flat files to every single workstation in the company.

   (and from the CUPS standpoint, we *will not* be supporting a
   direct scheduler<->driver interface, as that opens up serious
   security and performance issues...)

What's the security issue?

   > Not necessarily; the internal logic might be dynamic, based on the
   > printer state (e. g. the driver might want to offer only options that
   > are actually installed on the printer), or it might reference internal
   > driver logic that's unwieldly to express via logic or simply doesn't
   > need to be exposed to the application.  To illustrate what I mean, the

   First, "dynamic" logic based upon the current printer state is not
   dynamic - it is static logic based upon dynamic information,
   something that the current design allows for and is already
   implemented with some drivers in PPD files for CUPS.

True enough.

   > compressed Gimp-print PPD files for the Epson Stylus printers total
   > 1440 KB (each one totals about 12 KB; the entire compressed source
   > code for the Epson family driver totals 48 KB, even though Gimp-print
   > doesn't query printer status (it does offer dynamic options based on
   > the state of other options).

   That's not a valid comparison - you'd need to compare the size of
   the constraints in PPD files to the constraints in code.  IIRC,
   there are *no* constraints in the current GIMP-print PPD files...

All right, that's fair enough.

Another issue that didn't occur to me last night is that actually
going through and computing the constraints (to generate PPD
constraints) is expensive; in principle, genppd would have to set all
of the option to all of the possible values to determine the legal
combinations.  While in practice it's not that bad, it's much easier
to determine the legal values for a given option in the context of all
other current settings.

(Ironically, the reason it's not actually "all that bad" is because
Gimp-print's very permissive -- it's perfectly happy to let you set
2880x1440 with 7-color inks printing line art to plain paper, and it's
also willing to let you print full bleed on all paper sizes, not just
those where there's a pad under the carriage to catch the ink that
bleeds over.  It's also very happy to let you set arbitrary options
that aren't used by the current driver, and simply ignores them.)

   Any textual representation of attributes, constraints, etc. will
   generally be larger than the compiled code that uses them - it
   doesn't matter whether this data is in a static file (PPD, UPDF,
   etc.) or is passed via a direct interface.

I was comparing it to the source code, not the compiled code.

   That said, using a separate data store (file and/or attributes in
   memory) to hold this information has several pleasant effects:

	2. Drivers can be totally data-based, allowing new devices
	   to be added relatively easily (barring major format/
	   protocol changes requiring new support code)

I have no objection to this at all; I'd just like to see other options
available for drivers that are more complicated.

-- 
Robert Krawitz                                     <rlk@alum.mit.edu>      

Tall Clubs International  --  http://www.tall.org/ or 1-888-IM-TALL-2
Member of the League for Programming Freedom -- mail lpf@uunet.uu.net
Project lead for Gimp Print   --    http://gimp-print.sourceforge.net

"Linux doesn't dictate how I work, I dictate how Linux works."
--Eric Crampton

