Subject: Re: [Printing-architecture] Bi-di plug-in functionarities
Message-ID: <OF69D15E56.869D8C9E-ON85256C87.0057F781@pok.ibm.com>
From: "Pete Zannucci" <pzaan@us.ibm.com>
Date: Fri, 6 Dec 2002 10:10:32 -0600
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

> FWIW, in CUPS #3 is normally handled by the backend (in CUPS 1.1
> and earlier) and/or by the driver (in CUPS 1.2), the idea being
> that the same commands/protocols will generally be used over
> serial, parallel, USB, and network connections, and since the
> driver has a copy of the device URI (the device for the printer)
> it can tailor its input/output accordingly.

With using backends, how do we handle spool information that may
be needed to do recovery, restart a job, rerender a page, and possibly
manage other asynchronous events that may need to be mananged?

I realize there may be potential security issues but in my diagrams
I attempted to allow for management of the spool system and rendering
along with async. data manipulation.  Is there any easy way with CUPS
to provide similar function so that we don't end up with issues such
as jobs disappearing along with providing robust recovery from errors?

This direction, especially error recovery and job tracking, has been
a hot button with corporate customers in the past and generated into
a much more integrated solution for bi-di support.

Thanks,


Peter Zannucci

IBM Linux Technology Center
Open Source Software Development
Omni Print Project http://sourceforge.net/projects/omniprint
Austin, TX - Tel. 512-838-4687 (t/l 678) pzaan@us.ibm.com




