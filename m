Return-Path: <till.kamppeter@gmx.net>
Message-ID: <448D2CA5.906@gmx.net>
Date: Mon, 12 Jun 2006 10:58:13 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
References: <25386-cups.general@news.easysw.com>
	<1150100858.3652.6.camel@cyberelk.elk>
In-Reply-To: <1150100858.3652.6.camel@cyberelk.elk>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Another reason why we need a standard
 directory structure for printer drivers
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: lsb-f2f@freestandards.org, printing-architecture <printing-architecture@freestandards.org>

See below, Fedora/Red Hat uses SELinux as an enhanced security
infrastructure. It seems that there are set certain security policies by
the directory structure which leads to printer drivers not working when
they have files outside the places where printer drivers are expected to
be. Having standard directories for printer driver this problem should
go away.

   Till


Tim Waugh wrote today on the CUPS general mailing list:
> On Sun, 2006-06-11 at 17:10 -0400, John Benson wrote:
> 
>>Hi, this is just a post to notify people that SELinux in "Enforcing" mode on Red Hat Fedora Core 5 Linux can prevents CUPS jobs from printing. The job status shows as "stopped".
> 
> 
> Just to clarify: CUPS in Fedora Core 5 works fine with the supplied
> drivers.  The problem you have run into, and supplied a link to an FAQ
> for, is that you have installed a 3rd party (Brother) driver which for
> some reason has not taken account of SELinux in its installation script.
> 
> In general, if a 3rd party driver adds files to existing CUPS
> directories there should be nothing further to do; but in this case the
> Brother driver uses /usr/local directories.

