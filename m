Message-ID: <3EE8CEA1.4030007@easysw.com>
Date: Thu, 12 Jun 2003 15:04:01 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Print scenario
References: <OF341B5F3C.677DE0AA-ON86256D41.0072A259-86256D41.00734A57@us.ibm.com>
In-Reply-To: <OF341B5F3C.677DE0AA-ON86256D41.0072A259-86256D41.00734A57@us.ibm.com>
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
To: Mark Hamzy <hamzy@us.ibm.com>
Cc: printing-architecture@freestandards.org

Mark Hamzy wrote:
> 
> 
> 
> The following is a scenario for an application that wants to print.
> These are the steps that I think the application will perform.  What areas
> in this scenario do we need to work on/standardize?
> 
>  1 enumerate print queues
>       * Use Foomatic for this?

PAPI!

>  2 display job dialog

PAPI!

>  3 receive job properties in standardized format
>       * rely on PPD file format for this?

PPD is one source of the information, however we have already
discussed adding a format-neutral mapping of capabilities to
attributes in PAPI so that an application can use PAPI to
tailor the output to a printer, choose job options, etc.

>  4 query page presentation parameters
>       - size of page
>       - margin information
>       - resolution
>       - color/monochrome
>       - fonts
>       * parse PPD file for this information?

See above.

>  5 generate print job
>       - postscript/PDF
>       - html
>       - plain text
>       - bitmap file (png, jpg, etc)
>       - SVG file
>       * linux applications generate postscript files

HTML is not suited to printing due to its use of externally
referenced data like images.  XHTML-Print is the PWG equivalent
and supports in-line images, among other things.

The document-format-supported attribute from PAPI can and should
be used by an app to confirm that the printer/printing system can
print the file.

>  6 submit print job with job properties.  The queue processor will run some
>       transformation.  Ex: use Ghostscript to convert postscript to printer
> output.
>       * CUPS will accept postscript

CUPS will accept anything in your above list except SVG.

>  7 track print job / display status
>      - real-time display?
 >
>  8 receive end of job notification

These last two are optional IMHO - job notification is a separate
issue, and while some apps might choose to provide this, it is
more logically something that should be provided in a separate
application/monitor that runs as part of the user's window
environment.  Adding job monitoring to every app will just add
bloat in the form of increased memory usage, increased bandwidth
usage between client and server, and increased CPU usage on both
client and server.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Printing Software for UNIX                       http://www.easysw.com




