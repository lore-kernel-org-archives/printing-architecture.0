Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed; d=gmail.com; s=beta;
	h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
	b=WehMN+7jcORT2+NfgSEJgYeb7GSBhJa/KvE7qNnXM6Kc2Sgwkhq3JWS8OfZog4WS/Anw/nw14Psqd59MYhUE79Xq2Rk68PTVPOCEHa5dOQHKjLnxxh4dMOJIQb1HER1BtlCoYOwBQ544DijlXo3kpu6RMgW+YWoOziiv72mgbNY=
Message-ID: <e395be80707111541u3beb6037pa30682c6018f1991@mail.gmail.com>
Date: Wed, 11 Jul 2007 17:41:31 -0500
From: "Ira McDonald" <blueroofmusic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Subject: [Printing-architecture] Self-certification of Printers and Print
	Drivers for POSIX/Linux
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org, Ira McDonald <blueroofmusic@gmail.com>

Hi,

The purpose of this note is to kick off discussion on this topic and to
collect issues and details from all interested parties.

Background - there was a "lively" discussion during the Open Printing
sessions of the recent Linux Foundation Summit about certification
of printers and print drivers for Linux.

More than ten hardware and software vendors agreed unanimously
that the "traditional" model followed by Microsoft and Apple (external
formal testing and certification with a per-printer fee) is definitely NOT
acceptable in the much smaller and more fragmented Linux market.

I took the action item from today's Open Printing Architecture WG
teleconference to spearhead this topic and to be the principal editor
as we move forward to specifications.

The approach we discussed was to gather comments on the
issues and details, write up a proposed approach, write design
requirements and specifications for test suites and test tools,
develop the actual tools, and verify the tools by independent
testing by several printer vendors and/or ISVs.

One of the tools should be suitable for use by an end-user (NOT
a "just recompile everything" geek - but a real typical end-user) to
verify that a print driver (for example) is correctly installed and that
all of the dependencies in the complex print system software chain
are indeed satisfied.

Cheers,
- Ira

-- 
Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Blue Roof Music / High North Inc
PO Box 221  Grand Marais, MI  49839
phone: +1-906-494-2434
email: blueroofmusic@gmail.com

