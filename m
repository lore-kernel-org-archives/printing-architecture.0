Subject: Re: [Printing-architecture] Architecture meeting agenda 20030612. . .
Message-ID: <OFA0EACA90.5E8CD368-ON85256D44.00489948@pok.ibm.com>
From: "Pete Zannucci" <pzaan@us.ibm.com>
Date: Fri, 13 Jun 2003 08:41:17 -0500
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

Michael Sweet wrote:


> The diagram separates the bidi handling from the driver,
> which won't work for several consumer inkjet devices that
> I personally know of.  Either remove this box or put it
> in-line so that the output from the printer driver can be
> massaged by the vendor filter.

        > this special handling can be put in a "monitor"
        > filter in-line between the driver filter and backend
        > to packetize the output and provide ink status, etc.

You're correct Michael.  I had used the lines coming from the
driver going back to the spool system as really just an api/
interface to the backend (the possible owner of the library
that supports the common backend interface.  So in fact,
the bidi work would be done by the monitor.  I simplified it
because there are likely multiple users of the data and put
it in as an interface back through the spool system.  I will
try and think of a way to clarify it.

> There absolutely cannot be a direct link between a device
> backend or vendor filter and a vendor-supplied UI.

> Any driver/filter communications should be in the form of
> state information that is communicated to the scheduler,
> which can then provide the information to apps in a
> consistent way.  Vendors can provide UIs that query this
> information, and the *same* interface can be used by all
> vendors.

The interfaces for the bidi management will definitely have
to adhere to one single api set and be plug compatible otherwise
there is no need to a bidi spec.  Everyone can do it for their
devices.  As far as the scheduler that you suggest, I envision
that as just another layer of the backend processing.  The
bidi box is to merely show that the bidi stuff should be
isolated out and should be able to plug in via a common
interface.

I didn't focus on clarifying the bidi area as much because most
of the work everyone thought needed to be done was in the upper
portion of the system and providing an API that is usable
for an application.  The key to starting this and I think the
one real reason to start with PAPI is that applications can
be easily written and portable across systems.

As we dig deeper into the other subsystems we can map them out
better.  The primary reason for doing this level of a drawing
was to try and map out areas of work and not forget where the
components lie where.

Your comments are very helpful and we can put more information
into the drawing (though it is pretty busy right now).  Then
we can start breaking the low level drawing into succinct parts
so that we truly can be sure we didn't miss anything or any
interface.

Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com





