Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore14; t=1403641156;
	bh=6y9uABd7E/I/7nqMLMJ+aZkf/LII+HbuEor+sQy/yGU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=XvNDKqm5f8Mrd/BdyslydlN3jrbeHawlGEZH9wEKETagfTlxf1eUr9nknPZemE/mj
	PUBLvxPc4XYvqjtmMBWqP+j55MfRdqE5ud4D8rZzGEwv1D4XnDp/JaEmMZLS+kpgQ5
	fz00Jf3MyiKoGBbGGUcNyADa18WVziBZ0agbhwfA=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <53A9D7F0.1010909@gmail.com> (Till Kamppeter's message of "Tue,
	24 Jun 2014 21:56:32 +0200")
References: <m38up3ymxw.fsf@carbon.jhcloos.org> <53A9C50D.4000306@gmail.com>
	<B8CEB731-2C01-4D1D-9B72-EC02A9CDFE44@apple.com>
	<CAN40gSsvBphwY22EKrx15k3k6B4zkLapy3+8SLVhFTNr6zzO=w@mail.gmail.com>
	<53A9D7F0.1010909@gmail.com>
Date: Tue, 24 Jun 2014 15:59:19 -0400
Message-ID: <m31tuecc3z.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] ippusbd license
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

>>>>> "TK" == Till Kamppeter <till.kamppeter@gmail.com> writes:

TK> What are the advantages of GPL2 against GPL3?

That really should be 2+ vs 3+, just to be clear.

(gpl2-only cannot link against gpl3, gpl3+, lgpl3+, agpl3 or agpl3+ code
unless the latter has a linking-permitted clause.)

2+ vs 3+ is mostly about some entities wanting to avoid 3 at all costs.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
