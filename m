Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=x8WzcLancfciR7tidqS6rScMgkaHr+EToHGJ1NHDGgM=;
	b=c5ACfmD7ugwhWAAgKFdjkzFw0K4FReBOihraFZlphleSpnNvoZ8jlAjUT3U8GycvD2
	0s/1GnbAhITEjDt+Hc662ifflFo8DSKhj0ICQpC4cyAPKp+M82q3E7r3ea+xX8Y9OB75
	bKakksKn3C7rvX4D8eCp1biArxCUOSR0FpQrsH+Sk+d/c+PGhAr0rExqiVHIyJAgf33s
	Bvlr6yRw+9QghOzgyEyzac+w38MHDw1Loq0OUNU39THoTWDSNrwRQDPvLcLA2IsvLAHg
	Zb5/nB7gLOYCS2pyiy4X82rqBB8d9tCvv1Tm/bPD1tGHN1D8E3M6+AWvklK801y76Asu
	0VnQ==
Message-ID: <53AB43D0.4010501@gmail.com>
Date: Wed, 25 Jun 2014 23:49:04 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
	<CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
	<53A9D7F0.1010909@gmail.com>
	<7231748A-31C3-4C70-9C91-19437661D464@apple.com>
	<53AADC12.50705@gmail.com>
	<CAGC3nLAJH3o=0UeB7LdjKSoCapwk5pdT6rPjgVgUEY=BnUzwuA@mail.gmail.com>
	<94101C68-DC20-420E-8C93-AAC754638926@apple.com>
	<CAGC3nLB4HvB7Xnxm5_LiOrvjtFAcPYr+6TTUrGV+XnPgiYF_UA@mail.gmail.com>
	<CAN40gSuxUUg1xaf=M3achUk+B7kUwxkM1_71ZHVswBKEHzEP8w@mail.gmail.com>
	<CAGC3nLB7mcHxK-LTE9PVsnbphkNOASUZNPj9n2ssKZNc1JR=zQ@mail.gmail.com>
	<CAN40gSszRhrCftTyfmLZUPOMB3XP5WgpB8hF-vAw4brX5mCfFQ@mail.gmail.com>
In-Reply-To: <CAN40gSszRhrCftTyfmLZUPOMB3XP5WgpB8hF-vAw4brX5mCfFQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] ippusbd license
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Daniel Dressler <danieru.dressler@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

For me it is important that ippusbxd gets as successful as possible,
which means that it goes into all distros (distros accept all GPL2,
GPL3, BSD, MIT, Apache, all what is considered "free software") but it
should also not be rejected by printer manufacturers or by the PWG, as
if printer manufacturers test it, we get better compatibility and better
free software OS support from the manufacturers.

Therefore I also do not want to have it GPL3.

I would prefer MIT or BSD if everyone agrees.

Would it also be possible to let it be GPL2+?

   Till


On 06/25/2014 11:28 PM, Ira McDonald wrote:
> Hi Daniel,
> 
> I'm aware of printer vendors who have fired or reassigned test
> engineers who downloaded a *binary* of GLP3-based software
> (and abandoned product or research projects for this reason). 
> 
> Perhaps these printer vendors were overly cautious, but there
> are some real reasons for caution here, I think.
> 
> It seemed to me that ippusbxd would be an excellent component
> in an internal product development and testing process within a
> printer vendor.
> 
> BTW - if ippusbxd has a "difficult" license, then the PWG won't
> be able to use it in any future PWG IPP certification tools, which
> would be unfortunate.
> 
> Cheers,
> - Ira
> 
> 
> 
> Ira McDonald (Musician / Software Architect)
> Co-Chair - TCG Trusted Mobility Solutions WG
> Chair - Linux Foundation Open Printing WG
> Secretary - IEEE-ISTO Printer Working Group
> Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
> IETF Designated Expert - IPP & Printer MIB
> Blue Roof Music / High North Inc
> http://sites.google.com/site/blueroofmusic
> http://sites.google.com/site/highnorthinc
> mailto: blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
> Winter  579 Park Place  Saline, MI  48176  734-944-0094
> Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
> 
> 
> 
> On Wed, Jun 25, 2014 at 5:14 PM, Daniel Dressler
> <danieru.dressler@gmail.com <mailto:danieru.dressler@gmail.com>> wrote:
> 
>     Thank you Ira, and thank you for the support you have given me and
>     ippusbxd in the past.
> 
>     Do you know of any printer vendors or OS interested in using ippusbxd?
>     I must admit I only expected ippusbxd to be used by the open source
>     distributions. I am not sure what changes need to be made to reuse
>     ippusbxd from the printer side.
> 
>     Of the OSes which avoid GPLv3: Android, Chromeos, MacOSX, Windows. I
>     did not expect any of them to adopt ippusbxd. MacOSX alone has Michael
>     Sweet himself working on their ippusbd.
> 
>     I would a company prevent their developers from testing against
>     ippusbxd? Under the GPLv3 if they download a compiled binary through a
>     linux distrobution, or an exe from a website, they have no
>     obligations. They only need to worry if desire to redistribute the
>     source or binary.
> 
>     This is similar to what happens when you test against Windows or OSX.
>     The major difference here is there is atleast an option to
>     redistribute with GPLv3.
> 
>     Daniel
> 
>     PS: I would just like to re-iterate: my presentation at the
>     openprinting sumit/f2f will be licensed creative commons zero. Which
>     is a very liberal license which you can think of as the BSD of BSD
>     like licenses. Except in jurisdictions where authors are not allowed
>     to re-assign some copyrights the CC0 license is as close as we can get
>     to public domain.
> 
>     2014-06-25 14:51 GMT-06:00 Ira McDonald <blueroofmusic@gmail.com
>     <mailto:blueroofmusic@gmail.com>>:
>     > Hi Daniel,
>     >
>     > ALL of the work (design and code) of the Open Printing Job Ticket API
>     > team used BSD/MIT (for reasons Mike Sweet has cited) - based on
>     > actual legal opinions from a number of printer vendors.
>     >
>     > Being "up-to-date" with GPL3 simply guarantees that no printer vendor
>     > will ever allow their engineers to use (even in a test lab)
>     "ippusbxd".
>     >
>     > I'm very strongly opposed to licensing this work under any form of
>     GPL3.
>     >
>     > There are several other major OS vendors who have an absolute rule
>     > that no GLP3 code is used in any product *or* product design (no
>     I'm not
>     > going to name them).
>     >
>     > If your work on "ippusbxd" has a GPL3 poison pill included, then I
>     also
>     > can't encourage it's use in the IEEE-ISTO Printer Working Group, which
>     > would be sad.
>     >
>     > ALL - amateur discussion of license and patent terms is DANGEROUS.
>     > Please use caution in your email assertions.
>     >
>     > Cheers,
>     > - Ira
>     >
>     >
>     >
>     > Ira McDonald (Musician / Software Architect)
>     > Co-Chair - TCG Trusted Mobility Solutions WG
>     > Chair - Linux Foundation Open Printing WG
>     > Secretary - IEEE-ISTO Printer Working Group
>     > Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
>     > IETF Designated Expert - IPP & Printer MIB
>     > Blue Roof Music / High North Inc
>     > http://sites.google.com/site/blueroofmusic
>     > http://sites.google.com/site/highnorthinc
>     > mailto: blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>
>     > Winter  579 Park Place  Saline, MI  48176  734-944-0094
>     <tel:734-944-0094>
>     > Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434
>     <tel:906-494-2434>
>     >
>     >
>     >
>     > On Wed, Jun 25, 2014 at 1:36 PM, Daniel Dressler
>     > <danieru.dressler@gmail.com <mailto:danieru.dressler@gmail.com>>
>     wrote:
>     >>
>     >> Michael
>     >>
>     >> You're right that I do not intend to file any patents, and you're
>     also
>     >> right that I do not plan to hide ippusbxd from users with DRM.
>     Granted
>     >> if I did wanted to do those things I still could, since I own the
>     >> copyright. The GPLv3 only applies downstream, where one needs a
>     >> license to avoid copyright infringement.
>     >>
>     >> In general mainline distros distribute plenty of GPLv3 since the GNU
>     >> project's software has been GPLv3 for a long time. Android and
>     OSX are
>     >> the only big OSes which include GPLv2 but avoid GPLv3.
>     >>
>     >> Now it is true many companies involved with printing want to avoid
>     >> GPLv3 and so their engineers will not be able to contribute.
>     >>
>     >> The low-down is that I'm working at about one tenth the market rate.
>     >> Thus I don't see myself as being an employee of GSoC but rather that
>     >> GSoC is providing a stipend to keep me afloat while I work on
>     this. In
>     >> return I am asking that downstream users provide the same freedoms to
>     >> their downstream as I'm providing to them and in some cases provide
>     >> their own work under similar terms.
>     >>
>     >> So what I'm trying to say is what I want to get out of this summer is
>     >> more power for users over their software, plus of course working IPP
>     >> over USB printers. This may not be compatible with some business
>     >> plans, which is okay since those business plans are not paying me
>     >> market rates either. Now if those business plans were interested in
>     >> making up the difference between the stipend and market rate I would
>     >> love to negotiate a friendly license, for them. Until then the
>     >> opportunity cost, the amount of money which would be in my bank
>     >> account if I was not working on ippusbxd, is approaching one and a
>     >> half Honda Civics at MSRP.
>     >>
>     >> Now the BSD people have a different goal, they would prefer their
>     >> software get used even if it means users cannot edit it. For me if
>     >> users cannot edit the software then it might as well be proprietary,
>     >> and proprietary software licenses often include large bundles of
>     cash.
>     >> So my price sheet would look like: A: lots of power to the users, or
>     >> B: lots of cash to me.
>     >>
>     >>
>     >> Daniel
>     >> PS: Michael, you might be thinking of how Apache 2 is not compatible
>     >> with GPLv2 since it includes restrictions on patents. While the
>     Apache
>     >> foundation says that Apache 2.0 -> GPLv3 is compatible:
>     >> https://www.apache.org/licenses/GPL-compatibility.html
>     >> PPS: I understand where everyone is coming form, and I don't
>     think any
>     >> of you are wrong or evil. I don't want to hurt anyone with my
>     words or
>     >> actions. I hope this email layed out why I picked GPLv3
>     >> PPPS: I do understand that someone from the BSD side of open source
>     >> may think that I'm greedy, but please understand my preference is for
>     >> user freedom over the cash.
>     >>
>     >> 2014-06-25 10:24 GMT-06:00 Michael Sweet <msweet@apple.com
>     <mailto:msweet@apple.com>>:
>     >> > Daniel,
>     >> >
>     >> > Unless you plan on filing patents for the work you've done for
>     IPP USB,
>     >> > the patent protections of GPL3 simply do not apply.  (and the
>     reason why
>     >> > corporations don't like the GPL3 patent provisions is because
>     they are
>     >> > overly broad - use GPL3 software and you may be giving away
>     your rights to
>     >> > assert your patents, even for defensive purposes...)
>     >> >
>     >> > Similarly, DRM is a non-issue - IPP USB involves no DRM and (I
>     assume)
>     >> > you are not incorporating a blob or non-open code signing
>     mechanism.  Any
>     >> > operating system mechanism falls under the "standard system
>     library/service"
>     >> > clauses.
>     >> >
>     >> > What may be an issue is future contributions - GPL2+ is
>     generally OK but
>     >> > GPL3 will assure that few corporations allow their devs to help
>     out for fear
>     >> > of "contamination".  Apache is not GPL3-compatible.  2-clause
>     BSD and MIT
>     >> > are GPL3 compatible but don't prevent people from taking your
>     work and doing
>     >> > something non-free with it.
>     >> >
>     >> > So in my mind the best choices (the ones that will create the
>     fewest
>     >> > problems long-term) are GPL2+ or BSD/MIT.
>     >> >
>     >> > But perhaps the best people to ask are the lawyers at the
>     various Linux
>     >> > distros - they are the ones that need to distribute your work,
>     and if you
>     >> > choose a license they are not comfortable with then it won't be
>     included in
>     >> > the distros.
>     >> >
>     >> >
>     >> > On Jun 25, 2014, at 12:05 PM, Daniel Dressler
>     >> > <danieru.dressler@gmail.com
>     <mailto:danieru.dressler@gmail.com>> wrote:
>     >> >
>     >> >> Hello everyone
>     >> >>
>     >> >> I just wanted to chime in and explain why I picked GPLv3.
>     >> >>
>     >> >> The two big reasons is that the GPLv2 does not handle DRM and
>     patents.
>     >> >> Which is understandable since version 2 was written before DRM was
>     >> >> enforceable by law and before software patents were common.
>     >> >>
>     >> >> Now I'm not a lawyer but I have read the GPLv3 license. The
>     license
>     >> >> handles patents by requiring a patent license to cover the
>     software.
>     >> >> Which just means that if software A violates patent B and a
>     developer
>     >> >> for company C contributes to software A then patent B must be
>     licensed
>     >> >> to users of software A. With some extra details: that company
>     C that
>     >> >> patent B, and any new patents or new additions to the software
>     do not
>     >> >> create further obligations to license father patents.
>     >> >>
>     >> >> The purpose of the GPLv3's patent clauses is to prevent
>     someone from
>     >> >> distributing code and then placing further restrictions on the
>     user.
>     >> >> The GPLv3 is very similar to Apache 2 in regards to patents. With
>     >> >> Apache 2 being Google's and Microsoft's preferred license as
>     of late.
>     >> >>
>     >> >> DRM meanwhile is the bigger sticking point for corporations.
>     This is
>     >> >> also where there is controversy. My reading of the GPLv3 made
>     me think
>     >> >> it is okay to encrypt and check signatures of operating system
>     images
>     >> >> and updates provided the user can get their own images and updates
>     >> >> installed. Which as a user an unlocked android this is a feature I
>     >> >> like.
>     >> >>
>     >> >> In short I think GPLv3 does a better job of guaranteeing the
>     user's
>     >> >> freedoms.
>     >> >>
>     >> >> Now, any code in my presentation at the summit will be CC0,
>     likewise
>     >> >> any contributions to other projects as part of integrating
>     ippusbxd
>     >> >> will be under those project's existing licenses.
>     >> >>
>     >> >> Daniel
>     >> >>
>     >> >> PS: ippusbxd only links with libusb, a lgpl system library. I
>     cannot
>     >> >> think of something we could gain by switching to GPLv2. Apple
>     already
>     >> >> has their ippusbd and I doubt Microsoft is interested in using
>     mine =)
>     >> >> Even if one of them was interested I expect they would want to
>     >> >> negotiate a more corporate friendly license than even GPLv2.
>     >> >> PPS: The MIT and BSD licenses do not handle patents which I'd say
>     >> >> makes them unreliable. The Apache 2 license is better if you
>     want a
>     >> >> non-copyleft license.
>     >> >>
>     >> >> 2014-06-25 8:26 GMT-06:00 Till Kamppeter
>     <till.kamppeter@gmail.com <mailto:till.kamppeter@gmail.com>>:
>     >> >>> Should we do GPL2+ then or better something non-GPL (like
>     MIT, BSD,
>     >> >>> ...)
>     >> >>> to get maximum flexibility?
>     >> >>>
>     >> >>>   Till
>     >> >>>
>     >> >>> On 06/25/2014 01:09 PM, Michael Sweet wrote:
>     >> >>>> GPL3 is a poison pill for most corporations, thanks to the
>     draconian
>     >> >>>> patent terms and generally unfriendly stance towards any
>     other OSS license.
>     >> >>>> Apple has a blanket policy of not allowing any GPL3/LGPL3
>     use without
>     >> >>>> special authorization, and an absolute prohibition of
>     inclusion of
>     >> >>>> GPL3/LGPL3 licensed software or documentation in any products.
>     >> >>>
>     >> >>>
>     >> >>> _______________________________________________
>     >> >>> Printing-architecture mailing list
>     >> >>> Printing-architecture@lists.linux-foundation.org
>     <mailto:Printing-architecture@lists.linux-foundation.org>
>     >> >>>
>     >> >>>
>     https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>     >> >> _______________________________________________
>     >> >> Printing-architecture mailing list
>     >> >> Printing-architecture@lists.linux-foundation.org
>     <mailto:Printing-architecture@lists.linux-foundation.org>
>     >> >>
>     >> >>
>     https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>     >> >
>     >> > _________________________________________________________
>     >> > Michael Sweet, Senior Printing System Engineer, PWG Chair
>     >> >
>     >> _______________________________________________
>     >> Printing-architecture mailing list
>     >> Printing-architecture@lists.linux-foundation.org
>     <mailto:Printing-architecture@lists.linux-foundation.org>
>     >>
>     https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>     >
>     >
> 
> 

