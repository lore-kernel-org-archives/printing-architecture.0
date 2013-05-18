Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=eagle; t=1368920831;
	bh=BgWasZItz2VOJtqRhrOpdNcBDZiBYQu0pCysfMiWMm4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	MIME-Version:Content-Type;
	b=b1frWaF2/2jqgesuWtSyZhZkD6I/wfKE1cgli7PeTsU1jXvbIz1g0vNybT+NisQYp
	HlDnVttcQ1TWtzEJz8kWTtc8IntfoKbMh/tSo3dF4MA+Bzk1icEXGctADAwCnBhHGe
	vA3iQc3AxDJwY+QdCWV3W4IKj8A7serve2yG4PA4=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <2A8076E6-4CB7-4F70-A92B-AF1F9F0F3FE0@apple.com> (Michael Sweet's
	message of "Fri, 17 May 2013 07:17:26 -0700")
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<5195DA7B.2040501@gmail.com>
	<2A8076E6-4CB7-4F70-A92B-AF1F9F0F3FE0@apple.com>
Date: Sat, 18 May 2013 19:45:05 -0400
Message-ID: <m361yfsvhh.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
	(Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Marek Kasik <mkasik@redhat.com>, Till Kamppeter <till.kamppeter@gmail.com>

>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

MS> FOR EVERY COMPUTER.  Not a big deal at home.
MS> A very big deal in a company or school.

Then those should use a central cups box (or perhaps a pair) which talk
to the printers, and to which the cups clients on every other box talk.

Forcing the use of dbus to print is wrong.

(*Forcing* dbus is wrong for just about everything. ;^)

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
