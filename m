Message-ID: <3E827313.5020706@easysw.com>
Date: Wed, 26 Mar 2003 22:42:11 -0500
From: Mike Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Working
 Group conference call 03/26/03
References: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com> <200303250116.h2P1GZVc009025@dsl092-065-009.bos1.dsl.speakeasy.net> <3E7FBB4F.4040503@easysw.com> <200303250242.h2P2gEia009925@dsl092-065-009.bos1.dsl.speakeasy.net> <3E807421.9050508@easysw.com> <200303260156.h2Q1udkt023508@dsl092-065-009.bos1.dsl.speakeasy.net> <3E812D30.40701@easysw.com> <200303270101.h2R11DYt001480@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200303270101.h2R11DYt001480@dsl092-065-009.bos1.dsl.speakeasy.net>
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
> That sounds like a good architecture anyway.  I don't see why the
> filter couldn't also act as an "option server" or some such, though.

You'd be forcing every driver to handle multiple requests at the
same time, or serializing requests which would invoke a serious
performance hit.  Also, keep in mind that serving a static file/
data store involves MUCH less CPU/IO than processing each query
individually.  Any solution we come up with has to scale to
thousands of printers and users.

>    Ideally we should be able to provide a GIMP-print API for
>    retrieving the driver constraints and/or put all of the driver-
>    specific data in the printers.xml file so that the driver and PPD
>    files are data driven and not hardcoded.  This would also make it
>    possible for programmatic PPD file generation - CUPS would ask
>    GIMP-print for a list of the drivers it supports along with
>    "virtual" PPD filenames, and then CUPS can have GIMP-print write
>    the PPD file in /etc/cups/ppd as requested by the administrator.
> 
> Any suggestions from your experience what kind of constructs might be
> good for this purpose?

You already have most of the data in structures right now - just move
it to the XML file and add the constraint data.  The PPD file then
just needs to reference the instance in the XML file (e.g. driver
name, ID, etc., like we already have...)

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


