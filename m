Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=dv9ClGdPPf/8SjetOhsEyprAXnI1K8hD5ZHLFdRVFRc=;
	b=v9omjRh2toFGClm6Rpewg9c7PjHgYVAEHMREJ8IptjOQ058KXeMVb+3c8q7K+fWe1C
	xnsxmG3Ag2tTHt+Oja6akyjZ15p3I72axLGvvsjM+XrpZrgVoaO0Ibavu7I8fY63AvBv
	FFKfpHgQv9Yi8C+3CZCZQCdDA78Re8d0UzZwRtKN+Cu1kXFMi572pubWuOo1AAz52Now
	hduWsMAfwkiVDzX5pJ31sa5iXSdzB219tWpkljo8irHN7tDbqrl9cVqs3Y1hcMDJnOK5
	ZMQqVg0c1hxaoaZZgXt87Kq9cz7yXL3coQutFiK8Q/8ViVM93mPbxjB1Z123N7yVidaX
	oNyA==
Message-ID: <524A9360.3010402@localhost.localdomain>
Date: Tue, 01 Oct 2013 11:18:24 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS "make test" dependent on cups-filters
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Didier Raboud <odyx@debian.org>

Hi,

I want to report a problem of CUPS 1.6.4 and 1.7rc1 which should get
fixed in 1.6.5 and 1.7.0 final.

The problem is the build test procedure triggered by running "make test"
(or "make check"). It has the following problems:

1. It depends on the installed cups-filters package. Especially if I add
or remove filters the test in the cups package needs to get adapted.
Also some tests do things requiring the presence of cups-filters, like
printing an image file on a virtual PostScript printer. A build test of
a package should only depend on the content of the package itself. If an
IPP conformance tests is shipped with CUPS it should be separate, for
example an "ipptest" command line utility, usable at run time.

2. The tests fail if cups-filters is in its default configuration, which
has cost factors set in a way that if the input is PostScript and the
printer is PostScript, the pstops filter (part of CUPS) is called
instead of the awkward detour pstopdf->pdftopdf->pdftops. If the cost
factors in cups-filters are changed so that pstopdf->pdftopdf->pdftops
the tests succeed in this case.

See the following Debian bug report about which tests fail:

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=712237#20

a complete log is attached to the bug report.

What needs to get fixed is either pstops or the test suite. Letting the
cost factors for the filter chain doing an awkward detour which makes
many jobs fail is not a real solution.

   Till
