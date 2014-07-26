Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1406412009;
	bh=ORWXy0bBOlQK3pF3mBXPJefCDvbCDg+WnIg2Qa6XPDo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=LcGJ/8CPOXd6CHikiVjtXNDeJ8tNzFHSqOB/Vl18KOKwwQlrORNpJn6TkNY2AQ8tR
	bpg2XsDkm2P/EJJ4j9xNDzrApj2H5xz0CLqlAz3/gfNxoHgCVppZ+3BTEPT89OX6nw
	NYQKRvuTOE1AL6nF1Ry4nWU01POIs9yVdCqDuW8c=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <53D3D042.7030104@gmail.com> (Till Kamppeter's message of "Sat,
	26 Jul 2014 17:58:58 +0200")
References: <53CFCE94.8060605@gmail.com>
	<F1E13EA9-5DEE-4A3B-9E49-1BBD875C355E@apple.com>
	<CAN40gStkAXa9Yi8n_csS5UMprEK28j7bH3L=PexbwTQi+ECDuA@mail.gmail.com>
	<E7CD87FB-A00C-4674-A2B6-D561388F3502@apple.com>
	<CAN40gSs6EgVk00nwS=XxLZ2xUVuh=R5ghks=vVDSLwt=MJG1CA@mail.gmail.com>
	<53D3D042.7030104@gmail.com>
Date: Sat, 26 Jul 2014 17:45:50 -0400
Message-ID: <m3siln3ib5.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] SLP (Service Location Protocol)
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Pete Zannucci <pzaan@us.ibm.com>

>>>>> "TK" == Till Kamppeter <till.kamppeter@gmail.com> writes:

TK> I have looked into how to get SLP working under Ubuntu and when
TK> installing the SLP daemon (package "slpd") I ran into the following bug:

FWIW, the gentoo packaging of 1.2.1 works fine.

The 2.0.0 ebuild is labeled "Untested version bump. Builds." and
requires manual intervention to install.  It also works for me.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
