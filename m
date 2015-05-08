Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1431111818; x=2295025418;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QmUCg//4Fyc/SHN1M9VxoO5SE+KvtCsePB+2LeynkfE=;
	b=RHyjNQoYcakZGc1i7z9KFNcGOWzRI/htfBXe0x6vTT0Xmqssh1BpBi8FHcL9O5OU
	a2w9aN6thn88E7SW//wbvtIDwACR1YATl5vV9VbNEO8rqnbv0NiO9ta9MHiGvIwP
	B2R0Ugzl2hJ7e/ru1wcnMxMk2LDcSt2ZcYjJ/l7Dx50ovQCUWmwiNulU/kpFZ+YU
	5et9uDunqWp+4TS0mn7DLIbe/WSUYS1f2Ee6kAATrl8EdgZhPMUliu2ahgnRsNHf
	ZQOKsgerLk670yFpLpu6HZNRGdMvCSeisBSyR8F78uD8ZUkd55iqQJVPswkB/84Z
	e4OGMFPEiLbLukv3O7iQ7Q==;
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <554BEDA8.9080003@gmail.com>
Date: Fri, 08 May 2015 15:03:36 -0400
Content-transfer-encoding: quoted-printable
Message-id: <0E9CA9DC-A99D-485D-9FFF-EA0EA09FBDA3@apple.com>
References: <554BEDA8.9080003@gmail.com>
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

> On May 7, 2015, at 6:56 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> 1. Many FAILs. Where should I report them? CUPS bugs? CUPS mailing =
list? This mailing list?

Problems with CUPS should be filed as CUPS bugs.

> 2. The IPP test prints a JPG file. Isit required for an IPP Everywhere =
printer to print JPG? Is not PWG Raster the only required format?

Both JPEG and PWG Raster are required.

> 3. The JPG file printed by the IPP test consumes a lot of ink. Can one =
not use a text page converted to JPG for this test?

No.  The purpose of JPEG file printing is photo printing, so we need to =
validate the output quality.  Text-as-JPEG would not adequately test =
things.

> P. S.: CUPS 2.0.2 has no everywhere directory, does this only appear =
in 2.1.x?

The source tarballs don't have the "everywhere" directory, you need to =
get them from the Git repository...

But like I said at the PWG meeting, you need to use the tools posted on =
the PWG web site; what is in the CUPS repository is for development of =
the tools only.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

