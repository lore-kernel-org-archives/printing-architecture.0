Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1468367204; x=2332280804;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sAC10GeiYjyrPjqJ6fccae2Ka6BNoo6blLqWmfmm3hA=;
	b=SBqVgWyOnvo8gPVmDZWvGBLj5grdIpm5odj5lr6n6EpTLsCFYWuzGLcFYW5L/kj5
	dlHyohDSh6h0JnGykazZOTat58Dkl7pfXK51AJ+80CuMY0DPxdXvWmOBG/7LpBkK
	PPNYo+B98xWEj1ZU6XwdnLTsDCp6Ip7VUpROGQuXFjK99Mo2HZLtYb7YX86ZcMrf
	uWWfXfFRNr6PdipRS/v6raiO9QRxJyBHaTL8luIFjtAwva1UaKMo8MhpNXg8ZFdL
	PCEJdjhn1KX/RmYMJ6F8fYNeibSZaB1DhOFxPK46zhlD+R+X9DoVV8BuhbiNQSHr
	u7MfU9Jxd5rTtrOtRawSvg==;
Sender: msweet@apple.com
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <57851B1A.8010700@gmail.com>
Date: Tue, 12 Jul 2016 19:46:42 -0400
Content-transfer-encoding: quoted-printable
Message-id: <FF2B8169-ED56-4C5C-9549-40A1CA3D92A6@apple.com>
References: <57851B1A.8010700@gmail.com>
Subject: Re: [Printing-architecture] Hosting of OpenPrinting
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Matthew Morikawa <Matthew.Morikawa@dda.kyocera.com>

Till,

> On Jul 12, 2016, at 12:30 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
> ...
> For the BZR repositories I am thinking about converting to GIT and use =
GIThub. CUPS and many other projects are already there. I would also =
handle the bug tracking there.
>=20
> What does not work on GIThub (or does it already?) is to have a =
general LAMP (Linux, Apache, MySQL, PHP/Python/Perl) server to run the =
database and also the documentation, mailing lists, announcements, ... I =
think I would drop the forums then and go back to mailing lists.

Github does not provide full support for this sort of thing, although =
IIRC SourceForge.net *does* (along with mailing lists, issue tracker, =
etc.)

> Perhaps the PWG could help me?

There would definitely be legal issues to consider.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

