Message-ID: <3EE8CCA6.6070700@easysw.com>
Date: Thu, 12 Jun 2003 14:55:34 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Architecture meeting agenda 20030612.
 . .
References: <Sea2-F67CjOuF1Qp4hZ000315aa@hotmail.com>
In-Reply-To: <Sea2-F67CjOuF1Qp4hZ000315aa@hotmail.com>
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
To: Charles Hemstreet <charles_at_hp@hotmail.com>
Cc: printing-architecture@freestandards.org

Charles Hemstreet wrote:
> New meeting time for our architecture teleconference:
> ...
> ftp://ftp.pwg.org/pub/pwg/fsg/architecture/arch1-6-12-03.jpg
> 
> ftp://ftp.pwg.org/pub/pwg/fsg/architecture/arch2-6-12-03.jpg

As I can't attend any of the teleconferences due to scheduling
conflicts, here are some comments on the current diagrams:

     1. The diagram separates the bidi handling from the driver,
        which won't work for several consumer inkjet devices that
        I personally know of.  Either remove this box or put it
        in-line so that the output from the printer driver can be
        massaged by the vendor filter.

        Example: the EPSON inkjet printers use a special packet
        mode via USB or parallel port to provide continuous status
        updates; this special handling can be put in a "monitor"
        filter in-line between the driver filter and backend to
        packetize the output and provide ink status, etc. as the
        job is printed.  If you implement it the way the diagram
        is, then the driver has to do all of the device-specific
        stuff (and that device-specific stuff varies based upon
        the interface, and it isn't always possible to automatically
        determine the right mode - it needs to be configurable)
        and the back-channel filter somehow needs to be able to
        send as well as recieve data without trashing the driver's
        output.

     2. There absolutely cannot be a direct link between a device
        backend or vendor filter and a vendor-supplied UI.  Such
        an interface opens up major security issues not to mention
        that it likely won't work in a networked environment and
        will kill any interoperability.

        Any driver/filter communications should be in the form of
        state information that is communicated to the scheduler,
        which can then provide the information to apps in a
        consistent way.  Vendors can provide UIs that query this
        information, and the *same* interface can be used by all
        vendors.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Printing Software for UNIX                       http://www.easysw.com




