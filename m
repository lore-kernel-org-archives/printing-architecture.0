Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FCD3419B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 125A241769
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 01C8D81D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1702247897;
 bh=f487hik4f/HyCyjEYpDk84F1F6Rrt5kc/l771bWoXv8=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=ClNoAwbUgbIKcgnKs660KNwLX6X1drx2KJac/dr22yXKELePicciEgGAnCymhgzYd
 N2p1T2IXrrh1mEWNUwWKb6Pqri14o9uEKQ/ak+F/jQlSDwxppY6m4a5AtrZTSdCi96
 QTnDAS+tsryQYjTr2MbKDiZK2E5LekD7Twp3NZkg=
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <ZXYwgQqZayDJsT9-@shaftnet.org>
Date: Sun, 10 Dec 2023 17:38:04 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <9B9A7C8D-5C36-465A-890A-44CF6AF68F6B@msweet.org>
References: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
 <AE4A3F66-C7EE-470F-B326-A4B357A55F2B@msweet.org>
 <ZXYwgQqZayDJsT9-@shaftnet.org>
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
To: Solomon Peachy <pizza@shaftnet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Solomon,

> On Dec 10, 2023, at 4:41=E2=80=AFPM, Solomon Peachy via =
Printing-architecture <printing-architecture@lists.linux-foundation.org> =
wrote:
> ...
> So assuming that getting certified/listed means demonstrating that you=20=

> pass some sort of compliance suite, this means that the Mopria and=20
> AirPrint clients don't actually care about these printers violating =
the=20
> IPP specification.

I can't speak for Mopria, but for AirPrint the printer MUST pass a =
fairly strict set of tests.  If the printer was tested prior to 2019 it =
might have avoided a hard fail since the member attribute security fix =
wasn't yet in place, but it definitely would not be able to support =
media selection.

> Over the years, Airprint's not-quite-IPP-compliant nature has caused=20=

> quite a bit of grief in my little niche.  This may be another one of=20=

> those "We support Airprint, not IPP" impedence mismatches.

AirPrint is absolutely IPP-compliant - I know because I wrote the spec =
and much of the software.  What you might be running into is that =
AirPrint from iOS/iPadOS often exercises a different part of the IPP =
stack than CUPS 1.x/2.x.

> One would think Pantum could be made to care, but given that this=20
> printer family apparently already works with Windows, Macs, Android,=20=

> iOS, and even Linux, this is just some geeks being overly pedantic =
about=20
> something (ie IPP) that Pantum never claimed to support to begin with.

First, we really don't know whether the customer has the most recent =
version of the firmware.  Second, we don't know whether the printer =
works with any of those other OS's.  Finally, this particular issue =
might not manifest as a "problem" (one that prevents printing) unless =
you tried to print something that doesn't match the media in the =
printer...

________________________
Michael Sweet

