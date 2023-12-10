Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3007660A89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0143960A7F
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 7E3CF81D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1702221077;
 bh=qy4egcSMD0QY6CV3VJUbJA5INqgXn5a4Dq9xp8XFcus=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=Kb0/G6iX/sKHc3tTUdFz6TK5ytT+DTCVzpV2j6VcVrLi1ZVJYpzdPJv/zT0+HFQ8V
 NobHcrJGFxW6DWXVLfuNSHuSlhckOpEU9/3E6P+Q+cYwyWCIcoa+U2Os5aw0N6/3GU
 GoAnf1SxryjaTybGXh3U9KXTyQcwCOAJdjeJzolA=
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
Date: Sun, 10 Dec 2023 10:11:05 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <AE4A3F66-C7EE-470F-B326-A4B357A55F2B@msweet.org>
References: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alexander Pevzner <pzz@apevzner.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Alexander,

> On Dec 10, 2023, at 2:08=E2=80=AFAM, Alexander Pevzner =
<pzz@apevzner.com> wrote:
> ...
> Michael's position, as I hear it, is following:
> - device violates IPP specs, so problems is on device, and device must =
be fixed
> - IPP parser is a quite complex stuff. Touching it is dangerous and =
may open a way to security vulnerabilities

This code has been the focus of *six* CVEs since the move to Git in 2015 =
- not quite one CVE a year, but enough to be concerning.  More =
specifically, commit 5754bccee =
(https://github.com/apple/cups/issues/5630) addressed the code that =
allowed "alternate" encodings of member attributes that was causing =
interoperability issues.

> ...
> My position is following:
> 1. I agree, that following specification is very important, and, where =
possible, trying to do so.

IPP started in the IETF and the PWG has continued the IETF's goals for =
conformance terminology: any requirements are there to ensure =
interoperability and proper functionality.  Postel's Law doesn't apply =
when it breaks interoperability and potentially has bad side effects.  =
See the following for some applicable reading/links:

    https://en.wikipedia.org/wiki/Robustness_principle

> 2. But being practical engineers, we know that sometimes we have to =
carefully violate rules. cups/ipp.c already has an exception for Brother =
devices that use some IPP tags incorrectly.

This was a case where allowing a non-zero length value (typically the =
keyword string for the given out-of-band tag) did not cause =
interoperability issues with other printers and also did not pose any =
security issues.

Looking at the history of this change (and had to dig into the original =
SVN repository for this - r7847 on August 19, 2008), back in 2007/2008 =
when Brother first started making IPP-capable printers (and this was =
before AirPrint or IPP Everywhere), their implementation had a bug that =
returned the string "no-value" with the 'no-value' out-of-band syntax =
(which should have a value length of 0).  Brother was notified and =
current printers no longer do this...

> sane-airscan, ipp-usb contains many quirks that make incorrectly =
behaving devices full-functional. Without these quirks, many devices =
will not work.
> 3. Even if Pantum will fix their firmware, 50% of users of already =
purchased devices will not upgrade.

They already won't be able to print from iOS or macOS, and probably not =
from Windows (IPP class driver) or Android (Mopria print provider) =
because the Get-Printer-Attributes response cannot be parsed.  And if =
they actually ask someone about the problem they can be pointed to =
Pantum to get a firmware update.

Firmware update capability is required for both AirPrint and Mopria, and =
at least the AirPrint folks require the ability to upgrade without =
special software and highly recommend automatic firmware updates over =
the Internet whenever possible...  Pantum is an AirPrint licensee...

> 4. I understand the complexity of IPP decoder, because I'm the author =
of alternative, independent implementation in Go =
(https://github.com/OpenPrinting/goipp). I believe my implementation is =
similar to CUPS's on its level of correctness and strictness. And has =
near 100% test coverage, BTW.

As does the CUPS implementation, which Google and others have put =
through the wringer with long-term fuzzing projects...

> 5. My patch is simple and observable. It is only few lines of code =
(see https://github.com/OpenPrinting/cups/pull/826 for details). It =
doesn't change any assumptions of the upper-level code about the parsed =
IPP message. It only slightly relaxes decoding rules. Honestly, I don't =
see how it can expose any vulnerability.

It was causing problems before I fixed it, mainly because the returned =
values made no sense - basically=20

> 6. My patch is not "just a quick hack". I understand that this is very =
important part of the CUPS code, so I've spent more that 2 weeks, =
thinking about it correctness and modelling various corner cases, using =
my goipp library.

I don't think I ever called it a quick hack.  No matter how =
well-tested/reasoned, you are creating an edge-case for allowing invalid =
collection values as long as a single memberName value is seen in an IPP =
message.

You need to notify PANTUM that they have an issue.  Regardless of =
whether you believe that a user will update the firmware, they don't =
even have an opportunity unless you report the issue to the =
manufacturer.  And in fact, you don't even know whether PANTUM has =
already fixed the issue!?!

> 7. We are doing our work for people, for our end users. And actual =
tradeoff here is between user's needs to have reliable and secure =
software (technical "purism" helps as here) and user's needs to have =
their device supported out of box (here "purism" sometimes works against =
us).

So we should provide them with intentionally defective software so that =
they don't need to press a button on their printer to update the =
firmware?  How far down the slippery slope of "we'll just add a =
workaround for this printer" do you want to go?

I can speak from 30 years of experience doing printing software - that =
is not a path you want to go down.  The number of variables in printing =
configurations is *immense*, and you do not want to bring back vendor =
printer drivers - that is the end game if you allow for too many =
"workarounds".

> 8. If we will eventually rich the Pantum representative, good =
discussion with weighted arguments can help to convince them to =
implement some improvements at their side, while aborted discussion will =
not help a lot.

"Your printers don't work with iOS" should be enough.  They probably =
won't care about Linux.

> If my patch looks "too wide", I can do it more precious, by affecting =
only behavior of parsing IPP responses received from devices, not =
received requests. At this case it looks even safer.

Let's say we accept invalid collection attribute values.  We get the =
media-col-database and media-col-ready values from the printer, and then =
send it a media-col collection to specify printing from tray 2 on =
cardstock: will the printer be able to understand a correctly encoded =
collection value for media-col if it doesn't return valid collection =
values for media-col-database/ready?  (probably not)

Then you get a support request from a user saying, "I can't print from =
tray 2."

Did you fix the problem for the user?  Is this better?

> I'd prefer to make it even more precious, affection only communication =
with Pantum devices. But in that places of the CUPS code where responses =
are parsed there is no information what kind devices we are speaking =
with.

And I would be even more opposed to such a change.  At that point you =
have created a printer driver...

> ...
> P.S. I remember a while ago we were in the similar discussion with =
Trent Lloyd, author of Avahi. He didn't want to include localhost =
support because it violates (according to him) mDNS RFC, and it took =
about 3 years to convince him to make an exception (according to Till, =
it was me who has reached out to him, =
https://openprinting.github.io/OpenPrinting-News-February-2020/#avahi-loca=
l-service-support)

Not at all the same issue, and honestly he was wrong that you can't =
support multicast over the loopback interface (there is just nobody else =
to talk to, so multicast becomes broadcast to the local host...)

________________________
Michael Sweet

