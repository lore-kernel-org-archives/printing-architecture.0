Message-ID: <3DEEA39F.6030506@easysw.com>
Date: Wed, 04 Dec 2002 19:53:51 -0500
From: Mike Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Re: [printing-announce] Open Printing
 activities in Japan
References: <OF7135B2AD.549029E4-ON85256C85.007FAE5D@pok.ibm.com>
In-Reply-To: <OF7135B2AD.549029E4-ON85256C85.007FAE5D@pok.ibm.com>
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
To: Pete Zannucci <pzaan@us.ibm.com>
Cc: printing-announce@freestandards.org, printing-architecture@freestandards.org

Pete Zannucci wrote:
> ...
> What type of support do you have for bi-directional communications?
> Does it handle the different protocols from each of the different
> vendors since they all provide information in different ways.

CUPS 1.2 provides two pipes - one that goes forward to the backend
and one that comes back from the backend.  The backend sends data
from the filters to the printer, and any printer data back to the
filters over the "back" pipe.  Here is a simple ASCII diagram for
a typical PostScript print job to an HP PCL printer:

          +<===========+<============+<===========+
       pstops----->pstoraster--->rastertohp--->backend

Each of the "forward" pipes (stdout) goes to the next filter in
the chain until the data gets to the backend.  The "back" pipe
sends backchannel data as-is to *all* of the filters; typically
only the last filter (the printer driver) is involved.

The CUPS API has two new functions: cupsBackChannelRead() and
cupsBackChannelWrite() that implement read and write of the
pipe with timeouts, so that drivers that want to try bidi can
do so without hanging on a non-bidi interface, and similarly
for a backend to write backchannel data to filters that aren't
expecting it.

> The diagram I put together isn't cast in concrete but it did provide
> a way for each vendor to provide specific protocol support through
> a defined print system interface from a module that knows the specifics
> of their individulal protocols.  If the layering isn't what is needed
> and we can actually make one generic interface for all that is fine by me.

IIRC, the only question in my mind was how that interface would
work with the CUPS one, which is managed by the scheduler and
limits bidi communications to "registered" filter programs.  Your
diagram includes communications with UIs and other programs, which
poses many security and implementation issues which need to be
addressed - security because you don't want to provide unrestricted
access to the printer directly (aside from potentially messing the
printer up, it also allows the user to bypass accounting and other
access limits that might be in place), and implementation because
whatever interface you come up with needs to be network and interface
transparent.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products                  mike@easysw.com
Printing Software for UNIX                       http://www.easysw.com


