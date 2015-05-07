Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=eZMmbrSWTSboTnNmF/Mtz4P5KXLKVoI31vOngF2DJ+o=;
	b=YqAZJ+l5Fy4wn6dypcHQt7zirCwjqgOHwfQyzV3JqKZGxmCCrGh7g6eoS6bgR9AZ/k
	aarYrLM79xXu2dgTzLuxi4GzYONSNiLmub9OqYj03zsWXL0YG9Txi5Ef1cq0Sxa0533W
	DcZDVekZV7eFrOUYNammIcoLxl3CYCwUHHeX6VA/jwsw059dtQ8yrDFMLl8+YhWxxP/Q
	M6snKarJ+rmrnlEyxDNt078wb2IbsW3OH0cZ7kGNeg2m88arUMDOx5R8pCYR2L3iEMBA
	Pwfm3k7dsnL+IyecTYSGwvpzuA4Fn3rIS4qdOLCv5INpOeJZTaLC7bAEK3CsRaJecWj3
	j2Sg==
Message-ID: <554BEDA8.9080003@gmail.com>
Date: Thu, 07 May 2015 19:56:40 -0300
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS queues should emulate IPP Everywhere
	printers - First tests
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Printing-architecture@lists.linux-foundation.org

Hi,

on a Ubuntu Vivid (15.04) system I have done the PWG self certification 
tests according to the manual, applied to the local CUPS queues. I get a 
lot of FAILs.

I simply shared all local queues via

cupsctl --share-printers

Then I determined the service names of the local queues by running

sudo /usr/lib/cups/backend/dnssd

giving the service names in its debug output.

Now I have run The Bonjour and IPP tests with following observations:

1. Many FAILs. Where should I report them? CUPS bugs? CUPS mailing list? 
This mailing list?

2. The IPP test prints a JPG file. Isit required for an IPP Everywhere 
printer to print JPG? Is not PWG Raster the only required format?

3. The JPG file printed by the IPP test consumes a lot of ink. Can one 
not use a text page converted to JPG for this test?

Already having the mentioned problems in the first two tests I skipped 
the document test.

    Till

P. S.: CUPS 2.0.2 has no everywhere directory, does this only appear in 
2.1.x?
