Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=lAcvxRsZ6l216DRxu4Qy9tktjmxszKb1GcNMQPafZjs=;
	b=oWBK1salU9/g/lUMEJeAsHlHD6Ywem775+ECt/gQgW3ivixk6Aw2xwEOUWOIlu+vHr
	0UJPPI/CCVg0mL8aNGlQLDji7hzH31803cCZiQ4k0u/uRmSMuMP/4NWJ6qVCj5BH1Bda
	0xhfjIFRrBqd5mIhTLPhUXaMhtBUYrQdNqI3PvwGJWHP8v/dP9D8+wveTh5r3MOBpoxT
	5OmB8e6xQGTXbD+DwBH5W33/R1cZ0wjFW0DHKIGn/tps4anxJpVkXzS3l1+aJqHXoaKp
	phzROFOWyNEnQ8v/K/kIapBj0OrYelny2Nl8LhXZPtzYS1XO58oxjUOKtklcmNLf2G/2
	TjEg==
Message-ID: <51B754BC.3040302@gmail.com>
Date: Tue, 11 Jun 2013 18:47:56 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS 1.7.x packaged for Ubuntu!
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

I have packaged CUPS 1.7b1, a first beta version of the 1.7.x series of
CUPS and uploaded it to my Ubuntu PPA [1] for both Raring and Saucy,
both based on the current Debian 1.6.2-8 package of CUPS (source
packages of Raring and Saucy version are identical).

There are only a few new features, mainly API enhancements [2]:

     - Improved support for paid, PIN, and release printing
     - Expanded support for IPP Everywhere
     - Automatic support for data compression
     - Improved CUPS APIs

Note that most of the upstream web site is down currently, so I do not
have much more info about the new release.

Please try it out and report your experiences here.

   Till


[1]https://launchpad.net/~till-kamppeter/+archive/ppa
[2]http://www.cups.org/index.php
