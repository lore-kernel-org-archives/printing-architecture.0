Date: Mon, 24 Mar 2003 20:16:35 -0500
Message-Id: <200303250116.h2P1GZVc009025@dsl092-065-009.bos1.dsl.speakeasy.net>
From: Robert L Krawitz <rlk@alum.mit.edu>
In-reply-to: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com>
	(hamzy@us.ibm.com)
References: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com>
Subject: [Printing-architecture] Re: [printing-driver] FSG Printer Working Group conference call 03/26/03
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

   From: Mark Hamzy <hamzy@us.ibm.com>
   Date: Mon, 24 Mar 2003 13:30:36 -0600

   * should printer drivers implement a required set of common job properties
   (JP)?
     Examples of keys would be: orientation, form, tray, media, duplex,
   resolution.

These certainly don't apply to all printers; most inkjets don't
support duplex, and many also don't have selectable input sources.
I'd prefer to see a list of standard job properties that could be
amended, and standards (and/or a registry) for drivers to support
non-standard properties (such as the whole mess of things Gimp-print
supports).

     + Should we use
	  - one existing standard
	     PWG well known values (
   http://www.pwg.org/schemas/sm/latest/MediaWellKnownValues.xsd)
	  - two or more existing standards
	     PWG and/or JDF
	  - a new standard

I don't like the fixed values at all; they basically try to force all
papers into specific niches.  For example, Epson offers a number of
different photographic papers (Photo Paper, Premium Glossy Photo
Paper, Premium Semiglosss, etc.), and each one has different
characteristics.  There are a lot of third party papers as well, and
these also have different characteristics.  Having the
MediaTypeExtensionPattern is fine, but on Epson (and other inkjet)
printers, "photographic-glossy" simply isn't a very useful
description; there are enormous differences between different
photographic-glossy papers, and it's important for the user to specify
the precise paper by name.  Subtle differences in the coating (which
users generally can't distinguish except by name) require great
differences; for example, when printing to Premium Glossy on the
Stylus C80, it's important to not use black ink, which is formulated
differently and doesn't adhere correctly to the paper.  Other glossy
photo papers should be printed with black ink, however.

   * should all JPs be passed in one call or only one JP for each call
     (requiring multiple calls to a driver)?

I'd vote for all at once.  It doesn't enormously matter for
Gimp-print, but it may make it easier for drivers to sanity check
early.

   * can there be default job properties or must every property be set?

Defaults should be allowed.  For example (using a Gimp-print
property), a user should not have to specify the ink type; the driver
should pick it automatically.

   * should we use a named pipe (or similar) to communicate to a driver or
     can we use an API?

stdin/stdout/stderr

   * should there be application presentation information that can be
     queried?  Some examples are:
	printable page size
	resolution
	current color depth
	font metrics

Yes.  It should be possible for the application to determine
e. g. what the current settings are.

   * can there be different job properties for each page?

     + Can this can be optional?

I don't much like it, but Mike presents a good case, and anyway
Gimp-print is really page-oriented anyway.

   * should we allow for future extensibility to support optional components
   of
     a printer driver?

       - should we require simulation?
	 That is if a driver only accepts bitmaps, then create a raster image
	 of the vector commands.  If a driver doesn't support rounded boxes
	 but does support arcs and lines, then break a round box into
	 multiple arc and line calls.

Yes.  The higher level software should break these things down as
appropriate.  Otherwise drivers have to duplicate code.

   * should we have an interface to query the printer's job dialog?
     This will allow for programmatic support of setting/querying the JPs.

Yes.  This actually maps very well to Gimp-print, particularly in
4.3.  It's a lot more flexible than a static file; expressing
constraints using boolean logic can get extremely complex.

	+ grouping/structuring

	+ constraints

	+ type of data (boolean, int, float, string, password, etc)

Add curve, vector, and raw to that, and I'll be happy.  Gimp-print
also supports file, but neither the Ghostscript nor the CUPS driver
supports this for security reasons (the only thing that uses it is the
GIMP plugin, so the Postscript family driver can find a PPD file).

   * should we require a standard install path?
     /usr/lib/print/driver/drivername
     /usr/share/print/font/drivername/

This is much too system-specific.  Obviously Windows will have
different conventions from UNIX (what, me defend Windows?), and
different UNIX versions/Linux distributions have different
conventions.  The printing system should manage that.

-- 
Robert Krawitz                                     <rlk@alum.mit.edu>      

Tall Clubs International  --  http://www.tall.org/ or 1-888-IM-TALL-2
Member of the League for Programming Freedom -- mail lpf@uunet.uu.net
Project lead for Gimp Print   --    http://gimp-print.sourceforge.net

"Linux doesn't dictate how I work, I dictate how Linux works."
--Eric Crampton

