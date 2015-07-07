Return-Path: <jsmeix@suse.de>
Date: Tue, 7 Jul 2015 10:47:54 +0200 (CEST)
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <559B2849.7060907@gmail.com>
Message-ID: <alpine.LNX.2.00.1507070851290.23307@nelson.suse.de>
References: <559B2849.7060907@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Debian-printing@lists.debian.org


Hello,

On Jul 6 22:15 Till Kamppeter wrote (excerpt):
> ippusbxd is a daemon to support IPP-over-USB printing
...
> I am thinking about joining it into the cups-filters
> upstream package to not have too many tiny packages
> to make up the complete printing stack

What would be a real drawback of "many tiny packages"?

Personally I would prefer "many tiny packages"
because I favour the traditional KISS principle
(to be read here as "keep it small and simple").

A consequence of the KISS principle is to keep separated
things separated.

"Keep separated things separated" is what I actually
would like to have. For me it does not matter how big
(or small) one single separated thing is.

The basic reason why I think that separated things
should be kept separated is that this makes it much
easier to maintain all of them.

I think it is easier to find volunteers who like to work
on a single piece of their current personal interest
when that piece of interest is provided as a separated
piece of software that is (relavtively) easy to understand.
In particular compile-time requirements are smaller for
separated things which makes it easier to work on them
(the edit->compile->install->test cycle is simpler).

In contrast a big (possibly convoluted) all-in-one monster
needs an universal genius who likes to tame such a beast.

When separated things are kept separated it requires that
interdependencies between those things are maintained.
This is more work but it ensures that interdependencies
are kept obvious. When separated things are kept separated
one cannot accidentally make convoluted code full of hidden
interdependencies that nobody understands after some time
(i.e. where a fix here lets it break there).

I assume ippusbxd is separated from the current cups-filters
software so that - from my point of view - ippusbxd should
be provided in its own "tiny package".

For example - as far as I know - also cups-browsed is
separated from the rest of the cups-filters software
so that cups-browsed should be split from cups-filters
into its own "tiny package".

Also the backends in cups-filters are probably separated
from the rest so that they could be split into their own
"cups-backends" package. Strictly speaking each backend is
separated from the other backends but having a separated
package for each of them would be stretching it too far
(cf. GNU coreutils).

Assume different separated things all need some common
funcionality (e.g. think about some common funcionality
how to interact with CUPS). Then it would be cleaner when
the common funcionality is not implemented independently
in each of the separated things but split out into a
separated "common funcionality" thing (e.g. a run-time
library or as common source like Gnulib).

Furthermore I assume that what starts as "tiny package"
will grow over the time because usually more and more
functionality will be added so that "tiny packages"
usually become "normal packages".
Imagine the final result when each of them would grow
inside a single "all-in-one package".


Kind Regards
Johannes Meixner
-- 
SUSE LINUX GmbH - GF: Felix Imendoerffer, Jane Smithard,
Dilip Upmanyu, Graham Norton - HRB 21284 (AG Nuernberg)

