Date: Wed, 26 Mar 2003 20:01:13 -0500
Message-Id: <200303270101.h2R11DYt001480@dsl092-065-009.bos1.dsl.speakeasy.net>
From: Robert L Krawitz <rlk@alum.mit.edu>
In-reply-to: <3E812D30.40701@easysw.com> (mike@easysw.com)
Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Working
 Group conference call 03/26/03
References: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com> <200303250116.h2P1GZVc009025@dsl092-065-009.bos1.dsl.speakeasy.net> <3E7FBB4F.4040503@easysw.com> <200303250242.h2P2gEia009925@dsl092-065-009.bos1.dsl.speakeasy.net> <3E807421.9050508@easysw.com> <200303260156.h2Q1udkt023508@dsl092-065-009.bos1.dsl.speakeasy.net> <3E812D30.40701@easysw.com>
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
To: mike@easysw.com
Cc: printing-driver@freestandards.org, printing-architecture@freestandards.org

   Date: Tue, 25 Mar 2003 23:31:44 -0500
   From: Mike Sweet <mike@easysw.com>

   Robert L Krawitz wrote:
    > ...
   >    (and from the CUPS standpoint, we *will not* be supporting a
   >    direct scheduler<->driver interface, as that opens up serious
   >    security and performance issues...)
   > 
   > What's the security issue?

   The two main ones are:

	1. If we directly connect to the driver/library, then any buffer
	   overflows in the driver/library might be exploited to gain
	   root access.  Thus, we won't directly connect...

Yup, that makes sense.  The driver should in any event run with the
least possible privilege.

	2. If we indirectly connect to the driver/library, and do it
	   "safely" with a non-priviledged user with pipes to and from
	   the backend so the driver can communicate with the device,
	   we run the risk of a DoS attack if more than one user wants
	   to print at the same time and needs the "dynamic" driver
	   data.  This also falls under the performance umbrella...

   The mechanism we will be using in CUPS 1.2 is an asynchronous
   device daemon with a "port monitor" facility that will allow
   developers to provide printer driver filter(s) and a "port monitor"
   program; the filter(s) will handle the production of data suitable
   for the printer, while the (optional) port monitor handles printer
   queries, data encoding, etc.  One other task for the port monitor
   is periodic status updates via the device monitor - this will allow
   the port monitor to update the PPD file for current device
   configuration, update the printer object for current state, etc.

That sounds like a good architecture anyway.  I don't see why the
filter couldn't also act as an "option server" or some such, though.

   Ideally we should be able to provide a GIMP-print API for
   retrieving the driver constraints and/or put all of the driver-
   specific data in the printers.xml file so that the driver and PPD
   files are data driven and not hardcoded.  This would also make it
   possible for programmatic PPD file generation - CUPS would ask
   GIMP-print for a list of the drivers it supports along with
   "virtual" PPD filenames, and then CUPS can have GIMP-print write
   the PPD file in /etc/cups/ppd as requested by the administrator.

Any suggestions from your experience what kind of constructs might be
good for this purpose?

-- 
Robert Krawitz                                     <rlk@alum.mit.edu>      

Tall Clubs International  --  http://www.tall.org/ or 1-888-IM-TALL-2
Member of the League for Programming Freedom -- mail lpf@uunet.uu.net
Project lead for Gimp Print   --    http://gimp-print.sourceforge.net

"Linux doesn't dictate how I work, I dictate how Linux works."
--Eric Crampton

