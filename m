Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
Message-ID: <OF4BF4618E.E89D829F-ON85256C8B.004AEB25@pok.ibm.com>
From: "Pete Zannucci" <pzaan@us.ibm.com>
Date: Tue, 10 Dec 2002 09:18:59 -0600
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
Cc: Yasumasa TORATANI <toratani.yasumasa@canon.co.jp>


Yasumasa TORATANI wrote:

> Yes, and I suppose it might be better, for instance,  in case of
> the printing data being blocked due to the buffer full or some
> error, such as no paper, while the driver writes the printing
> data into the pipe. I suppose the driver can't read the printer
> info from the backchannel under the single process when it's
> blocked, but the driver doesn't have to read any printer info
> from the backchannel pipe with another process or thread of
> the driver, since the printer info which affects the printer data
> generation should be obtained once before each printing, and
> probably, printer error and other info should be obtained by
> another process separately.

> For instance, the bi-di plug-in module, if it is a separated
> process from the driver and backend, the bi-di plug-in can
> read the printer info from the printer and send it back to the
> upper system periodically via another path, such as stderr,
> and user can see the printer info.

> So, one process for generating and writing the printing data,
> and another process for reading the printer status is the point.

Blocking issues and async. communications to a print job were
precisely what I am worried about.  That is why I stated previously
that multiple threads or processes would be very helpful.  Printer
alerts and other info could be gathered async. to the print job.
The issue that really would need to be addressed is the "send it
back to the upper system periodically via another path".  That path
would need to be designed into the print and rendering system.

As far as a bidirectional plug-in, it would be nice to have a single
interface for plugging in protocol support so that the same info.
and interfaces are used in the system.  The underlying printer
communications protocol can be hidden.  A single backend (transport)
and spool interface could be defined so that smaller components
could be used (would be nice).  The more modularized the architecture
can be made, the less individual code and testing will be required.
Perhaps it could be started with a custom backend grouping of interfaces
for a bidi plug-in along with defining what data might be needed where,
such as error recover, status, power off/on alerts, etc.  Once we
are sure what components would need what particular pieces of data
then we what would really need to be added to the system.

Since CUPS has a major portion of what is already needed, we should
start looking what would need to be extended, if anything.

Much of the work would be designing a backend architecture to support
plugins.  That would be a good beginning utilizing the basic CUPS
infrastructure.


Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com



