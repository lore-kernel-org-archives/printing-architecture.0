Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=CVEHtvNSe5dFTeJFopjZbOvbOkCUNQFB8KFDRL2ygtE=;
	b=pwY3lAuGXRlMk2f8jhzawueBEy0eQ3gtje1bRT7H/N7Uuiy2Y6dQmqH9Jo3Qm/b6jv
	dgWU5bht7ayWWBHi1LWooXTWG4+vACae7XKccwVRcZBjfHavty25mjd4Xj8BDupVfitb
	I0s8z59lKONswxHx31jmnC5Cbj2DMRYDiQUyXJejICb3mXsR/b7GvWoNnrBAeWmd/C1Y
	kuSQO1VA8jrtxAC1KEApaVMc1fOhi9g72cWhd6E2qJ95B9dqTZ0WD+eps962uNgy/3/9
	nbQwQTmwLmyOaTRS9qug0xZQOnUPd2UgDTdC5Sn5/UmgDK1ePkqPAQzK1S+3r4aslQNA
	+cQA==
Message-ID: <51B997DA.6070904@gmail.com>
Date: Thu, 13 Jun 2013 11:58:50 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <519537F0.8020405@gmail.com> <51962BA7.4030304@redhat.com>
	<2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
In-Reply-To: <2414543F-1C84-41CA-A4C5-4FC127532B73@apple.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

On 05/17/2013 04:23 PM, Michael Sweet wrote:
> Also, CUPS 1.6 and later have CUPS APIs for efficiently browsing for and getting printer capabilities.  I don't know what your requirements are for CUPS versions, but that would save a lot of code right there...

I have looked into the new APIs of CUPS 1.7.x and for example for
getting the possible/available paper sizes of a printer and IPP request
takes place. This still needs waking up the printer.

   Till


