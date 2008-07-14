Date: Mon, 14 Jul 2008 16:51:07 +0200
From: Klaus Singvogel <kssingvo@suse.de>
Message-ID: <20080714145107.GC31522@suse.de>
References: <485AD507.4050300@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <485AD507.4050300@gmail.com>
Subject: Re: [Printing-architecture] Printer setup tools: Automatically
	choose the correct backend
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
Cc: Tim Waugh <twaugh@redhat.com>, David Suffield <suffield@hp.com>, printing-foomatic@lists.linux-foundation.org, Printing-japan <printing-japan@lists.linux-foundation.org>, printing-architecture@lists.linux-foundation.org, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>

Till,

Till Kamppeter wrote:
[...]
> 
> *cupsReplaceURI: "usb://HP/LaserJet(_|%20)42\d\d hp:/usb/HP_LaserJet_42\d\d"
> 
> Here we do not use model info from the "lpinfo -l -v" output. The 
> printer setup tool should match the first regexp against the user-chosen 
> URI and the search the "lpinfo -v" output for an URI matching the second 
> regexp.

This is not regex, it's perl extended regex you're using here. Maybe
we run into trouble, if we extend CUPS tools by perl too.

We might want to use POSIX regex please, as defined in regex(7)?

I think, the rest of the discussion has to be answered by the author
of "lpinfo" (= CUPS team). It's fine with me, if we extend CUPS in
such a way.

Regards,
	Klaus.
-- 
Klaus Singvogel  -  Maxfeldstr. 5  -  90409 Nuernberg  -  Germany
Phone: +49-911-74053-0
GnuPG-Key-ID: 1024R/5068792D  1994-06-27
SUSE LINUX Products GmbH,  GF: Markus Rex,  HRB 16746 (AG Nuernberg)
