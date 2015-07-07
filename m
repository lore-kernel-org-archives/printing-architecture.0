Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1436285062;
	bh=nBvo+ZSwcZHrh/LNwExJY/88oHyGy5S2dG3gk6Fs9XM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=WnFMjiHyUujqG60zILJy9KyEJGklJVT4yET4eb1Li9DVabJuM37jzvzpxJd5es6SH
	gDXEwWNJvCr/rUsnqWZD84Z3FDYNv+T4O+CyIptJshckQiJpEe/H3f/4dnSyJzP7fP
	Pu9VVJU+oLqtHScsyw6hwW6g//0hAt2kXOsE2Qxo=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <alpine.LNX.2.00.1507071604010.29822@nelson.suse.de> (Johannes
	Meixner's message of "Tue, 7 Jul 2015 16:16:11 +0200 (CEST)")
References: <559B2849.7060907@gmail.com> <m3egkk5ft5.fsf@carbon.jhcloos.org>
	<alpine.LNX.2.00.1507071604010.29822@nelson.suse.de>
Date: Tue, 07 Jul 2015 12:02:36 -0400
Message-ID: <m38uas552b.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Upstream future of ippusbxd
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Debian-printing@lists.debian.org, Till Kamppeter <till.kamppeter@gmail.com>

>>>>> "JM" == Johannes Meixner <jsmeix@suse.de> writes:

>>>>>>> "TK" == Till Kamppeter <till.kamppeter@gmail.com> writes:

TK> I am thinking about joining [ippusbxd] into the cups-filters
TK> upstream package to not have too many tiny packages to make up the
TK> complete printing stack and cups-filters contains all
TK> manufacturer-independent software for communication with printers
TK> which is not part of CUPS itself.

JC>> Be sure, if you do, to note the licensing issues for all of those who
JC>> packages cups-filters for distributions.

JC>> And also make sure that nothing which derrives from Mike's code ever
JC>> inter-links with anythig which derrives from Daniel's, since the

JC>> licenses are incompatible.  (GPL2 vs Apache2).

JM> As far as I know (but I am not a lawyer) the crucial terms here are
JM> "mere aggregation" versus "combining two modules into one program"
JM> in the GPL2, see
JM> https://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html#MereAggregation

JM> As far as I know (but I am not a lawyer) it does not make a difference
JM> when GPL2 sources and sources with an incompatible license are in one
JM> same tarball versus when they are in different tarballs.

JM> As far as I know (but I am not a lawyer) one can have GPL2 sources
JM> and sources with an incompatible license in one same tarball without
JM> causing a GPL2 license issue when both parts are separate programs.

The package managers all show each packages' licences.  So the
maintainers need to know about any changes so they can update those
lines when packaging a new version.

And a clearly pointed out *link*ing as the thing which needs avoidance.
If, after some time, anyone looks ast the code and thinks that something
can be merged or thst one set of code could be improved by incorporating
something from the other set, they need to know the legal limitations.

I never said “don't do it”; just “take care”.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
