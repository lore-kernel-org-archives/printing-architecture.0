From: Olaf Meeuwissen <olaf.meeuwissen@avasys.jp>
Subject: Re: [Printing-architecture] Posted OP Arch Minutes (11 July 2007)
References: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CB82@eitc220.eitc.epson.com>
Date: Tue, 17 Jul 2007 15:22:22 +0900
Message-ID: <87wswz1rdt.fsf@geek.avasys.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Cc: printing-architecture@lists.freestandards.org

"Petrie, Glen" <glen.petrie@eitc.epson.com> writes:

> Olaf,...

Glen, thanks for your detailed reply and apologies for my belated
reply.  I now understand your (and the rest of the architecture
group's) concerns a lot better.
# Not that I necessarily agree, but that's another matter.

One thing I'd like to make clear from the beginning: I'm NOT lobbying
to change the license for OP work to the GNU GPL, but you already knew
that, right?  I am trying to arrive at a license that is acceptable to
proprietary software vendors as well as *compatible* with the GNU GPL
for the simple reason that the current "restricted MIT" license
prevents use of any OP created software by software under the GNU GPL.

>  1) What kind of further restrictions is it that you are concerned
>     about?
>
> [gwp] The concern is that the work done by Open-Printing will be modified
> and put under a GNU GPL like license.  This will then invoke the software
> trap of GNU GPL and companies will stop using the Open-Printing stuff.  And
> that is the last thing we want.

You can't just go around modify things and change the licensing
conditions unless *all* copyright holders agree.  Just make sure that
all work done by OP is copyrighted by OP and OP can veto any license
changes.

What you *can* do is built something on top of OP work and put that
out under the GNU GPL.  However, that does not mean that the OP work
is or has to be re-licensed to GNU GPL.  We did this with PCM.  The
PCM daemon and plug-ins are MIT/X.  The CUPS and SANE samples are GPL.

# Or, at least I was quite sure that was the case this until I re-read
#
#   http://www.gnu.org/licenses/gpl-faq.html#WhatIsCompatible
#   http://www.gnu.org/licenses/gpl-faq.html#WhatDoesCompatMean
#
# Time for yet another round of GPL study and digging up some sample
# cases ... :-(

Also, keep in mind that anyone sufficiently determined (and the GNU
project qualifies) could make a clean room implentation of any OP spec
and release that under the GNU GPL.  Unless the license of the spec
works like the GNU GPL and extends its reach to any implementations by
claiming they are material modifications of the spec, that is.

>  2) Why single out the GNU GPL?  Is "any means" not good enough?
>     # Yes, I'm an FSF associate member.
>
> [gwp] Yes, "any means" would have been sufficient; however, identifying, not
> singling out, GNU GPL was to make clear to both individual developers and
> companies that want to use the code that there is no licensing TRAP to
> release the developer's or company's software no matter if their software is
> proprietary or open-source. 

Understood, but the language of your mail makes me sceptic about the
"identifying" part ;-}

>  3) Is this "restricted MIT" license compatible with the GNU GPL?
>     Like it or not, 50+% of the free software out there is GPL'd.
>     Some even estimate 75+%.  If the "restrictive MIT" license is
>     not GPL compatible, any OP code can not be legally combined
>     with GPL'd code[3].  Is the OP comfortable with that?  How
>     will that impact acceptance of OP standards?
>
> [gwp] The restricted MIT states that the software may be used by anyone.
> But in the sense since the GNU GPL has a TRAP that would re-license any
> integrated or associated software to become GNU GPL; then the answer is no,
> the licenses are not compatible.  In fact the goal is to prevent
> Open-Printing stuff and the companies / individuals that use Open-printing
> stuff from being TRAPPED by "any means", including GNU GPL, and thus
> limiting the use of the Open-Printing stuff with proprietary software or
> other truly open-source software (not GNU GPL licensed). 

FWIW, the extra restriction triggers pretty much the same situation as
the "advertising clause" of the Original BSD license did.

  http://www.gnu.org/licenses/gpl-faq.html#OrigBSD

The only way for GPL'd software to use OP software under a restricted
MIT license would involve adding an exception to the license.  In
effect, the software has to be relicensed to use OP software.

  http://www.gnu.org/licenses/gpl-faq.html#FSWithNFLibs
  http://www.gnu.org/licenses/gpl-faq.html#GPLIncompatibleLibs

Trying to imagine how this "trap prevention" scheme works for those on
the other side of our "ideological divide", I was left wondering how a
proprietary software vendor would create "any material modification"
without further restricting a user's "rights to use, copy, modify,
merge, publish, distribute, and/or sell copies" of it.

FYI, I interpret that clause to mean that the user gets *all* of those
rights, not just a meaningless subset that only contains "use".  How
would a proprietary software vendor not restrict my rights to copy,
modify, merge, publish, distribute and sell copies?  At least for the
modify and merge one would already need the source.

> [gwp] I personally believe that one of the primary goals of the
> Open-Printing activities has been and continues to be the development of
> printing architecture, documentation and software that can be used freely by
> anyone without the concerns, worries and legal problems of the license
> associated with the software.  GNU GPL is the opposite of that.

The GNU GPL is "No Free Lunch", you pay for what you take.  That makes
perfect business sense to me.  It's just that you have to pay in a way
proprietary software vendors are not likely to like.

Back to the license the OP wants to use, I do think that a quest to
develop "printing architecture, documentation and software that can be
used freely by anyone without the concerns, worries and legal problems
of the license associated with the software" is a noble goal.  It's
just that the "restricted MIT" license puts a lot of people out in the
cold (unless they relicense) trying to achieve it.  In a way, adding
the restriction makes it impossible to satisfy what you quote as the
OP's primary goal as it can't make good on the "used freely by anyone"
part.

Not that I have any at the moment, but are there no alternatives?
Some license that is acceptable to both sides?  Maybe we could contact
the FSF or Creative Commons about the issue?  Should we?  They have a
lot of legal expertise in this area.

> [gwp] If the amount of software that FSF calls "free software" (and I use
> the term very loosely) is 75% or 95%; I don't think it matters.  Companies
> have and will always have proprietary software; that is what gives them a
> competitive advantage.  As long as GNU GPL "free software" has a mandatory
> "give back" TRAP of a company's software; companies will avoid integrating
> or using GNU GPL software directly.  They may take ideas or concepts but
> they will not use GNU GPL software directly with their proprietary software.
> Some argue that they can even use the ideas and concepts.  This leads to a
> lot of great software from being adopted by companies that could go in
> products and, thus, be used.

A lot of proprietary software companies will balk at contributing to
GPL'd software, yes.  Other companies that rely less on competitivity
strangling approaches to make a living don't and are happy to let any
outsider contribute.  There is a lot of great software out there that
is actively adopted and adapted to suit their needs by companies,
governments and individuals alike.

FYI, a substantial part of CUPS is GPL.  The libraries are LGPL.

> [gwp] The goal of Open-Printing, I believe, is coherence for printing; not
> software or license traps.  I personally would encourage anyone to improve
> or directly use the Open-Printing stuff; but I personally don't care if the
> stuff they use goes into their proprietary solution or an open-source
> solution; just as long as they use it and coherence for printing improves.
> I firmly believe that companies that would use Open-Printing stuff would
> provide, at least, feedback if they found something wrong or that something
> needed improvement.   And, in a way, this is better method because the
> original authors of the Open-Printing stuff would re-integrate fixes or new
> features in a coherent fashion based on their original knowledge.

If you care about the OpenPrinting stuff getting used, you should
consider whether a restrictive MIT license is in the best interest of
OP stuff getting used, because as it is now it can't be used by a
great deal of existing software.

> [gwp] Acceptance.  I believe Open-Printing software, concepts, architectures
> and/or documentation that is licensed under the restricted MIT license will
> have a greater acceptance both as a standard and as usable software.   We
> want both companies and individuals to accept and use Open-Printing stuff
> without trying to trap them by a license.   Companies will definitely be
> willing to use both the standard and software because it does not have
> traps.   Companies involved in printing are mid-size to large-size
> companies; they worry about be sued and will avoid situations that can cause
> difficulties for them which is what GNU GPL does. 

With a restricted MIT license they have just as much to worry about
getting sued as with the GNU GPL.  Recalling the GPL violation that
made EPSON AVASYS famous ;-), not once were we threatened with a law
suit.  The FSF are very friendly people.  It's not the GNU GPL license
violation that gets you sued (unless perhaps when you are extremely
uncooperative and keep violating it) but your patent violations.  And
these will get you sued no matter what license you use.

> [gwp] I personally believe that everyone wins if we use restrictive MIT
> license.

I personally believe Free Software stands to lose.  As a result, the
individual user stands to lose as well.

Hope this helps,
-- 
Olaf Meeuwissen             FLOSS Engineer -- EPSON AVASYS Corporation
FSF Associate Member #1962           sign up at http://member.fsf.org/
GnuPG key: 6BE37D90/AB6B 0D1F 99E7 1BF5 EB97  976A 16C7 F27D 6BE3 7D90
Penguin's lib!       -- I hack, therefore I am --               LPIC-2
