Message-ID: <3DED0FD2.1050703@easysw.com>
Date: Tue, 03 Dec 2002 15:10:58 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] RE:Scenarios for using the various Open
 Print API
References: <OF63108296.468827EB-ON85256C84.0058D5DF@pok.ibm.com>
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
To: Pete Zannucci <pzaan@us.ibm.com>
Cc: printing-architecture@freestandards.org

Pete Zannucci wrote:
> ...
> We need to come to a consensus on what additional types
> of information an application might need to be able to
> generate a job to it's satisfaction.  We have discussed
> how to provide printable area and margin information.
> That is a start.  Their may be other things that some apps.
> would like to know about a device and that should be added
> as a possible separate api (get all the pertinent info.
> back from a device on what it supports) or could possibly
> be added as an additional grouping of attributes.

I'm not sure if the current PWG color attributes cover this,
but providing the native colorspace as well as any profile
information for the printer/driver might be useful.  Right
now all IPP provides is a "color-supported" boolean attribute,
but knowing if the destination device/driver supports true
CMYK/N-color rendering (typically used in a production
workflow with apps like Photoshop, etc.) could be useful.

> There are two sides of adding additional attributes that
> worry me.
>       1. No protocol support for the attributes so
>          current devices will not be able to handle or
>          provide the information back on a query.

Assuming that PAPI is providing the information, it can
supplement the attributes as needed.

>       2. Since there is no support there will need to be
>          an intermediary such as a ppd or a driver when
>          using such a device.

I would say that this will be the case for the forseable
future, and unless printer manufacturers suddenly have a
cheap chipset they can put in their low-end devices, such
support will only ever be available in high-end devices.

In any case, PAPI can handle the low-level details and
provide the app with a common, consistent interface, right?

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


