Return-Path: <jsmeix@suse.de>
Date: Tue, 7 Jul 2015 16:16:11 +0200 (CEST)
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <m3egkk5ft5.fsf@carbon.jhcloos.org>
Message-ID: <alpine.LNX.2.00.1507071604010.29822@nelson.suse.de>
References: <559B2849.7060907@gmail.com> <m3egkk5ft5.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
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
To: James Cloos <cloos@jhcloos.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Debian-printing@lists.debian.org, Till Kamppeter <till.kamppeter@gmail.com>


Hello,

On Jul 7 08:10 James Cloos wrote (excerpt):
>>>>>> "TK" == Till Kamppeter <till.kamppeter@gmail.com> writes:
>
> TK> I am thinking about joining [ippusbxd] into the cups-filters
> TK> upstream package to not have too many tiny packages to make up the
> TK> complete printing stack and cups-filters contains all
> TK> manufacturer-independent software for communication with printers
> TK> which is not part of CUPS itself.
>
> Be sure, if you do, to note the licensing issues for all of those who
> packages cups-filters for distributions.
>
> And also make sure that nothing which derrives from Mike's code ever
> inter-links with anythig which derrives from Daniel's, since the
> licenses are incompatible.  (GPL2 vs Apache2).

As far as I know (but I am not a lawyer) the crucial terms here are
"mere aggregation" versus "combining two modules into one program"
in the GPL2, see
https://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html#MereAggregation

As far as I know (but I am not a lawyer) it does not make a difference
when GPL2 sources and sources with an incompatible license are in one
same tarball versus when they are in different tarballs.

As far as I know (but I am not a lawyer) one can have GPL2 sources
and sources with an incompatible license in one same tarball without
causing a GPL2 license issue when both parts are separate programs.


Kind Regards
Johannes Meixner
-- 
SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,
Dilip Upmanyu, Graham Norton - HRB 21284 (AG Nuernberg)

