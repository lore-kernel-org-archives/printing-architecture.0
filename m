Message-ID: <3DFA515A.1070107@easysw.com>
Date: Fri, 13 Dec 2002 16:30:02 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Lower level diagram update (bidi update)
References: <OFC9AAF355.096AA195-ON85256C8E.006B3739@pok.ibm.com>
In-Reply-To: <OFC9AAF355.096AA195-ON85256C8E.006B3739@pok.ibm.com>
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
Cc: printing-architecture@freestandards.org, toratani.yasumasa@canon.co.jp

Pete Zannucci wrote:
> ...
> Capabilities is another subject altogether.  Since using .ppd
> files is the current implementation under CUPS, nobody has
> really started to discuss how to tie in dynamic capabilities
> from either a printer or a driver into the system.

Actually, several vendors have implemented this within CUPS by
actually updating the PPD file on-the-fly with the current
printer configuration.  The interface is straight-forward and
allows for a (relatively) small static representation of the
current capabilities which provides extremely fast access to
the information with little overhead.  Updates can be made
asynchronously via background processes or at print time.

 > ...
> It would be nice if our solution didn't need to have multiple
> drivers configured between systems and worry about keeping them
> all in sync. if wanted to get the properties in a networked
> environment. This will likely be up for debate when we start
> working out the issue of client vs. server side rendering though.

One of CUPS's major "selling" points is that the clients don't
maintain a local copy of the printer configuration, just the
basic information (URI, name, description, location, make/model,
type) to allow the user to choose the printer.  The client then
grabs the current PPD file for the printer via HTTP and/or gets
additional IPP attributes directly from the server for that printer
queue.

Another advantage of this architecture is that it can also support
client-side rendering assuming that client has the driver programs
locally installed - the PPD file determines what filters are run
and how they interact with the device.  Unfortunately, client-
side rendering does not allow for bidirectional communications
with the printer, and that is something we will *not* be adding
to CUPS for (obvious) security reasons, so the client-side rendering
might be limited to the PS/PDF/image RIP'ing, although the overhead
of transferring raster data over the network is prohibitive...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com

