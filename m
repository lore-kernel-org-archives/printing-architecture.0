Message-ID: <A134E2426B46D711BB4B000347AE6E7CAA532C@xvan02.vcd.hp.com>
From: "TAYLOR,BOB (HP-Vancouver,ex1)" <bobt@hp.com>
Subject: RE: [Printing-architecture] Re: [printing-driver] FSG Printer Wor
	king Group conference call 03/26/03
Date: Tue, 25 Mar 2003 11:06:31 -0800
MIME-Version: 1.0
Content-Type: text/plain
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
To: "'printing-driver@freestandards.org'" <printing-driver@freestandards.org>, mike@easysw.com
Cc: printing-architecture@freestandards.org

see inline -

bt

> -----Original Message-----
> From: Robert L Krawitz [mailto:rlk@alum.mit.edu] 
> Sent: Monday, March 24, 2003 6:42 PM
> To: mike@easysw.com
> Cc: printing-driver@freestandards.org; 
> printing-architecture@freestandards.org
> Subject: Re: [Printing-architecture] Re: [printing-driver] 
> FSG Printer Working Group conference call 03/26/03
> 
> 
>    Date: Mon, 24 Mar 2003 21:13:35 -0500
>    From: Mike Sweet <mike@easysw.com>
> 
>    >    * should we have an interface to query the printer's 
> job dialog?
>    >      This will allow for programmatic support of 
> setting/querying the JPs.
>    > 
>    > Yes.  This actually maps very well to Gimp-print, particularly in
>    > 4.3.  It's a lot more flexible than a static file; expressing
>    > constraints using boolean logic can get extremely complex.
> 
>    First, we need static files (or the equivalent attributes) for the
>    UI; there cannot be a direct interface between app and driver,
>    otherwise we're repeating the same old errors that have been cursed
>    on Windows.
> 
> True; I guess I glossed over the "job dialog" part.  However, 
> I don't think that there actually need to be static files; an 
> API to the printing system (whereby the printing system acts 
> as an abstraction barrier between the application and the 
> driver) would also accomplish this end.  The back end of this 
> could be whatever the driver and the printing system agree 
> on: it could be a PPD file for some drivers and an interface 
> module (like rastertoprinter or ijsgimpprint) between the 
> driver and the printing system for others.

<bt>
Thought I'm not sure I'd call them "static files", I do think we should
try to keep this as data driven as possible - i.e., emphasize capabilities
data to drive UI over custom device dialogs.
</bt>

> 
>    Second, all constraints can be expressed using boolean logic;
>    putting them in code or in a file doesn't matter much - the same
>    amount of complexity is required either way.
> 
> Not necessarily; the internal logic might be dynamic, based 
> on the printer state (e. g. the driver might want to offer 
> only options that are actually installed on the printer), or 
> it might reference internal driver logic that's unwieldly to 
> express via logic or simply doesn't need to be exposed to the 
> application.  To illustrate what I mean, the compressed 
> Gimp-print PPD files for the Epson Stylus printers total 1440 
> KB (each one totals about 12 KB; the entire compressed source 
> code for the Epson family driver totals 48 KB, even though 
> Gimp-print doesn't query printer status (it does offer 
> dynamic options based on the state of other options).

<bt>
It is definitely possible to express these "dynamic" constraints - we
are doing this with the PSI capabilities model, and I believe UPDF can
handle this as well.

In my experience, most of our core capabilities files are in the 10-50k
range.
Anything much beyond that are usually localizations of strings.
</bt>

> 						 
> 						 Keep in mind that we
>    are planning on providing a constraint mechanism that is a superset
>    of that supported by PPD and that there will still be a way to do
>    full round-trip constraint checks through the printing system (if
>    supported); the latter checks are meant for sanity checks when
>    submitting options/jobs and not for on-the-fly constraint checking
>    when a user changes an option.
> 
> Can it express certain options being entirely unavailable in 
> some circumstances (e. g. when the user chooses to print in 
> black and white, color controls should be disabled)?

<bt>
I know our PSI capabilities model can handle this, and I'm pretty sure UPDF
can as well.
</bt>

> 
> -- 
> Robert Krawitz                                     
> <rlk@alum.mit.edu>      
> 
> Tall Clubs International  --  http://www.tall.org/ or 
> 1-888-IM-TALL-2 Member of the League for Programming Freedom 
> -- mail lpf@uunet.uu.net
> Project lead for Gimp Print   --    http://gimp-print.sourceforge.net
> 
> "Linux doesn't dictate how I work, I dictate how Linux 
> works." --Eric Crampton
> 
> _______________________________________________
> printing-driver mailing list
> printing-driver@freestandards.org 
> http://freestandards.org/mailman/listinfo/prin> ting-driver
> 

