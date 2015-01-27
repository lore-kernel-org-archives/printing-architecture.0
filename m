Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1422363198; x=2286276798;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=H9GXiDl9JWV4dx7qfmqPEHfsU9t44/2Tli6HH3ry9NQ=;
	b=ze5Xu/ppF4awhCaDXcIKdXUDsfrjZl5ebHJThcnE1/4PXvIl5BWFbc0RyIw3RpLc
	HjX3QYezSefjhMIwje0QtJFb4A3rAeqlBVPuYp1tfa3ErUZw2wBRlwAFTDFNvffW
	pwBDmGk2hT9ZPi6vRbEtvRMuDiwzK2HUw+2pGA5Dv0txYEMUJXf6yjIPOD2z1Ury
	lkyGAqB+dkGRWf4iVfoXEvJw2j7TO0losa74krJSjVYUiANLedBdt9+4Osp0DQqd
	hW0FZYpLszJ6Vg/kF066GHAN3FqSGvM1+Cz9KhqVQic5q73G/ibHXYgcoARUSWcd
	m4MiFBSWMUCjbIOR9eqWAg==;
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2070.4\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAN40gStNSnXwgw7r-cdXHGiLk10LPQj2Uq1qYh+CmRjZNuO-bg@mail.gmail.com>
Date: Tue, 27 Jan 2015 07:53:15 -0500
Content-transfer-encoding: quoted-printable
Message-id: <BFBB8879-FEAD-4797-8ADC-7EEF6A810E19@apple.com>
References: <54C65044.7030501@gmail.com>
	<CAN40gStNSnXwgw7r-cdXHGiLk10LPQj2Uq1qYh+CmRjZNuO-bg@mail.gmail.com>
Subject: Re: [Printing-architecture] Projects for GSoC 2015:
 Implementing	PWG standards
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <Printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Ira,

> On Jan 26, 2015, at 8:59 PM, Ira McDonald <blueroofmusic@gmail.com> =
wrote:
> ...
> <ira> The IPP standard for uploading firmware will only be in the =
work-in-progress
> IPP System Service (milestone of Q3/Q4 2015 for Prototype draft).   =
Actually doing
> the reboot to the new firmware is currently just an idea of mine for a =
new operation
> in IPP System Service.

There are a lot of security issues to address with firmware updates, and =
we'll need widespread adoption to make this useful.  On the consumer end =
of printers, most now offer updates via their control panels and/or web =
interfaces, and on the high end you need a service engineer to apply the =
update.

In any case, I don't see this as a GSoC 2015 project (2016?)

> Not sure at all about assigning paper sizes/types to trays - certainly =
IPP System=20
> Service will only be able to READ (but not WRITE) summaries of Printer =
MIB=20
> subunits (e.g. InputTray) - might be able to be done with IPP JPS3 by =
setting the=20
> "printer-input-tray", "media-source", and/or =
"media-source-properties".
> - Mike?

Yes, those are potentially READ-WRITE, assuming that the printer makes =
them so (most  don't).

> <...snip...>
> =20
> Before creating the descriptions of the project ideas and posting them =
I want to ask for some help:
>=20
> 1. Which PWG standards have to be implemented for each of the ideas =
above?
>=20
> 2. Would these be feasable by one student in one GSoC or are there =
suggestions to split the projects to get them doe by more than one =
student?
>=20
> 3. Are there further ideas which we could post for the GSoC?
>=20
> I appreciate any contribution.
>=20
>    Till
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

