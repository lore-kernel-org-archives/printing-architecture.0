Message-ID: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com>
From: Mark Hamzy <hamzy@us.ibm.com>
Date: Mon, 24 Mar 2003 13:30:36 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=US-ASCII
Subject: [Printing-architecture] FSG Printer Working Group conference call 03/26/03
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




Wednesday, March 26

GMT 19:00
EST 14:00
CST 13:00
MST 12:00
PST 11:00

Tie Line:    650-3239
Toll Free:   1-800-497-2024
Toll Number: 1-719-457-3821
Passcode:    160458

Topics

* should printer drivers implement a required set of common job properties
(JP)?
  Examples of keys would be: orientation, form, tray, media, duplex,
resolution.

  + Should we use
       - one existing standard
          PWG well known values (
http://www.pwg.org/schemas/sm/latest/MediaWellKnownValues.xsd)
       - two or more existing standards
          PWG and/or JDF
       - a new standard

  + is support of the FSG's Job Ticket standard a requirement?

* should all JPs be passed in one call or only one JP for each call
  (requiring multiple calls to a driver)?

* can there be default job properties or must every property be set?

* should we use a named pipe (or similar) to communicate to a driver or
  can we use an API?

  + If an API, should that API implement a pipe under the covers?

* should there be different pipes for each print job or should the driver
  be required to multiplex between the jobs in one pipe?

* should there be application presentation information that can be
  queried?  Some examples are:
     printable page size
     resolution
     current color depth
     font metrics

* can there be different job properties for each page?

  + Can this can be optional?

* should we allow for future extensibility to support optional components
of
  a printer driver?

  + vector graphics

    - should we use existing vector language? (SVG, PDF)

    - can it be multiple languages?

    - should we require simulation?
      That is if a driver only accepts bitmaps, then create a raster image
      of the vector commands.  If a driver doesn't support rounded boxes
      but does support arcs and lines, then break a round box into
      multiple arc and line calls.

  + device fonts

* should we have an interface to query the printer's job dialog?
  This will allow for programmatic support of setting/querying the JPs.

     + grouping/structuring

     + constraints

     + type of data (boolean, int, float, string, password, etc)

* should we require a standard install path?
  /usr/lib/print/driver/drivername
  /usr/share/print/font/drivername/

Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/


