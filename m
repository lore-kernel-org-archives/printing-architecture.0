Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=L0gGOJPWFMZuSaKH6NZXt37PNyVLrgOREvUT2YFra7w=;
	b=SCu0Wsj65XH/auO0vSddKf0BerZ07iO1hYCbYC3jttonv4oCTrY+bP4I/x9vl7XHeH
	PZX3xinOT7zbnFwi4UrLE74Yl4ZODo23A5iDOUIWffsMCirXAgPAVT3Wa3l/HJzLYkye
	yn9q0/xKkPg/kP/v65YAfIgCOXNRvwzca0cwycG54C/kTwLnQldIgzyQKK7CloVsaFS8
	y2CId6ehi54a04YWKYdoxLqyoWmnzhLZ44k50vtDahaPa5DZG1qdHcR6DgNXQepSR9tP
	knmy0CT2QEvcFGomLO/e7iUDPC380mPG2zk/ksKNqPHD1KElGKCGbLm57z8dhWLqwKnK
	ugFg==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <dfb0f8d8-f96f-1799-3e41-df7de1b4b77d@gmail.com>
Date: Fri, 18 Nov 2016 21:49:00 -0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Do IPP requests really wake up printers?
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

while working on driverless printing with cups-browsed (IPP Everywhere 
and generally IPP printers with known PDLs) I have done several tests on 
real printers and found out on one laser printer (HP Color LaserJet 
CM3530 MFP) and an inkjet printer (HP OfficeJet Pro 8500 A910) that if 
CUPS or cups-browsed queries the printer's capabilities via a 
get-printer-attributes IPP request, the printers did no get woken up, 
they both stayed in power-save mode.

Is this the case for all printers? Can I simply do this IPP request and 
printers of all manufacturers stay in power-save mode?

    Till
