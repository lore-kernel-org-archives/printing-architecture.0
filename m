Sender: jacobs@printing.Eng.Sun.COM
Message-ID: <40240483.B2A8686@Sun.COM>
Date: Fri, 06 Feb 2004 15:17:55 -0600
From: Norm Jacobs <Norm.Jacobs@Sun.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] PAPI Source code on SourceForge
List-Id: Printing architecture under linux
	<printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
To: printing-announce@freestandards.org, printing-spool@freestandards.org, printing-architecture@freestandards.org


FWIW

I have imported a bunch of PAPI source code into CVS on SourceForge
under
the "openprinting" project.  You can get to the SourceForge openprinting
project page via http://sourceforge.net/projects/openprinting
from there you can browse the CVS repository and/or get complete 
instructions on how to download code.

The short version is that
  $ cvs -d:pserver:anonymous@cvs.sourceforge.net:/cvsroot/openprinting
login 
  $ cvs -z3
-d:pserver:anonymous@cvs.sourceforge.net:/cvsroot/openprinting co papi
should get you a copy of code.

Since Shawn Pratt is the only listed project administrator for the
openprinting project on SourceForge and his email bounced, I have
initiated a "takeover" request for the project so that I can
administrate it (add administrators/developers/content/...).  In the
meantime, here are some specifics about what I have delivered.

I have dropped two PAPI library implementations and a client
implementation into CVS.

papi/papi-lib-dynamic
	This library implements all of the functions in v0.91 of the
	specification, but doesn't communicate with a particular backend
	print service or protocol.  It provides naming lookup support for
	printer configuration and dynamically redirects PAPI calls to the
	configured backend PAPI implementation.  The naming support uses
	the name service switch on Solaris and does a crude emulation of
	it on "other" platforms.  It also supports the use of URI style
	printer names (lpd://server/queue, ipp://server/printers/queue,
	etc.).  In the event that a URI is used, the uri scheme is used
	to dynamically load the backend PAPI implementation.  Without
	additional PAPI implementations installed, this module is of no
	real interest other than an example or skeleton to build a PAPI
	implementation from.  The papi-lib-dynamic code was contributed
	by Sun Microsystems, Inc.

papi/papi-lib-cups
	This library appears to implement v0.9 of the specification over
	libcups (mostly the IPP support in libcups).  It was originally
	written on top of libipp (an offshoot of libcups that IBM was
	working on).  I was unable to locate a copy of libipp, so I made
	a few modifications to the code to build under libcups.  I also
	fixed a couple of minor bugs and added some of the v0.91 interface
	calls to the code.  I have been able to use this module to
	communicate with a CUPS server as well as the IPP server Apache
	module that I have implemented on Solaris.  The papi-lib-cups code
	was contributed by by IBM.

papi/papi-clients-bsd-sysv
	This part of the tree implements support for the BSD and SYSV end-user
	printing commands on top of the PAPI.  The implemented commands
	include lpr(1b), lpq(1b), lprm(1b), lpc(1M), lp(1), lpstat(1),
	cancel(1), accept(1M), reject(1M), enable(1M), disable(1M), and
	in.lpd(1M). The implementations are reasonably complete and should
	be pretty good examples of how to the the PAPI.  The in.lpd(1M)
	implementation is still missing some functionality.  The
	papi-clients-bsd-sysv code was contributed by Sun Microsystems, Inc.

All of the code uses Autoconf/Automake/Libtool to build.  You should
be able to build/install with:
	$ sh ./autogen.sh --prefix=/opt/papi
	$ make install
build and install a library first, then the clients.  I have
built/installed
on Solaris and Linux.  Things appear to be working, but I'm sure that
there are issues to be addressed.

We have an IPP listening service on top of the PAPI implemented as an
Apache module.  We are planning on dropping that code into CVS soon.
Also, we are finishing up a PAPI implementation on top of RFC-1179 that
doesn't require applications to have special privilege to use (mere
mortals can contact a remote RFC-1179 based print service via a reserved
port).  PAPI over IPP is in the plan and will likely use the IPP support
from the Apache IPP listener module, but we need to find an http library
to use first.

Anyway, I will send out another email when the SourceForge issue is
resolved.  I had hoped to get this all done yesterday afternoon, but
there are never enough hours in the day and there is an issue with
the CVS server right now, so the CVS repository wasn't available for
web browsing or anonymous pserver access until about 10 minutes ago.

		-Norm

