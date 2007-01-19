Return-Path: <mike@easysw.com>
Message-ID: <45B12967.1000504@easysw.com>
Date: Fri, 19 Jan 2007 15:26:15 -0500
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <45B11475.4080704@gmail.com>
	<d75d8d530701191131o5b0ebdb9k5933705633cd1e49@mail.gmail.com>
In-Reply-To: <d75d8d530701191131o5b0ebdb9k5933705633cd1e49@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] FHS extension and CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Ian Murdock <imurdock@imurdock.com>
Cc: printing-architecture@lists.freestandards.org, Dan Kohn <dan@dankohn.com>, lsb-discuss <lsb-discuss@lists.freestandards.org>, Till Kamppeter <till.kamppeter@gmail.com>

Ian Murdock wrote:
> I'm appending a conversation I had with Tim Waugh of Red Hat about this
> (posted with his permission). In short, unless it's a very trivial change
> to make the current RHEL 5, SLE 10, etc. compliant with the printer driver
> standard, it is not reasonable to expect this to be in LSB 3.2 (it was
> my understanding that it would be trivial, as you'll read in the included
> exchange). It should go without saying that it's not reasonable
> to expect them to uplift to something that hasn't even been released yet.
> 
> In short, the only way this will make it into LSB 3.2 is if it's trivial
> to implement, i.e., a change to the CUPS configuration or the creation of
> symlinks. If it takes more than that, this will have to wait for LSB 4.0.
 > ...

OK, for PPD "paths", I would recommend simply making symlinks in
/usr/share/cups/model so that CUPS can find the PPD files.  That
works with current CUPS and all the way back to the 1.0 release.

Another method would be to provide a separate CUPS driver interface
program that scans the FHS PPD directories, but IMHO that is
overkill and completely unnecessary.

FWIW, I *do not* support the notion of a "relative" PPD name that is
then looked up in a specific order of directories.  That is, adding
a printer using a PPD file called "foo.ppd" should always use the
same PPD file - otherwise you can run into a lot of issues ranging
from simple confusion to security problems.  The separate system/
local/vendor directories do not prevent a user/administrator from
choosing a locally-modified PPD, and part of those modifications can
be to the NickName so that the local users realize that the modified
PPD is the one they want, e.g. "HP LaserJet 4000 - Use This One".

Similarly, LSB printer drivers should specify their install
path in the cupsFilter attribute unless they are using a
standard CUPS-supplied driver, currently rastertoescpx,
rastertoepson, rastertohp, rastertolabel, or rastertopclx.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com

