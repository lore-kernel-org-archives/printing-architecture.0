Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1431281345; x=2295194945;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=54itfRjEN4HIvzU68a4jg/fei1MCdnq9cYMW/xcDedk=;
	b=Ln/bifJhEzaj+MSi/KICQsuJwcEvMWEQNiFa+pjdUVD1UZ2RJS4BpvT5blwKgfwj
	uk/kvPQi3+dv/dieFAskcU8A4yz21rwa0N0YFHvzt7+hxDdcPogCrn4o5+z85L+p
	BT5wRinaPMy8cOO8VOi8e6QlCKW97LT7wBV8vZRZWBmXiFHmn1rWkYF1gpKMvYcp
	67I5eedWFDMlv6gW+BdMbEbifgtKpMVTg/lL5aGw3t/gOiI/hCUj2P6srJYA9lo0
	WzTM60W7SJaYwYP9apyqpV1mU0he0QWYcJPWhLveFH10zRGmuGUJtGWcWet7VPxK
	RvdmMcW/WMDUqAupDKZ1Hg==;
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2100\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <554D2EF6.6030906@gmail.com>
Date: Sun, 10 May 2015 14:09:02 -0400
Content-transfer-encoding: quoted-printable
Message-id: <F97E08B6-05F4-4F64-B326-73662614A0A5@apple.com>
References: <554BEDA8.9080003@gmail.com>
	<0E9CA9DC-A99D-485D-9FFF-EA0EA09FBDA3@apple.com>
	<554D2EF6.6030906@gmail.com>
Subject: Re: [Printing-architecture] CUPS queues should emulate IPP
 Everywhere printers - First tests
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
Cc: "printing-architecture@lists.linux-foundation.org" <Printing-architecture@lists.linux-foundation.org>

Till,

> On May 8, 2015, at 5:47 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 05/08/2015 04:03 PM, Michael Sweet wrote:
>> Till,
>>=20
>>> On May 7, 2015, at 6:56 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>>> ...
>>> 1. Many FAILs. Where should I report them? CUPS bugs? CUPS mailing =
list? This mailing list?
>>=20
>> Problems with CUPS should be filed as CUPS bugs.
>=20
> Filed https://www.cups.org/str.php?U4630
>=20
> Note that I had problems to attach the plist files. Can you make your =
bug system accepting them directly (files with spaces in name, *.plist =
files, data format)? I succeeded only by putting them into a tarball.

As explained in your other bug report, we screen all incoming =
attachments.  While I may be able to add plist files to the whitelist =
(need approval for that), I know spaces and special characters will be a =
hard sell to my paranoid security overlords.  Putting everything into a =
tarball is the only way to do it at present (the tarball naturally gets =
scanned before acceptance, but we don't restrict filenames inside the =
tarballs...

>> ...
>> No.  The purpose of JPEG file printing is photo printing, so we need =
to validate the output quality.  Text-as-JPEG would not adequately test =
things.
>>=20
>=20
> So then the IPP test which is not about whether photos come out =
correctly but whether jobs are sent, correctly listed, and removed from =
list when donw shoot use documents in PWG Raster format as example =
files. Can be very low resolution for this test,

We still want to be realistic about each of the tests.  If I get some =
time I might try putting together a different single-page JPEG for the =
initial print tests.  I am avoiding PWG Raster because that requires =
some selection logic for the test file (correct resolution, color space, =
and bit depth for a printer) that isn't easy to embed in a single test.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

