Return-Path: <mike@easysw.com>
Message-ID: <44C4DF12.3030704@easysw.com>
Date: Mon, 24 Jul 2006 10:54:10 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <44BFD8AA.8060502@sun.com>
	<44BFDD7A.6000303@gmail.com>	<44BFEAE9.4060703@easysw.com>
	<44C4C7A0.1000703@gmail.com>
In-Reply-To: <44C4C7A0.1000703@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] resend notes from last week
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Wendy Phillips <wendy.phillips@sun.com>, printing-architecture <printing-architecture@freestandards.org>, "Printing-Sc (E-mail)" <printing-sc@freestandards.org>

Till Kamppeter wrote:
> ...
> Does this mean that putting a third-party CUPS filter into
> /usr/lib/cups/filter/ is no violation of FHS?

Technically yes, since they aren't part of the standard printing
system.  That said, there is a long history of putting drivers
(or interface scripts, or filters, etc.) in /usr/share, so it
might make sense to add a grandfather clause for this, or make
it one of several possible directories - OS vendors put them in
/usr/share, other vendors in /opt/printing/share, local drivers
in /usr/local/share, etc.

> Would then putting a driver and its PPD into the directories
> 
> /usr/share/ppd/<supplier>/<manufacturer>/
> 
> and
> 
> /usr/lib/printdrivers/<supplier>
> 
> because these directories are a core part of the OS?
> 
> Or do we still need the alternative location /opt/printing/?

I'd say to support both - /usr for OS-supplied stuff, /opt and
/usr/local for locally-installed stuff.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com

