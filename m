Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
Message-ID: <OF28565FA6.DC942412-ON85256C8A.00589ECA@pok.ibm.com>
From: "Pete Zannucci" <pzaan@us.ibm.com>
Date: Mon, 9 Dec 2002 10:44:00 -0600
MIME-Version: 1.0
Content-type: text/plain; charset=us-ascii
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
To: printing-architecture@freestandards.org

Yasumasa TORATANI wrote:
> ...
> The dataflow is as following;
>
> [CUPS filters]-->[CUPS standard backend]<-->[bi-di plug-in]<-->[prt]
>
>     or
>                                   +----[bi-di plug-in]--------+
>                                   |                           |
>                                   V                           |
> [CUPS filters]-->[CUPS standard backend]------------------>[prt]
>
> Furthermore, if we make the bi-di plug-in API generic, everyone will
> be able to reuse these modules for any other printing system if they
> want.

Michael Sweet Wrote:

> Your implementation is basically making
> the CUPS backend a printer driver which talks with a separate
> daemon/process to communicate with the device.  This is certainly
> doable, but limits the use of your driver to interfaces that the
> bi-di plug-in API (instead of all devices);

I would like to see that separate process due to a couple of issues:

1.  Customer's like to have true status and info on the printer.
    This would make it easier to manage async. events and alerts
    coming from the printer (power off/on, jam, etc.)
2.  That process would likely have the ability be be more robust
    in error handling because if you do have two pipes and that
    would imply separate threads to do all the management function
    and I have see many times that a particular api call has
    the ability to get hung which will force multiple threading.

I will give you that having a separate plugin would be more complex
to manage from a driver perspective but since the implementor would
want to handle the bidi case no matter what, the non-bidi (simplistic)
case should be easy and with less overhead.

If we can adequately handle async. events, true printer status, job
tracking and error reporting/recovery with the simpler implementation
than it is fine.  I don't think it is just an interface issue if we
need to do job/page management also.


Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com




