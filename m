Return-Path: <till.kamppeter@gmx.net>
Message-ID: <44907703.50807@gmx.net>
Date: Wed, 14 Jun 2006 22:52:19 +0200
From: Till Kamppeter <till.kamppeter@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] PAPI RPM implementation for Mandriva's
	Cooker
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture <printing-architecture@freestandards.org>, Norm Jacobs <Norm.Jacobs@Sun.COM>, Wendy Phillips <wendyp@sun.com>

Oi,

in todays architecture telecon we have talked about the implementration
of PAPI in the distros and my PAPI RPMs for Mandriva.

Here you find source and binary RPMs for Mandriva's Cooker and also the
source tarball (SVN rev 171) and the spec file:

http://www.freestandards.org/~till/tmp/papi/

There are no patches, all file manipulation is done with Perl. The
libraries are renamed and selected by update-alternatives (default is
IPP library for CUPS), as libpapi-dynamic does not work very well with
CUPS. This scheme should perhaps be adopted upstream for easier
integration in distros.

You also see the splitting of binary RPMs to be able to install only
needed stuff, not breaking things, and not introducing too many
dependencies.

   Till

