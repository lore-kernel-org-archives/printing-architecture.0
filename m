Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=eagle; t=1335484094;
	bh=lr+YsiKst2ayUYriLx9v7slv65vADRmXGRZY3Dy4v2A=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	MIME-Version:Content-Type;
	b=BEonNbSEwYh573dDlhHlSnk0zraIrYLuv7OriYKZizbArQ925oxQmTkPhypiytrBJ
	NQtRRiKIeDjNNRaf9yxewAMGlsEavTLCV62timrK10weyabWxvNP6TwCvyax+5oWDP
	r40EoHxuBqmptrVl8pRFUdAYnapcD7rblzDhHZgk=
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <D221590B-CE27-44C4-AC6B-D0F62C066A4E@apple.com> (Michael Sweet's
	message of "Thu, 26 Apr 2012 08:09:51 -0700")
References: <CA++JLR+st2adL_vf0+rC=OUBFXNqAbTSfrvvoZBtZ_hA_GA56Q@mail.gmail.com>
	<CA++JLRKGqqLQi_JjkA+ZghwWeN1=jdsivYCPCMB3_J0CLxpfMQ@mail.gmail.com>
	<4F97B82B.7040306@gmail.com>
	<CAN40gStH4vSYTEm4syWMUO1j3itm7V7iTE23e+1mFEAWthbjVg@mail.gmail.com>
	<1335363815.2535.0.camel@rubik>
	<alpine.LNX.2.00.1204260704580.8774@siras.rasena>
	<CAD2FfiEp0POX1B69KbZFy7FHHAVid7s6eTvUGE3xfzK0WX9cRQ@mail.gmail.com>
	<D221590B-CE27-44C4-AC6B-D0F62C066A4E@apple.com>
Date: Thu, 26 Apr 2012 19:36:12 -0400
Message-ID: <m3lili6p6j.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] colord profile per-user in CUPS server
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
Cc: Tim Waugh <cyberelk11@gmail.com>

>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:

MS> I don't know if the current GTK+/GNOME print dialog exposes instances,

It notices them, but it doesn't really support them.

As an example, I have instances like:

,----< excerpt from ~/.cups/lpoptions >
| Dest mc/booklet number-up=2 Duplex=DuplexTumble
| Dest mc/short Duplex=DuplexTumble
| Dest mc/long Duplex=DuplexNoTumble
| Dest mc Duplex=None
| Default mc Duplex=DuplexNoTumble
`----

GTK apps only show a single mc queue, but conflate it into 
number-up=2 DuplexNoTumble, which isn't even a defined instance.

Qt4, OTOH, seems to get it right, showing each instance as a separate
queue, with correct settings for each.

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
