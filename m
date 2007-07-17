DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:cc:subject:references:in-reply-to:content-type:content-transfer-encoding;
	b=l4Rc2rYrVliRRJ4FXJxIvXhF2KczeBYgAybemD+FXC7uAtKKeQ1/PFehO3Ayx8yyenojtjO7ggf3ulL2yCwgeJQTF7x9+YpgvmwSQwuuyidFvCW77St4WqPkeczpMeBy5vEQ9tH6TsODq25QPS6lir/oAOk9h8Sm4srLMHZif0U=
Message-ID: <469D4FC4.3050704@gmail.com>
Date: Wed, 18 Jul 2007 00:24:52 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Posted OP Arch Minutes (11 July 2007)
References: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CB93@eitc220.eitc.epson.com>
In-Reply-To: <2F7D63A21DB2C74EB8EB8C09AF667DB00559CB93@eitc220.eitc.epson.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Cc: "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>

I think we should also ask the distribution vendors about the correct 
way to license our software. Standards get only standards if they get 
adopted by the distributions. And this only works if our software is 
allowed to get linked with important pieces of standard software in the 
distros, like CUPS for example.

I can also not imagine that big free software projects (with lots of 
copyright holders) change their licenses only to be able to use 
OpenPrinting infrastructure for printing.

The MIT license itself is free enough so that distros adpot the 
software. For the restricted MIT we must ask the experts.

I should probably do a license change on Foomatic to MIT or so to make 
it more accessible to the manufacturers, but Foomatic has no binary 
interfaces, so this is perhaps not so urgent.

    Till


Petrie, Glen wrote:
> I press the wrong button before finishing.
> 
> ============================
> 
> 
> One thing I'd like to make clear from the beginning: I'm NOT lobbying
> to change the license for OP work to the GNU GPL, but you already knew
> that, right?  I am trying to arrive at a license that is acceptable to
> proprietary software vendors as well as *compatible* with the GNU GPL
> for the simple reason that the current "restricted MIT" license
> prevents use of any OP created software by software under the GNU GPL.
> 
> [[gwp]]I don't believe there are any licenses that are compatible with GNU
> GPL in relationship to proprietary software.   GNU GPL has as one of its
> explicit functions to "trap" developers in releasing their software.  I have
> talked with a many company representatives on the subject of using GNU GPL
> software and all of them, without exception, state they never use GNU GPL
> software in their products.
> 
>>  < snip..>
> 
> You can't just go around modify things and change the licensing
> conditions unless *all* copyright holders agree.  Just make sure that
> all work done by OP is copyrighted by OP and OP can veto any license
> changes.
> 
> [[gwp]] 1.) I am writing new code that is based on software that was
> developed under the MIT license from IBM.  So I am currently the only
> holder.  2.) I have discussed the license with the holders of the original
> content and they agreed with the license modification. 3.) The Steering
> Committee of the OP has agreed to this license and any attempt to change
> that license will result in my withdrawing my software from Open-Printing.
> 
> What you *can* do is built something on top of OP work and put that
> out under the GNU GPL.  However, that does not mean that the OP work
> is or has to be re-licensed to GNU GPL.  We did this with PCM.  The
> PCM daemon and plug-ins are MIT/X.  The CUPS and SANE samples are GPL.
> 
> [[gwp]] But you can not change this code and make it GNU GPL.  And
> integrating with GNU GPL will not make this code be GNU GPL; that would be a
> violation of the license.  The PCM is MIT because the OP steering committee
> has mandated non-GNU_GPL licensing for all software.    (As for the CUPS and
> SANE sample, technically they should have been MIT license if they were part
> of OP official work products unless they were written outside of the OP
> activity.)
> 
> 
> # Or, at least I was quite sure that was the case this until I re-read
> #
> #   http://www.gnu.org/licenses/gpl-faq.html#WhatIsCompatible
> #   http://www.gnu.org/licenses/gpl-faq.html#WhatDoesCompatMean
> #
> # Time for yet another round of GPL study and digging up some sample
> # cases ... :-(
> 
> Also, keep in mind that anyone sufficiently determined (and the GNU
> project qualifies) could make a clean room implentation of any OP spec
> and release that under the GNU GPL.  Unless the license of the spec
> works like the GNU GPL and extends its reach to any implementations by
> claiming they are material modifications of the spec, that is.
> 
> [[gwp]] The specification for the API will also be the modified MIT license.
> What that ultimately means for an "extended reach" will have to be
> determined.  I don't think the point is about someone "sufficiently
> determined" wanting to make a clean room implementation of the OP spec; the
> real point here is that companies do not use GNU GPL software and I believe
> they would use and following the modified MIT license software.  Personally,
> I don't want to create a set of API spec's and software that no one will use
> other than a few independent developers.
> 
> 
> <snip..>
> 
> FWIW, the extra restriction triggers pretty much the same situation as
> the "advertising clause" of the Original BSD license did.
> 
>   http://www.gnu.org/licenses/gpl-faq.html#OrigBSD
> 
> The only way for GPL'd software to use OP software under a restricted
> MIT license would involve adding an exception to the license.  In
> effect, the software has to be relicensed to use OP software.
> 
>   http://www.gnu.org/licenses/gpl-faq.html#FSWithNFLibs
>   http://www.gnu.org/licenses/gpl-faq.html#GPLIncompatibleLibs
> 
> Trying to imagine how this "trap prevention" scheme works for those on
> the other side of our "ideological divide", I was left wondering how a
> proprietary software vendor would create "any material modification"
> without further restricting a user's "rights to use, copy, modify,
> merge, publish, distribute, and/or sell copies" of it.
> 
> FYI, I interpret that clause to mean that the user gets *all* of those
> rights, not just a meaningless subset that only contains "use".  How
> would a proprietary software vendor not restrict my rights to copy,
> modify, merge, publish, distribute and sell copies?  At least for the
> modify and merge one would already need the source.
> 
> 
> < snip..>
> 
> The GNU GPL is "No Free Lunch", you pay for what you take.  That makes
> perfect business sense to me.  It's just that you have to pay in a way
> proprietary software vendors are not likely to like.
> 
> [[gwp]] GNU GPL is "No Free Lunch"; for sure.  So you are telling me that
> FSF and individuals using the GNU GPL license are in business of having
> others """"pay"""" for the use of their """""free"""""" GNU GPL software by
> having others release their code.  That's an interesting business they are
> in.  But it finally makes it very clear to me that GNU GPL software does not
> mean free software.  What I want to do is create truly free software that
> anyone can use with a """"paying"""" for it. 
> 
> 
> Back to the license the OP wants to use, I do think that a quest to
> develop "printing architecture, documentation and software that can be
> used freely by anyone without the concerns, worries and legal problems
> of the license associated with the software" is a noble goal.  It's
> just that the "restricted MIT" license puts a lot of people out in the
> cold (unless they relicense) trying to achieve it.  In a way, adding
> the restriction makes it impossible to satisfy what you quote as the
> OP's primary goal as it can't make good on the "used freely by anyone"
> part.
> 
> [[gwp]] I am interested in the wider adoption and use of OP software, API,
> etc..  If other """"free"""" software developers want to be part; then they
> may have to re-license in such a way that there software is free and
> compatible.
> 
> Not that I have any at the moment, but are there no alternatives?
> Some license that is acceptable to both sides?  Maybe we could contact
> the FSF or Creative Commons about the issue?  Should we?  They have a
> lot of legal expertise in this area.
> 
> [[gwp]] I don't see any alternatives, under the current GNU GPL license, of
> how to make something acceptable to both sides.
> 
> <snip..>
> 
> A lot of proprietary software companies will balk at contributing to
> GPL'd software, yes.  Other companies that rely less on competitivity
> strangling approaches to make a living don't and are happy to let any
> outsider contribute.  There is a lot of great software out there that
> is actively adopted and adapted to suit their needs by companies,
> governments and individuals alike.
> 
> [[gwp]] My experience is that companies, governments and individuals use the
> software for their own (internal) use and freely use any software available
> without worrying about repercussions.  But that is not the case for the
> software and api's being developed here.   They are public for use and not
> really targeted to sampling internal use.
> 
> FYI, a substantial part of CUPS is GPL.  The libraries are LGPL.
> 
> [[gwp]]  Yes CUPS is GPL but CUPS has also been strictly controlled in it
> development by its owner; a good thing perhaps.   As to LGPL; several patent
> lawyers I have talked with argue that LGPL is only superficially better than
> GNU GPL and have been advised to avoid using LGPL software. 
> 
> <snip..>
> 
> If you care about the OpenPrinting stuff getting used, you should
> consider whether a restrictive MIT license is in the best interest of
> OP stuff getting used, because as it is now it can't be used by a
> great deal of existing software.
> 
> [[gwp]] I go with original statement that the oal of Open-Printing, I
> believe, is coherence for printing; not software or license traps.
> 
> <snip..>
> 
> With a restricted MIT license they have just as much to worry about
> getting sued as with the GNU GPL.  Recalling the GPL violation that
> made EPSON AVASYS famous ;-), not once were we threatened with a law
> suit.  The FSF are very friendly people.  It's not the GNU GPL license
> violation that gets you sued (unless perhaps when you are extremely
> uncooperative and keep violating it) but your patent violations.  And
> these will get you sued no matter what license you use.
> 
> [[gwp]] Then explain to me why every patent lawyer and software development
> manager/engineer I have talked with, where proprietary software is involved,
> will not use or incorporate GNU GPL software.  
> 
> <snip..>
> 
> I personally believe Free Software stands to lose.  As a result, the
> individual user stands to lose as well.
> 
> [[gwp]] As you pointed out above, GNU GPL is "No Free Lunch" and is not
> free.  My goal and hope is that the modified MIT license is a "Free Lunch"
> and is free and that others will join if they are interesting truly free
> software.
> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture
> 

