Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1436271179;
	bh=3nZIzZOoEJJgDV7NLXiq8uFyWu4z2EK2t9tCqfMj9hg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=qZj9/EsF03TNylDX4hqKcSlJjFyXPEOQ01PNFa/ERmkXIlJ0i0cVg0AIb1Mhiz1vB
	5ojxJHK2zvi7KG0uwkhUDxWv+Sr9eMCiNGKCAeu7Dhi7Ht+Ur2dTsqsYCEMl/IaO/I
	G0HAujfWufcDlp2MCAVXi85m7p2cb9fsYTjX+TKs=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <559B2849.7060907@gmail.com> (Till Kamppeter's message of "Mon,
	06 Jul 2015 22:15:53 -0300")
References: <559B2849.7060907@gmail.com>
Date: Tue, 07 Jul 2015 08:10:30 -0400
Message-ID: <m3egkk5ft5.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] Upstream future of ippusbxd
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Debian-printing@lists.debian.org

>>>>> "TK" == Till Kamppeter <till.kamppeter@gmail.com> writes:


TK> I am thinking about joining [ippusbxd] into the cups-filters
TK> upstream package to not have too many tiny packages to make up the
TK> complete printing stack and cups-filters contains all
TK> manufacturer-independent software for communication with printers
TK> which is not part of CUPS itself.

Be sure, if you do, to note the licensing issues for all of those who
packages cups-filters for distributions.

And also make sure that nothing which derrives from Mike's code ever
inter-links with anythig which derrives from Daniel's, since the
licenses are incompatible.  (GPL2 vs Apache2).

(As mentor, I advised Daniel that the licence should be compatible with
cups.  He refused.)

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
