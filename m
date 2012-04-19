Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=eagle; t=1334868074;
	bh=CTG+Q1FRL5uhz3gqm5cEyq/FTxlaiCvRKlK2CykP0m8=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
	Content-Transfer-Encoding;
	b=vRSOiXJAcJpI6PxayoJdhqz/tl1nI40wfoeEtuJ6zlKMegOxH0CIuKaEMHqDpkcgA
	7wapdH493I85htpWJ1Rxy9zH/2lmMPHmJMse7YkhIfN6qPUQdGmy/nPlryX7xh3FRF
	hcPa6t5Wp+Da8CNJASNaTAhtnZaMs9MB+9NlRxdg=
From: James Cloos <cloos@jhcloos.com>
Date: Thu, 19 Apr 2012 16:40:21 -0400
Message-ID: <m3wr5bjvzm.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] When using gs to convert or rasterize pdf
	...
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

A recent gs bug report brought attention to the fact that gs cannot
re-create an xref table in a pdf which has object streams.

As such, when using gs for a pdf the filters should add -dNoVerifyXref
to the gs command line.

(There probably are a few more such flags which would help ensure the
queues Just Work™.)

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6
