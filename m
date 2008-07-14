Date: Mon, 14 Jul 2008 16:45:13 +0200
From: Klaus Singvogel <kssingvo@suse.de>
Message-ID: <20080714144513.GB31522@suse.de>
References: <485AD507.4050300@gmail.com> <485B474D.9070803@gmail.com>
	<4665C7B0F1146045A32E6AA72D0D62D741A40F26@G3W0634.americas.hpqcorp.net>
	<485F46F4.5090106@gmail.com>
	<200806231052.m5NAqQp7031706@dsl092-065-009.bos1.dsl.speakeasy.net>
	<485F862A.2000401@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <485F862A.2000401@gmail.com>
Subject: Re: [Printing-architecture] [Gimp-print-devel] Printer setup tools:
	Automatically choose the correct backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: twaugh@redhat.com, printing-foomatic@lists.linux-foundation.org, david.suffield@hp.com, printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, Robert Krawitz <rlk@alum.mit.edu>, gimp-print-devel@lists.sourceforge.net

Till Kamppeter wrote:
> Robert Krawitz wrote:
> > 
> > This problem's not restricted to HP printers -- I have the same
> > problem with Epson printers.  If I turn the printer off, the queue
> > gets disabled, and then I have to manually re-enable the queue when I
> > turn the printer back on.  This is with OpenSUSE 10.3.
> > 
> 
> The queues are supposed to get turned back on when reconnecting the printer.


I know that we got a bugzilla on this topic for 10.3.
But I'm sorry, I don't know, if it has been dealt. I'm not the author
nor the responsible manager here.

But you can get the information, if you search at our bugzilla for
this entry:
        https://bugzilla.novell.com

I can tell you, that we released a bugfix for "cups-autoconf" in the
past for 10.3. - Maybe you just want to update your system?

Regards,
	Klaus.
-- 
Klaus Singvogel  -  Maxfeldstr. 5  -  90409 Nuernberg  -  Germany
Phone: +49-911-74053-0
GnuPG-Key-ID: 1024R/5068792D  1994-06-27
SUSE LINUX Products GmbH,  GF: Markus Rex,  HRB 16746 (AG Nuernberg)
