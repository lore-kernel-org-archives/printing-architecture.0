Message-ID: <490A6512.4000108@fakenhamweb.co.uk>
Date: Fri, 31 Oct 2008 01:53:22 +0000
From: "Alastair M. Robinson" <blackfive@fakenhamweb.co.uk>
MIME-Version: 1.0
References: <200810132357.m9DNvMRf015955@dsl092-065-009.bos1.dsl.speakeasy.net>	<4901C12D.7010200@fakenhamweb.co.uk>	<200810241134.05394.hvengel@astound.net>	<200810251458.m9PEwS6D029068@dsl092-065-009.bos1.dsl.speakeasy.net>	<49035AC2.5000000@fakenhamweb.co.uk>	<200810251857.m9PIvIdi030089@dsl092-065-009.bos1.dsl.speakeasy.net>	<4903751E.2000507@fakenhamweb.co.uk>	<200810251950.m9PJoeFa030284@dsl092-065-009.bos1.dsl.speakeasy.net>	<4903BCCF.6060308@fakenhamweb.co.uk>	<200810260049.m9Q0nTIw032617@dsl092-065-009.bos1.dsl.speakeasy.net>	<49049DC3.8000405@apple.com>	<200810261653.m9QGrk2l014877@dsl092-065-009.bos1.dsl.speakeasy.net>	<490530BC.9090803@apple.com>	<200810271054.m9RAsDLs001975@dsl092-065-009.bos1.dsl.speakeasy.net>	<alpine.LNX.1.10.0810281134060.17582@nelson.suse.de>	<49070C99.8000505@gmail.com>
	<49072D9F.9080801@gmail.com>	<49074E92.5020809@apple.com>	<alpine.LNX.1.10.0810290940570.3548@nelson.suse.de>
	<200810310048.m9V0mDYI005128@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200810310048.m9V0mDYI005128@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Looking ahead to 5.3
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: printing-architecture@lists.linux-foundation.org, Johannes Meixner <jsmeix@suse.de>, mike@easysw.com, gimp-print-devel@lists.sourceforge.net

Hi :)

Robert Krawitz wrote:

> I've been reading all this, but not responding; partly I've been busy
> and partly I'm curious what other folks think.

Ditto - I've been following the posts but not taking part for the last 
few days, though I have fleshed out the Wiki a little since my last mail 
on the subject.

> I'm still not a fan of requiring administrative privileges to use
> particular driver options of this kind that don't affect persistent
> state within the printer (and hence might have security implications).

Security implications are something I've been thinking about, actually. 
  In theory, it's possible for a printer to be damaged by feeding it 
pathological input.  Colour laser printers respond badly, I believe, to 
being asked to print a solid page of 100% C+M+Y+K.  Malicious 
linearization curves could potentially result in flooding an inkjet, 
too, I'd imagine.

> If something doesn't affect the system configuration or integrity it
> shouldn't require administrative privilege.

Agreed.  Our difficulty is allowing users to set these options in a way 
that makes them accessible to the driver running on the server but 
doesn't affect other users' jobs.

(Note that the current CUPS configuration as shipped by Ubuntu - at 
least in 8.04 - fails on this point.  Any user with lp privileges can 
set printer options which affect all other users.)

Oh, one other thing I've been wondering - are there currently, or are 
there likely to be in future, any printer models which support 
head-alignment, but don't have built-in persistent storage for that 
alignment?

> But I suppose I'm on the
> extreme end of maximum configurability and exposing (appropriately --
> which I might define differently from others) every possible option to
> the user, even if it allows someone to do absolutely absurd things.

"UNIX was not designed to stop its users from doing stupid things, as 
that would also stop them from doing clever things."  --  Doug Gwyn

> But there is a free RIP around Gutenprint (PhotoPrint) that could be
> extended to allow people to do this,

True - when I eventually get round to supporting curves!

> So the question is, how do we move along to that point?

Earlier today I began "thinking aloud" on that subject on the Wiki, and 
took the first steps to adding "DeviceN" support to PhotoPrint's imaging 
stack, in preparation for printing out raw per-channel linearization 
targets.

Could you outline roughly how you currently go about tuning a new, 
unknown printer, step-by-step?  Understanding the steps and the order in 
which they occur may be helpful in figuring out where the colour 
instrument can help with the process, and how best to go about making 
the results shareable.

All the best,
--
Alastair M. Robinson
