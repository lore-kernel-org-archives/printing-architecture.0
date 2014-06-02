Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1401736489;
	bh=ymb6DbNRDKdTs/6TU2mGOyDioIufbs9jwJb+Rv02z+A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=QeQzA9wJA4cEVqwI6gtaSYOJXO+JYe3UXrlZgVN7W0zRzulNCHWV+yDQnvdDS4nfb
	RJp9ANQgyJbCFxftIByNq6EekTygMK8SvnKnisQNg/tl6Y/BYPW8rWzb7aRxa8YwfF
	UJuk7lKulvWJwIwFmZoQInLHi6Dz7yhpyOgul9H8=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <3E7B815C-6CBE-4A7C-91B7-6212130BA254@apple.com> (Michael Sweet's
	message of "Mon, 02 Jun 2014 14:34:48 -0400")
References: <m3wqd2b8h7.fsf@carbon.jhcloos.org>
	<m3oayc85fp.fsf@carbon.jhcloos.org>
	<750B2F70-F6EC-42C6-93A9-C552193EFE8E@apple.com>
	<m361kj88z0.fsf@carbon.jhcloos.org>
	<3E7B815C-6CBE-4A7C-91B7-6212130BA254@apple.com>
Date: Mon, 02 Jun 2014 15:04:04 -0400
Message-ID: <m3zjhv6sle.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
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
To: Michael Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

MS> A simple search of "sgray color space" yields a page of links that all
MS> mention sGray as a version of sRGB.

I didn't see anything like that.  But I tried sgray colorspace, sgray icc
and sgray.icc.

Even with the space in color space, I'm not finding the page you mention.

I did just find a github project with an sGray.icc which is © Adobe and
uses a chad and a 1024-entry curve.  The icc seems to be part of Sun's
com/sun/pdfview java.

There is a page which says photoshop has a (hard to access) sgray icc,
but doesn't characterize it at all.

Most of the hits still reference gs.

Goog can tell I'm coming from a linux box; perhaps that colours ☺ the
results I get vs the results you get?

-JimC
--
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
