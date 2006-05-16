Return-Path: <toratani.yasumasa@canon.co.jp>
Date: Tue, 16 May 2006 17:56:22 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Subject: Re: [Printing-architecture] Re: [Desktop_printing] Re: Trying out
	sample implementation of japanese OpenPrinting efforts
In-Reply-To: <4469922E.9060301@gmx.net>
References: <20060516134006.A673.TORATANI.YASUMASA@canon.co.jp>
	<4469922E.9060301@gmx.net>
Message-Id: <20060516175222.A685.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
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

On Tue, 16 May 2006 10:49:50 +0200
Till Kamppeter <till.kamppeter@gmx.net> wrote:

> TORATANI Yasumasa wrote:
> > 
> > We will discuss this issue on the japan side mailing list.
> > I guess you need a single job cancellation, and do not have to support
> > multiple StartJob/EndJob/CancelJob, is it correct?
> > 
> 
> As far as I understand, a regular job is started with StartJob and ends
> with EndJob, no multiple calls of these functions. And I understand a
> job cancel as being done by sending a SIGTERM to the renderer and then
> the renderer catches the signal, calls CancelJob, closes the connection,
> and exits. The CancelJob function implemented in the driver library
> should close down the job in a way so that the printer gets back to
> accepting new jobs.
> 
> I do not know where multiple StartJob/EndJob/CancelJob would be needed.
> 
>    Till

Thank you so much for your comment.
We also think that we don't have to handle multiple printing jobs at the
driver level. We will discuss it on the mailing list as well as at the f2f
meeting next week.

-----------------------------------------
TORATANI Yasumasa

