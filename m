Message-ID: <OF681B092B.0DF4A39F-ON86256CF5.0081DB93-86256CF5.008305E7@us.ibm.com>
From: Mark Hamzy <hamzy@us.ibm.com>
Date: Wed, 26 Mar 2003 17:51:07 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=US-ASCII
Subject: [Printing-architecture] FSG Printer Working Group meeting notes 03/26/03
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




Attendees:
Mark Hamzy
Charles Hemstreet
Norm Jacobs
Till Kamppeter
Ira McDonald
Glen Petrie
David Suffield

Meeting notes:

> * should printer drivers implement a required set of common job
properties (JP)?
>   Examples of keys would be: orientation, form, tray, media, duplex,
resolution.

Yes. We talked about two examples.

   resolution
      integerXinteger
   quality (level of effort in a print job)
      draft, normal, presentation, high, etc...

Future issues are:
   * should we allow structured JPs?  That is, a complex JP that binds two
or more
     simple JPs in it.  Ex:  form, tray, and media could be combined into
one JP.
     We could also have extra informational data in the JP value.  Ex:  the
form
     key could have data that describes if it is installed in the printer.
On a
     query return forms = "letter_installed, legal_notinstalled, ..." and
on a set
     only look at the first part.  This of course would require the driver
to
     hold/fail a job that does not have a form installed in the printer.

>   + Should we use
>        - one existing standard
>           PWG well known values
(http://www.pwg.org/schemas/sm/latest/MediaWellKnownValues.xsd)
>        - two or more existing standards
>           PWG and/or JDF
>        - a new standard

One standard.

>   + is support of the FSG's Job Ticket (JT) standard a requirement?

Yes.  Supporting the key=values from the JT is a requirement.  This would
lead us to
consider the JT keys and values as the standard to use.  We need to make
sure that
all printer drivers have either a mapping from their old keys/values to the
new
JT keys/values or have their keys and values added to the JT standard.

In the future we may want to support JT better by allowing printing of a
job
with just the JT.

> * should all JPs be passed in one call or only one JP for each call
>   (requiring multiple calls to a driver)?

One worry is size of data if all are passed in at once.  One solution that
is
proposed is to query the driver for the number of key/values that can be
passed
in one call.
   PDC                         driver
   PDC queries the driver
   begin JP keys/values     ->
                               driver returns a number which can be the
following
                            <- all
                            <- 1
                            <- number
   PDC sends the key/values
   ...
   PDC notifies the end
   end JP keys/values       ->
                               driver returns success or failure
                            <- success
                            <- failure

In this approach, drivers that need all of the data at once will work and
driver that need only one at a time will work.

> * can there be default job properties or must every property be set?

We decided that default JPs are allowed.  For example, a print job
can be sent with "form=legal" as all of the JPs.

New issues that occurred during the meeting:
   * should there be API to set/query default job properties?

     Yes.

   * should there be multiple named storage areas with default job
properties?

     It should be optional that the default JP set can have a named
storage.

> * should we use a named pipe (or similar) to communicate to a driver or
>   can we use an API?
>
>   + If an API, should that API implement a pipe under the covers?

We decided to use an API.  That API can then use named pipes or some other
communications protocol under the covers.

Future issues are:
   * should we use a structured data message format?

      + should it be
         - XML
         - a simple human readable ASCII string encoding
         - binary
            ~ big-endian/little-endian
            ~ 8-bit clean

      + should it have a length in the structure?

         - 20-octet end-of-string marker instead of sizeof structure

> * should there be different pipes for each print job or should the driver
>   be required to multiplex between the jobs in one pipe?

We decided that supporting different jobs at the same time should be
optional.
   PDC                         driver
   PDC queries the driver
   accept another job       ->
                               driver returns success/failure
                            <- yes
                            <- no

Future issues are:
   - should this be a capability?

> * should there be application presentation information that can be
>   queried?  Some examples are:
>      printable page size
>      resolution
>      current color depth
>      font metrics

Yes.

Future issues are:
   - should there be a driver level of capabilities where an application
can ask
     for a device that supports a certain resolution and page size.  This
could be
     optional.

> * can there be different job properties for each page?
>
>   + Can this can be optional?

Yes.  If a device cannot handle switching job properties on a new page,
then
the driver should stop the print job and start another one.

> * should we allow for future extensibility to support optional components
of
>   a printer driver?

Yes.

>   + vector graphics
>
>     - should we use existing vector language? (SVG, PDF)
>
>     - can it be multiple languages?
>
>     - should we require simulation?
>       That is if a driver only accepts bitmaps, then create a raster
image
>       of the vector commands.  If a driver doesn't support rounded boxes
>       but does support arcs and lines, then break a round box into
>       multiple arc and line calls.
>
>   + device fonts

Unicode font metrics can be a large message.

>
> * should we have an interface to query the printer's job dialog?
>   This will allow for programmatic support of setting/querying the JPs.

Yes.  This should be part of the capabilities.

>      + grouping/structuring
>
>      + constraints
>
>      + type of data (boolean, int, float, string, password, etc)

> * should we require a standard install path?
>   /usr/lib/print/driver/drivername
>   /usr/share/print/font/drivername/

This question was asked because we need some method of detectability or
discoverability of installed drivers.  This can be as simple as an ini file
that is found at a certain location.  This file can contain:
   - what driver is installed
   - where it is located
   - how do I communicate with it

Future issues are:
   - should there be calls to the driver to notify when the driver is
      + installed
      + uninstalled
      + upgraded


Mark

Take a look at the Linux Omni Printer Driver Framework at
http://www.ibm.com/linux/ltc/projects/omni/


