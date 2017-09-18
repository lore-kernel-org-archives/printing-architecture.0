Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1505700499;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FvYZP+rBcdKWZt3TgEznRwTOycr0DVS3qqF54C8S9Go=;
	b=idUMYFtLHCyVEiWZCB/wnwiiQu33F9LU9ywCFy+RWY0E8u8Hw+InB1eFmO81SO4g
	lvcjSTcxuOAR+EbFizo9UGaTxO9hBzZp2PGyXpNQVWgqPEJHnGRfMAmV4jBzX6sL
	wVFMg3jI9eo8/8FUPVKGwaMt91CPpMecH0SxfCgGS8xpDxrp4Ovce5AR6ymptN3q
	0+qP8nQ9Fhf9mVAKSK+HI0AqjRcwxzu5euBOAcByYmeaNuSGSODff9zHVTL0B37y
	9e3blMw0VypoycKljGe3hbhHGSCdWylVBPaFnl/+aXv3eXipmKqWlhBXv79ID5KT
	MHaoiYo8A1f1gRQHhaGaVA==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <20170917170717.umcyh6ss7lzvevtz@var.youpi.perso.aquilenet.fr>
Date: Sun, 17 Sep 2017 22:08:10 -0400
Message-id: <BC320CE1-5213-4003-B275-E05C594D79B3@apple.com>
References: <20170917170717.umcyh6ss7lzvevtz@var.youpi.perso.aquilenet.fr>
Subject: Re: [Printing-architecture] [PATCH] braille: rename Resize option
 to fitplot
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

You should be using the IPP print-scaling option instead - fitplot has been deprecated for many years...


> On Sep 17, 2017, at 1:07 PM, Samuel Thibault <samuel.thibault@ens-lyon.org> wrote:
> 
> Re,
> 
> This renames the internal cups name of the Resize option to the standard
> well-known and well-documented fitplot option.
> 
> Samuel
> <fitplot.txt>_______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

