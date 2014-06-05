Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1401960672;
	bh=rAa2DIg8X1UDUJQjrjw0lslcwdn1dPuGTLfH/DZbcXU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=OyFkS5e2azPg2XG+sA+tiUP7e85b7aEoXMZ/caAt2uEqb5InDp9Q3+e5031bSjRpN
	k54hwpYG2+BBsaguAyHxQZSwz8ijlrFpUhVgeqo+O8/aUw1PHmlZVsZJWJlaYNWw8Z
	ErzI6Ge9MsX2SZP3zIz1c5oQRSlu4VMY4yULKZHg=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <538DB6C0.60507@gmx.de> (Kai-Uwe Behrmann's message of "Tue, 03
	Jun 2014 13:51:28 +0200")
References: <m3wqd2b8h7.fsf@carbon.jhcloos.org>
	<m3oayc85fp.fsf@carbon.jhcloos.org>
	<750B2F70-F6EC-42C6-93A9-C552193EFE8E@apple.com>
	<m361kj88z0.fsf@carbon.jhcloos.org>
	<3E7B815C-6CBE-4A7C-91B7-6212130BA254@apple.com>
	<m3zjhv6sle.fsf@carbon.jhcloos.org>
	<m38upe4ya7.fsf@carbon.jhcloos.org> <538DB6C0.60507@gmx.de>
Date: Thu, 05 Jun 2014 05:23:59 -0400
Message-ID: <m3k38v1zg7.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] pwgtoraster vs calibrated spaces
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Kai-Uwe Behrmann <ku.b-list@gmx.de>
Cc: printing-architecture@lists.linux-foundation.org

>>>>> "KB" == Kai-Uwe Behrmann <ku.b-list@gmx.de> writes:

KB> Data Color Space: Unknown 'sGra' = 73477261

So Data Color Space is a 32bit int, then?

Fixed.

As I wrote, I based this on the xml conversion of the sRGB shipped with
Argyll.

Are the viewingConditionsType and measurementType sections of value?

That seems to be where some of the issues are.

-JimC
--
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
