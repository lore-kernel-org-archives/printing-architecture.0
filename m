Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1440442081; x=2304355681;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=azmAHN+YEinXkxaR0SOITEwW/Xd9Llc4sx81MY7F2R8=;
	b=oPi1BIvjW4fYOvCURVTg7gfTexfDSmkFaKvDHGXKuo5n7uURVcYevRqBZB8QXqnJ
	8r/KMX5vQIh/hLr9UXBXNB4+lEF3MGg7NznwwUiFpp/iVk+lITMz33tzLBFtx3ZX
	/BSG0DmiAaKoJR5kB05fwWnQ55KWIxeqYVQiK3ygQzY9mQEhKyn/8lJfjpL96NU6
	LZhpw6pXSVCLcubFCjj1ojZhglyvZ7JolhuEctzZ3Kh96b7ERG+hkJrP3WZye7Wy
	cvq+vilnJ4ZrUNPXHTVKn+A+mjkoxu5XZKmUb+VHZl2xk7Fe/wEUYjRzB4zbzrMD
	munbLHJyXc0x7lt0raLySQ==;
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2104\))
Content-type: text/plain; charset=us-ascii
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+3RNfiGkWAYNjOSboBPmeRk=6eaZ=Hv=N+g4PGp4qXLqF_FwQ@mail.gmail.com>
Date: Mon, 24 Aug 2015 14:47:58 -0400
Content-transfer-encoding: quoted-printable
Message-id: <246B4DE0-8F4A-426F-B8F7-BA4C8EC1D1B1@apple.com>
References: <CA+3RNfipMp+TTLyfTGiSUGS1UAsFUPw8dOJbA7yOKTGbpn7YgQ@mail.gmail.com>
	<CAN40gSsYjD_jZGDvY+ZjV5gwcE1FqSxRgmkzaghVnbw_ydczKg@mail.gmail.com>
	<FB5CC2D9-0026-4C01-B4E3-1AEEF3474674@apple.com>
	<55DB5430.7000906@gmail.com>
	<CA+3RNfiGkWAYNjOSboBPmeRk=6eaZ=Hv=N+g4PGp4qXLqF_FwQ@mail.gmail.com>
Subject: Re: [Printing-architecture] PDF workflow, cupsaddsmb,
 and Windows clients
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>
Cc: Smith Kennedy <smith.kennedy@hp.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Alex,

> On Aug 24, 2015, at 2:11 PM, Alex Korobkin <korobkin+op@gmail.com> =
wrote:
> ...
> I don't see how we could integrate that with printer options, though. =
Let's say I want a user to be able to select a stapling option. One =
cannot inject PJL commands into an XPS job I suppose?

That's why you put the options in a job ticket that is transmitted in =
parallel with the document data...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

