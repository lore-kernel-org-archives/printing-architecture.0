Message-ID: <3E7B2AC4.3030401@easysw.com>
Date: Fri, 21 Mar 2003 10:07:48 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <OFDA21D6CF.99A834A7-ON86256CEE.007023AF-86256CEE.0078986A@us.ibm.com>
In-Reply-To: <OFDA21D6CF.99A834A7-ON86256CEE.007023AF-86256CEE.0078986A@us.ibm.com>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: [printing-driver] FSG Printer Working Group meeting notes 03/19/03
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

[My comments in-line...]

Mark Hamzy wrote:
 > ...
> * should printer drivers implement a required set of common job properties
> (JP)?
>   Examples of keys would be: orientation, form, tray, media, duplex,
> resolution.

We definitely need to refine this list, however from a PWG/IPP
perspective only the following attributes (and their -supported,
-default, and -actual counterparts) are probably applicable to
drivers themselves:

     copies
     finishings
     media or media-col
     orientation-requested
     print-quality
     printer-resolution
     sides

The notion of a form requires printing system support (or you
have to do it individually for each driver, which sucks), and
there are printing system implications as well (if a user asks
for a print on a form that isn't "mounted", then the job gets
held until the form is available or rejected; the driver might
only be involved to query the printer for the forms that are
installed...)

Trays (in IPP) are part of the media or media-col attribute,
as applicable.

>   + Should we use
>        - one existing standard
>           PWG well known values
> (http://www.pwg.org/schemas/sm/latest/MediaWellKnownValues.xsd)
>        - two or more existing standards
>           PWG and/or JDF
>        - a new standard

Stick with one standard.  If you have two standards, you don't
really have a standard unless you force compliance with both
(which may not be possible... :)

>   + is support of the FSG's Job Ticket standard a requirement?

I would say that the job ticket is a separate entity that the
printing system needs to digest and pass only the attributes
that the driver is interested in.

> * should all JPs be passed in one call or only one JP for each call
>   (requiring multiple calls to a driver)?

 From the CUPS standpoint, we pass them all in at once.  IJS does
them one-at-a-time for their interface, but when wrapped by CUPS
we just break them up and feed them ourselves, so passing them
all at once doesn't prevent the use of internal interfaces that
only take one option at a time (or have separate calls for each
option, like GIMP-print).  However, if you only pass them one at
a time you'll need to provide a start/end interface so that the
receiver can know when it is OK to start printing.

> * can there be default job properties or must every property be set?

Allow defaults.  If you don't, then it is impossible to target a
job to multiple printers which may not have exactly the same
attribute support.

> * should we use a named pipe (or similar) to communicate to a driver or
>   can we use an API?

My advice - stick to simple interfaces that don't require special
software or OS support to implement.  Doing so in CUPS has allowed
us to run on multiple platforms with multiple driver implementations,
each with their own architectures.  APIs are nice, but the underlying
interface needs to be implementable on multiple architectures.

Most definitely do NOT provide any direct interface between an
application and the driver.  Doing so opens up numerous security
holes and will kill any notion of multi-user printing.

> * should there be different pipes for each print job or should the driver
>   be required to multiplex between the jobs in one pipe?

Don't assume that the driver is a standalone process that will be
accessed for printing each job.  That sort of implementation has
its place for specialized devices, but does not scale and is a
nightmare for code maintenance, etc.

One of the "mistakes" we made in our original printing software
(ESP Print, before CUPS) was that each driver had its IO code
compiled in, so it was possible for some drivers to support only
the parallel port, some only network, etc.  Eventually we made
a common port API that allowed us to support the same interfaces
from all drivers, but we couldn't add new interfaces without
recompiling.

The printing system manages print jobs.  The print driver prints
them when the printing system tells it to.  If you implement a
persistent driver process, it can determine when to start a job
and should be allowed to tell the caller that it is busy.  That
will allow ANY kind of implementation, whether the driver is
running in-line or as an external server that the in-line stub
(in the case of CUPS) calls.

> * should there be application presentation information that can be
>   queried?  Some examples are:
>      printable page size
>      resolution
>      current color depth
>      font metrics

Yes, and this will be part of PAPI's capabilities API.

> * can there be different job properties for each page?

Yes, there often are.

>   + Can this can be optional?

No.  Documents often contain pages of different sizes or
orientations, and a driver MUST be able to handle this.
For some (old) devices, this may involve ending the current
job on the printer itself and starting a new one with the
new attributes - the driver MUST handle this itself.

> * should we allow for future extensibility to support optional components
> of
>   a printer driver?

Yes, of course.

>   + vector graphics
> 
>     - should we use existing vector language? (SVG, PDF)

SVG and PDF are excellent formats, but are too high-level for most
vector devices.

>     - can it be multiple languages?

Not at the same time, unless the format supports it.  For example,
PDF files can contain embedded PostScript objects.

>     - should we require simulation?
>       That is if a driver only accepts bitmaps, then create a raster image
>       of the vector commands.  If a driver doesn't support rounded boxes
>       but does support arcs and lines, then break a round box into
>       multiple arc and line calls.

Yes, all supported formats should be supported on all printers.
(and this is actually easy to do with a good filter framework...)

>   + device fonts

Device fonts are a tricky issue - in general, we don't trust device
fonts for anything other than plain ASCII text, and there are limits
to the support provided by printers.  For example, only specific
sizes or orientations may be supported, so some text may be rendered
by the device, and some by the driver/RIP (and that assumes that
your device font matches the font you have on the system... :)

In our internal development testing (ah, if we only had more time!)
we found that rendering system fonts as vectors offered similar
speed/quality gains and made the interface simpler when printing
a mix of text and graphics.

> * should we have an interface to query the printer's job dialog?
>   This will allow for programmatic support of setting/querying the JPs.
> 
>      + grouping/structuring
> 
>      + constraints
> 
>      + type of data (boolean, int, float, string, password, etc)

I'm not sure I understand this question, but assuming that you
are looking for an API to populate a print dialog, the PAPI
capabilities API is what you are looking for.

The printing system should cache the cap data that the driver
supplies; in CUPS this data is stored in a PPD file, but you
could just as easily use UPDF or some other text-based format.
The advantage of using a cached version is performance (the
data is only updated when things change) and simplicity; apps
can read the cap data locally or over the network if the
printing system supports it, e.g.:

     http://cupsserver:631/printers/name.ppd

> * should we require a standard install path?
>   /usr/lib/print/driver/drivername
>   /usr/share/print/font/drivername/

This is highly printing-system dependent, and you have no guarantee
that a print driver will be a single executable, DSO, etc.

That said, it might be more productive to define a standard
command that is used to install a printer driver and its data
files (probably using a .inf or similar file that lists the
files to be installed...)  That way each printing system can
support "FSG" printer drivers in the best way possible for
that system.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Printing Software for UNIX                       http://www.easysw.com




