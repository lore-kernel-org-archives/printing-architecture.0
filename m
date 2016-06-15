Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1465997223; x=2329910823;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vwfGAAjdNKN/NalvGtomBx+z5Yqg6GNfh1RgiyUkd2s=;
	b=MgLGbLONJz1+ytAVqvHak7bbKt6QGv0D57EqbpovGcthaVr90HLG9oFZ88w81sT/
	Xt5Vf6ENGh4p4wF4ExkOsnLXJQ3fSszNlJh9y8Di2+f5PGy/qp3dW5Ma17vv3mE5
	zv6Pr+BO6KmwTAkyg0bxP0D+mqRd2PmfLymSJoVRTVtt8v6VIVAiPSoaTuXPLZxC
	V6pCaZ8Ol8OGt4S0+76V8c1tGOmGc5Gf29f/f1AVSGaN6H0lsG/dT2ZhPTjCL4wF
	Mx+iAZa4KN+dZKXqqBd91bi0G3xWWqXeHx/5PPSnviaDCnQd+ENeXr1AglL4Kgrp
	ql23pk2qxlGexp0d0os64Q==;
Sender: msweet@apple.com
MIME-version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <20160615090916.GA3891@c720-r292778-amd64>
Date: Wed, 15 Jun 2016 09:27:01 -0400
Content-transfer-encoding: quoted-printable
Message-id: <DF30B1C7-FEFC-4B29-82FF-C2432B0010D8@apple.com>
References: <57608ADC.9080500@canonical.com>
	<C0209F64-17A0-49A5-911B-AC84BAFEAABB@apple.com>
	<20160615090916.GA3891@c720-r292778-amd64>
Subject: Re: [Printing-architecture] [cups] CUPS 2.2.x drops interface
 scripts - How to create filtered queues without PPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "The CUPS user discussion list." <cups@cups.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Matthias,

> On Jun 15, 2016, at 5:09 AM, Matthias Apitz <guru@unixarea.de> wrote:
> ...
> Michael,
>=20
> While I understand to upload my own or vendor provided PPD file =
through
> the web interface, which ends up in a directory =
/usr/local/etc/cups/ppd
> on my FreeBSD system, I do not fully understand how I could upload
> additional code to /usr/local/etc/cups/interfaces (perhaps, because I
> never did so). Could you please shed some light on this? Thanks

When adding or modifying a printer, cupsd accepts an attached file =
(typically a PPD file) to use for the printer. Previously cupsd examined =
the file - PPD files were copied to the ServerRoot/ppd directory while =
all other files were treated as interface scripts and copied to the =
ServerRoot/interfaces directory and given execute permissions.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

