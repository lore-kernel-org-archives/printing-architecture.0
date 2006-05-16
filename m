Return-Path: <toratani.yasumasa@canon.co.jp>
Date: Tue, 16 May 2006 14:26:16 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
In-Reply-To: <4468BEE7.80501@gmx.net>
References: <20060515183801.A638.TORATANI.YASUMASA@canon.co.jp>
	<4468BEE7.80501@gmx.net>
Message-Id: <20060516134006.A673.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: [Desktop_printing] Re: Trying out
	sample implementation of japanese OpenPrinting efforts
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmx.net>
Cc: printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

On Mon, 15 May 2006 19:48:23 +0200
Till Kamppeter <till.kamppeter@gmx.net> wrote:
(snip)
> Now the glue code could check the presence and the linkability of the
> driver library. If it succeeds to link it, it works with directly linked
> driver. If it does not succeed, it looks for the driver's server
> executable and runs it. If there is no server executable but a driver
> library which the renderer cannot link with or is not allowed to link
> with, it calls its own generic server executable and lets this one with
> the driver library.
> 
> Please tell me whether these suggested improvements are feasable and if
> not, why not. Especially I would appreciate very much if we could do
> away with the /usr/lib/opvp_rpc_<driver>.so.0.0.1.

I'm really appreciate your great effort! I will suggest to the Japan side
development team to apply your patch into the opvp code stuff.

> >>I also would like to know whether the OpenPrinting vector driver has a
> >>way to cleanly cancel jobs. Is the job cleanly shut down when sending
> >>SIGTERM to GhostScript?
> > 
> > Currently, it depends on the driver side implementation.
> > If the driver needs the signal handing feature for particular signal code, driver
> > has to prepare the signal hander for doing it. If the driver is a RPC type one
> > and needs to deal with some kind of signal, both the client and server driver
> > may have the signal handler.
> 
> Can we add a function for this into the API (which is called by the glue
> code when the renderer receives SIGTERM)? It would be very useful if the
> driver runs in a separate process. So a SIGTERM to the renderer could
> call this function in the glue code and then an appropriate command gets
> via RPC to the driver. And if the driver is linked directly nothing else
> than the function being called directly happens, as with any other
> driver function. This way the driver shuts cleanly down without any
> extra code with renderer wrapper (CUPS filter) needing to find out what
> the driver process is.

We will discuss this issue on the japan side mailing list.
I guess you need a single job cancellation, and do not have to support
multiple StartJob/EndJob/CancelJob, is it correct?

-----------------------------------------
TORATANI Yasumasa
Software Engineering Dept.22
Platform Technology Development Headquarters, CANON INC.

