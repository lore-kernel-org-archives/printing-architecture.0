Message-ID: <A134E2426B46D711BB4B000347AE6E7CAA532D@xvan02.vcd.hp.com>
From: "TAYLOR,BOB (HP-Vancouver,ex1)" <bobt@hp.com>
Subject: RE: [Printing-architecture] Re: [printing-driver] FSG Printer Wor
	king Group conference call 03/26/03
Date: Tue, 25 Mar 2003 14:14:33 -0500
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
To: 'Robert L Krawitz' <rlk@alum.mit.edu>, printing-driver@freestandards.org
Cc: printing-architecture@freestandards.org

see inline -

bt

> -----Original Message-----
> From: Robert L Krawitz [mailto:rlk@alum.mit.edu] 
> 
>      + Should we use
> 	  - one existing standard
> 	     PWG well known values (
>    http://www.pwg.org/schemas/sm/latest/MediaWellKnownValues.xsd)
> 	  - two or more existing standards
> 	     PWG and/or JDF
> 	  - a new standard
> 
> I don't like the fixed values at all; they basically try to 
> force all papers into specific niches.  For example, Epson 
> offers a number of different photographic papers (Photo 
> Paper, Premium Glossy Photo Paper, Premium Semiglosss, etc.), 
> and each one has different characteristics.  There are a lot 
> of third party papers as well, and these also have different 
> characteristics.  Having the MediaTypeExtensionPattern is 
> fine, but on Epson (and other inkjet) printers, 
> "photographic-glossy" simply isn't a very useful description; 
> there are enormous differences between different 
> photographic-glossy papers, and it's important for the user 
> to specify the precise paper by name.  Subtle differences in 
> the coating (which users generally can't distinguish except 
> by name) require great differences; for example, when 
> printing to Premium Glossy on the Stylus C80, it's important 
> to not use black ink, which is formulated differently and 
> doesn't adhere correctly to the paper.  Other glossy photo 
> papers should be printed with black ink, however.

<bt>
Agreed - and note that this is a good example of why we need to be able
to pass localized UI strings through the capabilities interface as well.
I don't think it's a reasonable expectation that all of these
rapidly-evolving
vendor-specific media types will be registered, much less actually supported
with localized strings in most clients.
</bt>

> 
>    * can there be default job properties or must every 
> property be set?
> 
> Defaults should be allowed.  For example (using a Gimp-print 
> property), a user should not have to specify the ink type; 
> the driver should pick it automatically.

<bt>
Agreed - though we have found the need for a device/service to declare 
that certain features !must! be specified - e.g., a fax phone number.
</bt>

> 
>    * should we have an interface to query the printer's job dialog?
>      This will allow for programmatic support of 
> setting/querying the JPs.
> 
> Yes.  This actually maps very well to Gimp-print, 
> particularly in 4.3.  It's a lot more flexible than a static 
> file; expressing constraints using boolean logic can get 
> extremely complex.

<bt>
Although we may want to provide an extension mechanism to get to a printer's
job dialog, I'd much rather see the core dialog be data driven.  We've yet
to
find "extremely" complex constraints - in most cases they're pretty
reasonable.

Note that you end up defining these constraints someplace anyway - the
question
is whether you do it in code that's bound to an implementation or in a data
structure that can be evaluated in many implementations.
</bt>

