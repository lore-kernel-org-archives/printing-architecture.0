Message-ID: <3DF501F2.3050205@easysw.com>
Date: Mon, 09 Dec 2002 15:49:54 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
References: <OF28565FA6.DC942412-ON85256C8A.00589ECA@pok.ibm.com>
In-Reply-To: <OF28565FA6.DC942412-ON85256C8A.00589ECA@pok.ibm.com>
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
> I would like to see that separate process due to a couple of issues:
> 
> 1.  Customer's like to have true status and info on the printer.
>     This would make it easier to manage async. events and alerts
>     coming from the printer (power off/on, jam, etc.)

A printer driver can query (poll) a printer for its status, but
most asynchronous notifications should be done via SNMP or similar
mechanisms outside the normal print data stream; otherwise you tie
up the printer with polling which causes problems when you have
multiple (possibly redundant) servers connected to the same network
devices.  This is a problem that plagues Windows print servers, and
we regularly have to support customers that have accessbility
problems in mixed environments.

Another issue is security/access control.  Not every admin wants
to allow an arbitrary user to access status information for a
printer, and while such security measures go beyond what many
would feel is an adequate level, they are required in sensitive
environments where such information could be used to attack,
eavesdrop, or otherwise compromise the security of the print
job.

Again, I'm not saying that it can't be done with CUPS (in fact
it is already being done for specific types of devices), but I'm
just pointing out some of the issues that will come up in
implementation that need to be designed into any interface you
cook up.  A good "network printing proxy" implementation could
use multiple protocols to get the "most bang for the buck"
without adversely affecting the accessibility of that device
from other network hosts while providing the kind of security/
access control options that will be required.

> 2.  That process would likely have the ability be be more robust
>     in error handling because if you do have two pipes and that
>     would imply separate threads to do all the management function
>     and I have see many times that a particular api call has
>     the ability to get hung which will force multiple threading.

Having two pipes does not imply the use of threads unless you are
running Windows which lacks some of the basic functionality
needed to efficiently manage multiple input/output sources from
a single thread.

Any program that does asynchronous event handling will need to
be event driven in nature and properly time-out when sending or
waiting for data.  Threading is one way of implementing this,
where each thread is doing one task and syncronizing with the
other thread(s), however an ordinary FSM works exceedingly
well as a threading replacement when responding to async IO,
and in fact that is what CUPS uses in many places, including
the scheduler and HTTP/IPP APIs.

In any case, I will reiterate once more that both a direct and
indirect backend interface will work with CUPS without difficulty.
The standard CUPS backends will (obviously) be implementing the
CUPS backchannel interface.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


