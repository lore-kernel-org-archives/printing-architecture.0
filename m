Message-ID: <3E807421.9050508@easysw.com>
Date: Tue, 25 Mar 2003 10:22:09 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Working
 Group conference call 03/26/03
References: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com> <200303250116.h2P1GZVc009025@dsl092-065-009.bos1.dsl.speakeasy.net> <3E7FBB4F.4040503@easysw.com> <200303250242.h2P2gEia009925@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200303250242.h2P2gEia009925@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
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

Robert L Krawitz wrote:
> ...
>    First, we need static files (or the equivalent attributes) for the
>    UI; there cannot be a direct interface between app and driver,
>    otherwise we're repeating the same old errors that have been cursed
>    on Windows.
> 
> True; I guess I glossed over the "job dialog" part.  However, I don't
> think that there actually need to be static files; an API to the
> printing system (whereby the printing system acts as an abstraction
> barrier between the application and the driver) would also accomplish
> this end.  The back end of this could be whatever the driver and the
> printing system agree on: it could be a PPD file for some drivers and
> an interface module (like rastertoprinter or ijsgimpprint) between the
> driver and the printing system for others.

Right, but from the application/PAPI standpoint, that interface
is hidden.

(and from the CUPS standpoint, we *will not* be supporting a
direct scheduler<->driver interface, as that opens up serious
security and performance issues...)

>    Second, all constraints can be expressed using boolean logic;
>    putting them in code or in a file doesn't matter much - the same
>    amount of complexity is required either way.
> 
> Not necessarily; the internal logic might be dynamic, based on the
> printer state (e. g. the driver might want to offer only options that
> are actually installed on the printer), or it might reference internal
> driver logic that's unwieldly to express via logic or simply doesn't
> need to be exposed to the application.  To illustrate what I mean, the

First, "dynamic" logic based upon the current printer state is not
dynamic - it is static logic based upon dynamic information,
something that the current design allows for and is already
implemented with some drivers in PPD files for CUPS.

> compressed Gimp-print PPD files for the Epson Stylus printers total
> 1440 KB (each one totals about 12 KB; the entire compressed source
> code for the Epson family driver totals 48 KB, even though Gimp-print
> doesn't query printer status (it does offer dynamic options based on
> the state of other options).

That's not a valid comparison - you'd need to compare the size of
the constraints in PPD files to the constraints in code.  IIRC,
there are *no* constraints in the current GIMP-print PPD files...

Any textual representation of attributes, constraints, etc. will
generally be larger than the compiled code that uses them - it
doesn't matter whether this data is in a static file (PPD, UPDF,
etc.) or is passed via a direct interface.

That said, using a separate data store (file and/or attributes in
memory) to hold this information has several pleasant effects:

     1. Apps can locally resolve constraints in real-time
        (for the user: things work faster) vs. round-trip
        delays and resending of every selected attribute.

     2. Drivers can be totally data-based, allowing new devices
        to be added relatively easily (barring major format/
        protocol changes requiring new support code)

     3. Printer/driver state and capability information can be
        provided locally and over the network to multiple
        platforms, and can be converted to any designed format
        or interface.

 > ...
> Can it express certain options being entirely unavailable in some
> circumstances (e. g. when the user chooses to print in black and
> white, color controls should be disabled)?

Certainly, as can PPD files...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Printing Software for UNIX                       http://www.easysw.com




