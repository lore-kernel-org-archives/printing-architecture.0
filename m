Message-ID: <3E826CE6.7010904@easysw.com>
Date: Wed, 26 Mar 2003 22:15:50 -0500
From: Mike Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] FSG Printer Working Group meeting notes
 03/26/03
References: <OF681B092B.0DF4A39F-ON86256CF5.0081DB93-86256CF5.008305E7@us.ibm.com>
In-Reply-To: <OF681B092B.0DF4A39F-ON86256CF5.0081DB93-86256CF5.008305E7@us.ibm.com>
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
Cc: printing-driver@freestandards.org, printing-architecture@freestandards.org

Mark Hamzy wrote:
> ...
> Yes. Supporting the key=values from the JT is a requirement. This
> would lead us to consider the JT keys and values as the standard to
> use. We need to make sure that all printer drivers have either a
> mapping from their old keys/values to the new JT keys/values or
 > have their keys and values added to the JT standard.

Better to define a standard mechanism for vendors to add their own
attributes, e.g. com.vendor.attr.

Also, I'm not clear if you are advocating using the subverted IPP
names (e.g. documentFormat instead of document-format?) instead?
If so, that will be a hard sell - we already have to map IPP
attributes to PPD options...

> ...
> One worry is size of data if all are passed in at once.  One
 > solution that is proposed is to query the driver for the number
 > of key/values that can be passed in one call.

I think it will be a lot better to just require drivers accept
data of arbitrary size; drivers can read/process attributes
incrementally on their own, and if a driver only supports a very
small buffer then some attributes may be lost (no way to send a
long attribute if the buffer is too small...)

 > ...
> New issues that occurred during the meeting:
>    * should there be API to set/query default job properties?
> 
>      Yes.

papiPrinterQuery() already supports this...

> ...
>    * should we use a structured data message format?
> 
>       + should it be
>          - XML
>          - a simple human readable ASCII string encoding
>          - binary
>             ~ big-endian/little-endian
>             ~ 8-bit clean
> 
>       + should it have a length in the structure?
> 
>          - 20-octet end-of-string marker instead of sizeof structure

PAPI defines a format for ASCII attributes; from the standpoint of
passing command-line arguments, etc., using this format would make
sense, and it maps cleanly to XML and/or IPP data streams.

> ...
>>* can there be different job properties for each page?
>>
>>  + Can this can be optional?
> 
> 
> Yes.  If a device cannot handle switching job properties on a new page,
> then
> the driver should stop the print job and start another one.

Note: this MUST be transparent to the print system and application,
so in the end per-page properties are not optional, and the driver
MUST support per-page properties by starting a new job.

> ...
> Unicode font metrics can be a large message.

It might be useful to include the range of interest, e.g. "give me
font metrics for chars 0 to 255".

> ...
>>* should we require a standard install path?
>>  /usr/lib/print/driver/drivername
>>  /usr/share/print/font/drivername/
> 
> 
> This question was asked because we need some method of detectability or
> discoverability of installed drivers.  This can be as simple as an ini file
> that is found at a certain location.  This file can contain:
>    - what driver is installed
>    - where it is located
>    - how do I communicate with it

As I mentioned before, a better interface would be to provide a
standard command that can be used to install one or more printer
drivers in a standard format; this command would then handle the
printing system specific installation stuff.

> Future issues are:
>    - should there be calls to the driver to notify when the driver is
>       + installed
>       + uninstalled
>       + upgraded

Aside from actual installation/removal/upgrade of the software
itself, there could also be an issue with initial device
configuration when the printer is connected and queue is setup
for the printing system (e.g. for CUPS to query the printer and
update the PPD file for installed options...)

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


