Message-ID: <3E812D30.40701@easysw.com>
Date: Tue, 25 Mar 2003 23:31:44 -0500
From: Mike Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Re: [printing-driver] FSG Printer Working
 Group conference call 03/26/03
References: <OFC5111351.DFB34EDB-ON86256CF3.006ACF5B-86256CF3.006B2C0C@us.ibm.com> <200303250116.h2P1GZVc009025@dsl092-065-009.bos1.dsl.speakeasy.net> <3E7FBB4F.4040503@easysw.com> <200303250242.h2P2gEia009925@dsl092-065-009.bos1.dsl.speakeasy.net> <3E807421.9050508@easysw.com> <200303260156.h2Q1udkt023508@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200303260156.h2Q1udkt023508@dsl092-065-009.bos1.dsl.speakeasy.net>
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
>    (and from the CUPS standpoint, we *will not* be supporting a
>    direct scheduler<->driver interface, as that opens up serious
>    security and performance issues...)
> 
> What's the security issue?

The two main ones are:

     1. If we directly connect to the driver/library, then any buffer
        overflows in the driver/library might be exploited to gain
        root access.  Thus, we won't directly connect...

     2. If we indirectly connect to the driver/library, and do it
        "safely" with a non-priviledged user with pipes to and from
        the backend so the driver can communicate with the device,
        we run the risk of a DoS attack if more than one user wants
        to print at the same time and needs the "dynamic" driver
        data.  This also falls under the performance umbrella...

The mechanism we will be using in CUPS 1.2 is an asynchronous
device daemon with a "port monitor" facility that will allow
developers to provide printer driver filter(s) and a "port
monitor" program; the filter(s) will handle the production of
data suitable for the printer, while the (optional) port
monitor handles printer queries, data encoding, etc.  One other
task for the port monitor is periodic status updates via the
device monitor - this will allow the port monitor to update the
PPD file for current device configuration, update the printer
object for current state, etc.

> ...
> Another issue that didn't occur to me last night is that actually
> going through and computing the constraints (to generate PPD
> constraints) is expensive; in principle, genppd would have to set all
> of the option to all of the possible values to determine the legal
> combinations.  While in practice it's not that bad, it's much easier
> to determine the legal values for a given option in the context of all
> other current settings.
 > ...

I have some code we're using for the HP APDK drivers in ESP Print
Pro (those are the same ones that come in HP IJS, although the IJS
drivers are stripped down in comparison...) that may come in handy
for doing the basic constraints.  It isn't that bad for the
relatively small number of drivers we have to generate PPD files
for...

Ideally we should be able to provide a GIMP-print API for
retrieving the driver constraints and/or put all of the driver-
specific data in the printers.xml file so that the driver and
PPD files are data driven and not hardcoded.  This would also
make it possible for programmatic PPD file generation - CUPS
would ask GIMP-print for a list of the drivers it supports
along with "virtual" PPD filenames, and then CUPS can have
GIMP-print write the PPD file in /etc/cups/ppd as requested by
the administrator.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


