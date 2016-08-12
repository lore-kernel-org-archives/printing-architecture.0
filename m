Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1471022057;
	bh=En+wmiC/93EmBWCH7LpnEmYnntJOUELdd6vSn9e8pn8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=bfcAkRbP8NR2NiN4eky6ZWAvKsThff7AK2W9lB3/tN7KpxjnRuLmoRRhtLv4GErky
	d+zWKBh7Lc9lmh3DIKnfjQv9Y9osZRm7fTXd08ZTe7briSGYAx8WcsihOuMjdDYt4s
	/M/z7zpx38+DxSvKR5ia6iwmFc3Ehp/D54qDUtlw=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <ba613dc1-0c9e-8859-d77c-a8bcd0f173f8@gmail.com> (Till
	Kamppeter's message of "Fri, 12 Aug 2016 10:47:22 -0300")
References: <F6B3A5F7-EFB6-4A0B-9927-C9FEB97D05EA@gmail.com>
	<ba613dc1-0c9e-8859-d77c-a8bcd0f173f8@gmail.com>
Date: Fri, 12 Aug 2016 13:13:42 -0400
Message-ID: <m3vaz5oqpl.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] better support for 203dpi label printer
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
Cc: printing-architecture@lists.linux-foundation.org

Adding 0 .setfilladjust to a postscript job should be done just like how
the ps2ps filter adds snippets from ppd files.

For rendering pdf w/ gs, I'd expect:

    -c '0 .setfilladjust'

is required.  Yes?

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6


