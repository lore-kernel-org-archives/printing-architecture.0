Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=MBFvwohClljgLnTUfNohI1bQaFqEjk48aSOVxvG9M4Q=;
	b=UtjzMIU0qvlpxRwqzkGKd2dnRaSRfkbkXbrHBWJARSf7gJSGRPuMWMaIX8OFmALQcj
	aKiwXC5E8i5/3Mv4OtfHAYaurNhaGfdwtSxLJ59xl0/KyvAAzir5G9+qZuDrPH47H0Mh
	e0rdzaNMsK2roN4K+3/WZxFbxAngQlMt5HK86NrS2PrBp5OCfhcS/WxjdVwigr+ILKCG
	P6Ro+m17slSTBoB5OdCkG0iWViclgOhH40qEWPFJRtx7bvC9g5CeiEMYN3bCoJmdoGAO
	VWzzJ3PpyxoDow16M/GmOseV+SKmI3NbztkSbg0pjEQiPAwPkW3kMJk/6iGGL3ym7axR
	WD0g==
Message-ID: <52A0C52B.5060707@gmail.com>
Date: Thu, 05 Dec 2013 19:25:47 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cupsd crashes when Avahi is used
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

at Ubuntu many users (> 2000) hit the following bug:

https://bugs.launchpad.net/ubuntu/+source/avahi/+bug/1131854

It is an assert failure in a function of the Avahi library which makes
the CUPS daemon abort, naturally only if CUPS uses Avahi which is the
case in Ubuntu.

The Ubuntu patches on CUPS do not change anything in the Avahi support,
so the problem most probably also occurs with other distributions.

Anyone has already observed this problem? Can it be a CUPS bug? If it is
an Avahi bug, is it already known?

   Till
