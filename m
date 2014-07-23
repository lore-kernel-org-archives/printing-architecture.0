Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=u6+q7rw5lVDpGaqAfCr6gqPWyXYGi1b388Lx43F/nOo=;
	b=nMCbMcEOV+GTY5MaHVKExEwgEFuCwsso6nGLiPp6yKnGdjlSa1vIjvOFiZywBIVfRr
	znWDknU7owflinGefUTqOw572QvKk17c5GAxwkjUovpdSLbWhNN92VIl6Hs/qIHmjrTy
	nIEOSlHbFbhxv2rMUzT3T6PCPOKtqRLpVGbFCo6hEKNMCTrQRFXCdOtyY5m40p6Wp38M
	JFVLxnYo7z/3BYyOy3j9t6WKR41fm7HR/51YlrLvkLPBZmvCYlD+m7ydRgTnRyxwmRar
	yaexeC2JaUgoPui5JBsNgfIYC8T3PHBhYNSVtpeB3iSRGudwAwQp6/92GqWGzL4Uti+A
	HNyA==
Message-ID: <53CFCE94.8060605@gmail.com>
Date: Wed, 23 Jul 2014 17:02:44 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] SLP (Service Location Protocol)
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

Hi,

as talked about in the last OP conference call I want to make use of SLP
to discover printers in the network and especially to discover their
capabilities. Unfortunately documentation about using SLP, especially
with Ubuntu Linux, on the internet is sparse.

I want to let cups-browsed do this automatically, so that I can set up
driver-less print queues for printers with known languages (PDF,
PostScript, PCL, ...) but without polling the printer directly to not
wake up the printer from power save mode.

What I would like to know is:

1. How do I scan the network for SLP services without knowing service
names and types and without knowing which hosts in the network provide
services or are SLP directory agents?

2. In a typical SoHo network, are there SLP services or directory
agents? Are the usual SoHo routers directory agents? Or do I need to
to run an SLP server daemon on the local machine to be able to make use
of SLP?

3. How can I test my environment with command line tools?

I am very grateful for any help towards this.

   Till
