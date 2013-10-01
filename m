Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <524A9360.3010402@localhost.localdomain>
Date: Tue, 01 Oct 2013 09:37:22 -0400
Message-id: <D35B622B-9999-4BFB-859C-398BF13731C3@apple.com>
References: <524A9360.3010402@localhost.localdomain>
Subject: Re: [Printing-architecture] CUPS "make test" dependent on
	cups-filters
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Didier Raboud <odyx@debian.org>

Till,

This is:

    <rdar://problem/14292998> cups.org: Test suite fails if you don't have cups-filters installed on Linux

which I filed back in June for you and Didier.

This WILL NOT be fixed for 1.6.x or 1.7.0, but will be addressed in a later release.

(and for the record, short of a major issue being reported against 1.6.4, there will not be a 1.6.5 release)


On Oct 1, 2013, at 5:18 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:

> Hi,
> 
> I want to report a problem of CUPS 1.6.4 and 1.7rc1 which should get
> fixed in 1.6.5 and 1.7.0 final.
> 
> The problem is the build test procedure triggered by running "make test"
> (or "make check"). It has the following problems:
> 
> 1. It depends on the installed cups-filters package. Especially if I add
> or remove filters the test in the cups package needs to get adapted.
> Also some tests do things requiring the presence of cups-filters, like
> printing an image file on a virtual PostScript printer. A build test of
> a package should only depend on the content of the package itself. If an
> IPP conformance tests is shipped with CUPS it should be separate, for
> example an "ipptest" command line utility, usable at run time.
> 
> 2. The tests fail if cups-filters is in its default configuration, which
> has cost factors set in a way that if the input is PostScript and the
> printer is PostScript, the pstops filter (part of CUPS) is called
> instead of the awkward detour pstopdf->pdftopdf->pdftops. If the cost
> factors in cups-filters are changed so that pstopdf->pdftopdf->pdftops
> the tests succeed in this case.
> 
> See the following Debian bug report about which tests fail:
> 
> http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=712237#20
> 
> a complete log is attached to the bug report.
> 
> What needs to get fixed is either pstops or the test suite. Letting the
> cost factors for the filter chain doing an awkward detour which makes
> many jobs fail is not a real solution.
> 
>   Till

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

