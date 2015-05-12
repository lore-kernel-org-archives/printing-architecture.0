Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1431398350; x=2295311950;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=K1r6ZcFGiSziK17DiCg7R2F/mqZEoFaI8AqsLCFdSpQ=;
	b=Bi8R12fyxjgNc1ozWHHP2XAGLbdeDpS80BPBEz51Pr3hlykE30mdR4+XTZJ+O5nB
	Q6Lb2zfoX88ydIM9ZIrio1ndinuZgRTeMpTzgIJVmwm9atPzitS7kBOTk7K0fnAA
	+SPI5KNr4ppBddJtv0xbSwaczESs/MOZFT8p213RbjpDvpuxa/VoFyG+aIFobKk6
	jHzAOhxM/oQUOJ0ciQjr4QmN01+Ivzl80tBHy9sW+AL6VFUUD2h3xo1xFMTHHkcq
	z4SN07mUFNgZqgj/B67nDaX60qHSPWjmi6kebu4FwKPsIlOx90xA/Xe7v1pg3kUx
	xOkPi4/Ro10KiCIcS3IMKQ==;
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2098\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5550D4B1.8030508@gmail.com>
Date: Mon, 11 May 2015 22:39:08 -0400
Content-transfer-encoding: quoted-printable
Message-id: <EA92BE17-AC3A-4843-86F9-60F846220A3B@apple.com>
References: <5550D4B1.8030508@gmail.com>
Subject: Re: [Printing-architecture] IPP(-over-USB) scanners - How
	to	distinguish them from printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, "Kumar,
	Sanjay" <sanjay.kumar14@hp.com>

The non-IPP USB scanners will not respond to a Get-Printer-Attributes =
request.


> On May 11, 2015, at 12:11 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> Hi,
>=20
> The HPLIP developers have found certain stand-alone scanners (not MF =
devices) from HP for which on Ubuntu a CUPS queue got auto-generated. =
Under their USB interfaces there are IPP interfaces suggesting that =
these are IPP-over-USB scanners. Is there are way to distinguish IPP =
printers from IPP scanners easily?
>=20
>   Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

